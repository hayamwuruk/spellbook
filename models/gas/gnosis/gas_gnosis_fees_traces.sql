{{ config(
tags=['prod_exclude'],
    schema = 'gas_gnosis',
    alias = 'fees_traces',
    partition_by = ['block_date'],
    materialized = 'incremental',
    file_format = 'delta',
    incremental_strategy='merge',
    incremental_predicates = [incremental_predicate('DBT_INTERNAL_DEST.block_time')],
    unique_key = ['tx_hash', 'trace'],
    )
}}

/*
    note: this spell has not been migrated to dunesql, therefore is only a view on spark
        please migrate to dunesql to ensure up-to-date logic & data
*/

WITH traces AS (
     SELECT traces.block_time
     , traces.block_number
     , traces.tx_hash
     , MAX(traces.from) AS trace_from
     , MAX(traces.to) AS trace_to
     , traces.trace
     , MAX(traces.input) AS trace_input
     , substring(MAX(traces.input),1,10) AS trace_method
     , SUM(traces.gas_used_original) AS gas_used_original
     , SUM(traces.gas_used_trace) AS gas_used_trace
     , MAX(traces.trace_type) AS trace_type
     , MAX(traces.trace_value) AS trace_value
     , MAX(traces.trace_success) AS trace_success
     , MAX(traces.tx_success) AS tx_success
     FROM (
          SELECT from
          , to
          , tx_hash
          , trace_address AS trace
          , gas_used AS gas_used_original
          , gas_used AS gas_used_trace
          , block_time
          , block_number
          , input
          , type AS trace_type
          , value AS trace_value
          , success AS trace_success
          , tx_success
          FROM {{ source('gnosis','traces') }}
          {% if is_incremental() %}
          WHERE {{ incremental_predicate('block_time') }}
          {% endif %}

          UNION ALL

          SELECT CAST(NULL AS varchar(1)) AS from
          , CAST(NULL AS varchar(1)) AS to
          , tx_hash
          , slice(trace_address, 1, cardinality(trace_address) - 1) AS trace
          , CAST(NULL AS double) AS gas_used_original
          , -gas_used AS gas_used_trace
          , block_time
          , block_number
          , CAST(NULL AS varchar(1)) AS input
          , CAST(NULL AS varchar(1)) AS trace_type
          , CAST(NULL AS varchar(1)) AS trace_value
          , CAST(NULL AS boolean) AS trace_success
          , CAST(NULL AS boolean) AS tx_success
          FROM {{ source('gnosis','traces') }}
          WHERE cardinality(trace_address) > 0
          {% if is_incremental() %}
          AND {{ incremental_predicate('block_time') }}
          {% endif %}
          ) traces
     GROUP BY traces.tx_hash, traces.trace, traces.block_time, traces.block_number
     )

SELECT 'gnosis' AS blockchain
, traces.block_time
, date_trunc('day', traces.block_time) AS block_date
, traces.block_number
, traces.tx_hash
, traces.trace_from
, traces.trace_to
, txs.from AS tx_from
, txs.to AS tx_to
, traces.trace
, traces.trace_method
, substring(txs.data,1,10) AS tx_method
, traces.trace_input
, traces.gas_used_original
, traces.gas_used_trace
, txs.gas_used AS tx_gas_used
, traces.gas_used_original/txs.gas_used AS gas_used_original_percentage
, traces.gas_used_trace/txs.gas_used AS gas_used_trace_percentage
, txs.gas_price AS tx_gas_price
, traces.trace_type
, traces.trace_value
, traces.trace_success
, traces.tx_success
, (traces.gas_used_original*txs.gas_price)/POWER(10, 18) AS gas_fee_spent_original
, (pu.price*traces.gas_used_original*txs.gas_price)/POWER(10, 18) AS gas_fee_spent_original_usd
, (traces.gas_used_trace*txs.gas_price)/POWER(10, 18) AS gas_fee_spent_trace
, (pu.price*traces.gas_used_trace*txs.gas_price)/POWER(10, 18) AS gas_fee_spent_trace_usd
FROM traces
INNER JOIN {{ source('gnosis','transactions') }} txs ON txs.block_time=traces.block_time
     AND txs.hash=traces.tx_hash
     {% if is_incremental() %}
     AND {{ incremental_predicate('txs.block_time') }}
     {% endif %}
LEFT JOIN {{ source('prices', 'usd') }} pu ON pu.minute=date_trunc('minute', traces.block_time)
     AND pu.blockchain='gnosis'
     AND pu.contract_address='0xe91d153e0b41518a2ce8dd3d7944fa863463a97d'
     {% if is_incremental() %}
     AND {{ incremental_predicate('pu.minute') }}
     {% endif %}
