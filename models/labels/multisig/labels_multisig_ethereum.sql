{{config(alias='multisig_ethereum',
        post_hook='{{ expose_spells(\'["ethereum"]\',
                                    "sector",
                                    "labels",
                                    \'["ilemi","soispoke"]\') }}')}}

SELECT blockchain, address, name, category, contributor, source, created_at, updated_at
FROM (VALUES
(array('ethereum'),'0x220866b1a2219f40e72f5c628b65d54268ca3a9d','Vb 3','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x78605df79524164911c144801f41e9811b7db73d','BitDAO: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xc61b9bb3a7a0767e3179713f3a5c7a9aedce193c','Bitfinex: MultiSig 3','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xf326e4de8f66a0bdc0970b79e0924e33c79f1915','MetaMask: DS Proxy','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x860a80d33e85e97888f1f0c75c6e5bbd60b48da9','SuperRare: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x355d72fb52ad4591b2066e43e89a7a38cf5cb341','Wonderland: DAO','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xb88f61e6fbda83fbfffabe364112137480398018','MeebitsDAO: Treasury 2','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x9a67f1940164d0318612b497e8e6038f902a00a4','KeeperDAO: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x1cf0df2a5a20cd61d68d4489eebbf85b8d39e18a','Rarible: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x849d52316331967b6ff1198e5e32a0eb168d039d','Gnosis: Active Treasury Management','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xde21f729137c5af1b01d73af1dc21effa2b8a0d6','Gitcoin: MultiSig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xd52306eabc2be4e2dc8fbd1f929ac73008430f3f','LUKSO: MultiSig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x6d5a7597896a703fe8c85775b23395a48f971305','Cream.Finance: MultiSig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x8b4334d4812c530574bd4f2763fcd22de94a969b','Tokemak: Treasury Address','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xb1748c79709f4ba2dd82834b8c82d4a505003f27','Frax Finance: Comptroller','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xb8689b7910954bf73431f63482d7dd155537ea7e','Dopex: Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xdd2a08a1c1a28c1a571e098914ca10f2877d9c97','Loopring: Proxy Admin','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xa858ddc0445d8131dac4d1de01f834ffcba52ef1','Yuga Labs','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x56fcb471a9dde74045830439ad6612c9aad53c19','SquiggleDAO: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x68a99f89e475a078645f4bac491360afe255dff1','India Covid-Crypto Relief Fund','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xf5c27c6fe782cbb5c85989ea3e75754748153459','og.pleasrdao.eth','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xd374225abb84dca94e121f0b8a06b93e39ad7a99','Perpetual Protocol: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xce4a1e86a5c47cd677338f53da22a91d85cab2c9','MoonDAO: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xdff2aea378e41632e45306a6de26a7e0fd93ab07','Silo: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xc234e41ae2cb00311956aa7109fc801ae8c80941','Arbitrum: Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x99f4176ee457afedffcb1839c7ab7a030a5e4a92','Synthetix: Treasury Council','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xa5fc0bbfcd05827ed582869b7254b6f141ba84eb','Iron Bank: Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xdaeada3d210d2f45874724beea03c7d4bbd41674','Ribbon Finance: Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xbc49de68bcbd164574847a7ced47e7475179c76b','FingerprintsDAO: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xca771eda0c70aa7d053ab1b25004559b918fe662','CoW Protocol: CoW DAO Safe','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x35bb964878d7b6ddfa69cf0b97ee63fa3c9d9b49','Botto: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xe94b5eec1fa96ceecbd33ef5baa8d00e4493f4f3','SushiSwap: Treasury Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x557068a9b7d66f97a61b97c80541eb17672e1e6f','LobsterDAO: Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x690f0581ececcf8389c223170778cd9d029606f2','ENS: Cold Wallet','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x10e1439455bd2624878b243819e31cfee9eb721c','Unchain Fund Donation Wallet','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xa489faf6e337d997b8a23e2b6f3a8880b1b61e19','Flashbots','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xaf7eaf66b5f1fa23158784fb4c17dba90727afad','Compound Voting: Zerion','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xf894fea045eccb2927e2e0cb15c12debee9f2be8','PleasrDAO: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x4f6f49194e75c347a41e020d31d39c2f9a24b6e1','Unipilot: Incentives','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xeb3107117fead7de89cd14d463d340a2e6917769','Synthetix: protocolDAO','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xae7f458667f1b30746354abc3157907d9f6fd15e','SharkDAO: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x1f28ed9d4792a567dad779235c2b766ab84d8e33','Armor.fi: MultiSig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x4317d259fcce32ebbb508c27b12f4afaca074ae3','ARCx: ARCx Treasury DAO','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x7dac9fc15c1db4379d75a6e3f330ae849dffce18','KERNEL: Panvala League','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xc6bc2e1dbd5dd51f37f9e0f471d896405e318d78','Moloch: EIP-3074 Project','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x042b32ac6b453485e357938bdc38e0340d4b9276','Badger: Treasury Ops Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x51c2cef9efa48e08557a361b52db34061c025a1b','JPEGd: Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x15d0f64ffcf91c39810529f805cc3595dc3ef83f','BASTARDDAO: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x97843608a00e2bbc75ab0c1911387e002565dede','scaffold-eth','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xf26d1bb347a59f6c283c53156519cc1b1abaca51','Bankless DAO: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x99b36fdbc582d113af36a21eba06bfeab7b9be12','Tally: Community Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x2b9d5c7f2ead1a221d771fb6bb5e35df04d60ab0','Floki Inu: MultiSig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x3ccc90302a4c9d21ac18d9a6b6666b59ae459416','MechaChain: Admin Wallet','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xc04672587e0d1bd7da5707484119dbdbb67ac57d','Hakka Finance: MultiSig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xa70b638b70154edfcbb8dbbbd04900f328f32c35','Cryptex Finance: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xc4ddc2f471a476da1b906727072669f95d37c622','Global Coin Research: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x526ed9d7bd5641ba7638fa0eebe8d22b8cb32304','Bulls On The Block: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xdfb6f5112c2dca55fd9982a6c814cbcc83acf07c','RaidParty: Hot Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xd08d0e994eeef4001c63c72991cf05918adf191b','OpenDAO: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xcf2d2da4c2f9b0675a197febc6708704834f9c24','RaidParty: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x8400ac235ed4f139a3e05670a9a3c724e448129b','Fetch.ai: Foundation','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xfcc41c4614bd464ba28ad96f93aadaa7ba6c8680','clr.fund: Matching Pool','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xf7f52dd34bc21eda08c0b804c7c1dbc48375820f','PartyDAO: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x6032ded1d330d0672253bdfc9a56c971dee0683f','PadawanDAO: Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x3c5c2f4bcec51a36494682f91dbc6ca7c63b514c','Rekt DAO: Donate','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x4e2f98c96e2d595a83afa35888c4af58ac343e44','0xmons: Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x3b29c6e356f9445b693abb5df42fbc932062e0fb','Spank Chain: Multisig v2','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x563b1ae9717e9133b0c70d073c931368e1bd86e5','DAOGE: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x468a763d5b3ab6cc9e224ae9e2895e28583c6a3a','FiatLuxDAO: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xf3e48a2b1b9808f66321fb1eb385c86d2486dd6a','Alchemist Coin: Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x89214c8ca9a49e60a3bfa8e00544f384c93719b1','Decentraland: DAO Community','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x383df49ad1f0219759a46399fe33cb7a63cd051c','Float Protocol: Dev MultiSig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x2f61cd8f256ef199ce0cd3094bdce77f1b7e91f5','CrisisDAO: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xc102d2544a7029f7ba04beb133deadaa57fdf6b4','FreeRossDAO: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x245cc372c84b3645bf0ffe6538620b04a217988b','OlympusDAO: DAO Funds','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x623a12ca60d378705fd170a47b6d32c74367501d','Bankless DAO: Developers Guild','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xccf04146399214eb7813ab45b50d004c5b254784','OctoFi: Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xc4bd0ec59bc090417b7829a25f99c3559f997b22','DAOmasters: Treasury 2','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xab40a7e3cef4afb323ce23b6565012ac7c76bfef','Tempus Finance: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xc46ed6613ad2be543968c1aff898748ca7c6e076','Bistroo: MultiSig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x578ff4c0ee51bdc90e8acc9990cd09a897ef36ab','The OpenDAO: Operational Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x3b5ddf126f1cf58cf6597e86d13428c3a25044d3','Unipilot: Marketing','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x19b3eb3af5d93b77a5619b047de0eed7115a19e7','SushiSwap: Operation Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xd0b84202bd02eb1b9f62b30de1d8985f65d8dfb3','Kawakami: Marketing Fund','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x31016ffcebff16c20e74a8610f1650dcb5c01df3','Bankless DAO: Treasury Guild','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x874a873e4891fb760edfdae0d26ca2c00922c404','Frax Finance: Advisors','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xfb3bd022d5dacf95ee28a6b07825d4ff9c5b3814','Idle.finance: Treasury League','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x98cf3e4c7953f04eea4cdc619517694e0680e7ad','NFTY DeFi Protocol: Gnosis Safe','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xb9062896ec3a615a4e4444df183f0531a77218ae','Aave: Pool Admin V2','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x3dd46846eed8d147841ae162c8425c08bd8e1b41','mStable: mStableDAO Gnosis safe','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xd2a4848a6644749e652c1d9398b5aa317f57395b','Rocket Pool: Oracle DAO Rewards 1','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x90b6c61b102ea260131ab48377e143d6eb3a9d4b','Tokemak: Coordinator Address','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xd08fe0c97c80491c6ee696ee8151bc6e57d1bf1d','Gitcoin: Core Dev Fund','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x586b9b2f8010b284a0197f392156f1a7eb5e86e9','Nexus Mutual: Community Fund','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xb35cd25e91b376eafba79abe71d78814dec3401a','Ethereum Magicians: Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xb1c95ac257029d11f3f64ac67b2307a426699322','ConstitutionDAO : Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x4a183b7ed67b9e14b3f45abfb2cf44ed22c29e54','Zerion: Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x1326a1f39746726fdcfe88d83effe5451606ae85','Wootrade Network: Liquidity Token Vault','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xa4df9b76e64f84918e1847d28eaa4543eb4c8e3c','Quid Ika: MultiSig Wallet','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x8f2aa9c45850e075997ce846d75271f3e48584e2','Raid Guild: Open Grants Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xcdcebf1f28678eb4a1478403ba7f34c94f7ddbc5','Balancer: Team','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x3e4543733181c057b1b441d49fb06f8f6b7208ec','handle.fi: Handle Rewards','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x5f0dee98360d8200b20812e174d139a1a633edd2','Abracadabra.Money: Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xb5577e612f234537111756b9eb19c1b365b8e634','DAOGE: Hot Wallet','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x42f38ec5a75accec50054671233dfac9c0e7a3f6','Gnosis Chain: Bridge Governance','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x11cc283d06fa762061df2b0d2f0787651ceef659','Frax Finance: Business Dev','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x70ccbe10f980d80b7ebaab7d2e3a73e87d67b775','Gitcoin Grants: Vyper','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x984ec14dc726b75ca3eb6a94c64d165d37ea823e','Bankless DAO: Legal Guild','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xdf2c270f610dc35d8ffda5b453e74db5471e126b','MIM Treasury Wallet','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xfcf455d6eb48b3289a712c0b3bc3c7ee0b0ee4c6','mStable: Funding subDAO','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xa52fd396891e7a74b641a2cb1a6999fcf56b077e','Redacted Cartel: Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x7838d17d508a0dbc5ac2b5b0ef121fb2bc5a7efe','Vader Protocol: Seed Liquidity','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x2d737cd0ebbdb40f4bcddcbd0fce1c03eb4a60ba','Dtravel: Treasury 2','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x1c95930dfc1139381265ce45b5f480f1efae09a1','DeFi Education Fund: Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x5bc5ec5130f66f13d5c21ac6811a7e624ed3c7c6','Consensys: Oracle DAO Rewards','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x6a7efa964cf6d9ab3bc3c47ebddb853a8853c502','Frax Finance: Comptrollers','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x5181c3c36bd52f783e6e1771d80b1e3adcb36019','Frax Price Index: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x7e3d3f0162bdec5c86202a6a59d187fd2aff226f','Bulls On The Block: Team Wallet','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x9e2b6378ee8ad2a4a95fe481d63caba8fb0ebbf9','Alchemix Finance: Dev Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xc41dd7d65444cdcd80d7e2fbd9d20c4b191cf988','Dtravel: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x2da9b01a81dd74b1976337bd5fec5e77b4c5988b','Lixir Finance: Ecosystem','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x90a48d5cf7343b08da12e067680b4c6dbfe551be','ShapeShift: DAO Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x4ef3c56e7e012903bdab5a90ffa6ab527006b291','Telcoin: Genesis Wallet','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xfe497602494a31f24a673b1afa80a2e5a105a3ab','Wootrade Network: Team Vest','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xe48c7134455a864e8895ce4a4a7c79b575ece40d','SwarmCity: Vault','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xdfb0353d79cd338e294dec709e76dc4894c51572','Geeq: Marketing','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x16ea8ce690cc7298d0d97a615f1ab915498bb830','Geeq: Customer Aquisition','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x6154218a394a3dcb6326d2287b72fb7bace04966','Geeq: Pre-Round','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x5ee7a3bb9956f37ec94e69ec6497f9f957361bc7','Geeq: Floating Liquidity','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x1fb999f8921d6d16bafce98d6c847656b4e91f6a','KitaJaga: Donate','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xe72ce48f3a7c31778466e7d2461183668a31b7d4','Wootrade Network: Advisor','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xd7fe300587d41ed0e8b6a2bed5a1b2bb4fcdad9e','Gitcoin Grants: Open Raise','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x4cc427be94c8df62b1f3a2a3cbff904fa80284e8','Geeq: Team','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xf0b8660476ea1af0f363de8816e3e7cd1c8f1fde','Wootrade Network: Ecosystem Token Vault','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xeb9a82736cc030fc4a4cd4b53e9b2c67e153208d','Synthetix: Grants Council','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xd25185f8c3b9e38c3f014378ce58b362db568352','Gitcoin Grants: Daohaus','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x80eb9fa0d41f4fa242112c94e748ce47477196df','Lixir Finance: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x9ba6e03d8b90de867373db8cf1a58d2f7f006b3a','Optimism: Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xf625d91ec2f708f2cd2a290320ba1a56ffbe0b4e','Lixir Finance: Team','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xe7636c7ef670a3bcf772d9d57244c9e88ad90437','Bankless DAO: Writers Guild','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x63278bf9acdfc9fa65cfa2940b89a34adfbcb4a1','Frax Finance: Community 2','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x8d4392f55bc76a046e443eb3bab99887f4366bb0','Frax Finance: Team','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xa95f86fe0409030136d6b82491822b3d70f890b3','Frax Finance: Investors','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x9aa7db8e488ee3ffcc9cdfd4f2eaecc8abedcb48','Frax Finance: Treasury 2','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x42a1c0721af084370fe13f514a86d26bbeac1f97','Element: Multi-Sig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x0ae09ef609567904b483ae74a2117d88a1b1d7d0','Telcoin: Liquidity Wallet','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xa3429458137ad28384ebb11f263b6ed645ca94c5','Geeq: Unlocked Round','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xc7c712e02b3d99564ae830cec33e5c3ef45d0c8e','BanklessDAO: Project Management Guild','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x23d94f3705290efe41f8cf0e8fe409b69067175f','Defray Labs: Gnosis Safe','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x46abfe1c972fca43766d6ad70e1c1df72f4bb4d1','Synthetix: Ambassador Council','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xad41bd1cf3fd753017ef5c0da8df31a3074ea1ea','Luna Foundation Guard Reserve Wallet','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xc736e537c71cf1379dca3642d567ffe14fcb6051','Sorbet Finance Hack Alert 136','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x21de18b6a8f78ede6d16c50a167f6b222dc08df7','Beanstalk: Farms Budget','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x9467cfadc9de245010df95ec6a585a506a8ad5fc','Index Coop: MultiSig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x0cd8fd90bacc7a676fcc7c0d7573b970f8784b50','Cream.Finance: Team','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x589b1a5fdeb272689adcdddaf7575e2ae40be4de','Parma: Multi-Sig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x92fc4338ad16d07be1d79098015cb2957d21fdc0','Alta: Vault 1','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xfeb4acf3df3cdea7399794d0869ef76a6efaff52','Yearn: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x67905d3e4fec0c85dce68195f66dc8eb32f59179','mStable: Asset Management subDAO','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xfdff6b56cce39482032b27140252ff4f16432785','Rarible: Treasury 2','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x3bcf3db69897125aa61496fc8a8b55a5e3f245d5','PieDAO: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xb81f5b9bd373b9d0df2e3191a01b8fa9b4d2832a','KeeperDAO: Strategic Reserve Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xbb98abbc3dddbacf4b0831e650c8896e138df597','Polarity Exchange: Cold Wallet','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x5ea4a9a7592683bf0bc187d6da706c6c4770976f','Rari Capital: RGT Reserves','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x2fc8d8bcf4b2c0fc6594475e44c473ac3e844b6a','Sperax: Private Sale','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xbb98abbc3dddbacf4b0831e650c8896e138df597','Polarity Exchange: Cold Wallet','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x5ea4a9a7592683bf0bc187d6da706c6c4770976f','Rari Capital: RGT Reserves','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x2fc8d8bcf4b2c0fc6594475e44c473ac3e844b6a','Sperax: Private Sale','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x3155baf5055e9d62dd9fb40e6f6a460ac81d26eb','Accel DeFi: Multisig Gnosis Vault','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x15f4d11dd90382f7fd81d0ca37d5d7e44706ffce','HatDAO: Multi-Sig','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xc597b10eb4dbaba8c6a887792b60aabcbf27e076','Governor DAO: Treasury','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0xe44f10a925411a3a0086e5edba8a4399c6f75ad6','Panvala: Activities Fund','multisig','ilemi','static',timestamp('2022-09-28'), now()),
(array('ethereum'),'0x71fb9db587f6d47ac8192cd76110e05b8fd2142f','PolyNetwork Multisig','multisig','ilemi','static',timestamp('2022-09-28'), now())
    ) AS x (blockchain, address, name, category, contributor, source, created_at, updated_at)
