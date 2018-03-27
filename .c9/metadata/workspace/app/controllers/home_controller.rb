{"changed":true,"filter":false,"title":"home_controller.rb","tooltip":"/app/controllers/home_controller.rb","value":"class HomeController < ApplicationController\n  def index\n    require 'net/http'\n    require 'json'\n    \n    @url = 'https://api.coinmarketcap.com/v1/ticker/?limit=0'\n    @uri = URI(@url)\n    @response = Net::HTTP.get(@uri)\n    @coins = JSON.parse(@response)\n    @my_coins = ['BTC', 'ETH', 'XRP', 'BCH', 'LTC', 'EOS', 'ADA', 'XLM', 'NEO', 'MIOTA', 'XMR', 'DASH', 'TRX', 'XEM', 'USDT', 'ETC', 'VEN', 'QTUM', 'ICX', 'LSK', 'BNB', 'OMG', 'NANO', 'BTG', 'ZEC', 'DGD', 'XVG', 'PPT', 'BCN', 'STRAT', 'STEEM', 'WAVES', 'BTS', 'MKR', 'SC', 'RHOC', 'VERI', 'DOGE', 'AE', 'REP', 'DCR', 'SNT', 'ONT', 'ZIL', 'WTC', 'AION', 'KMD', 'HSR', 'ZRX', 'ARDR', 'ARK', 'CNX', 'KCS', 'QASH', 'LRC', 'STORM', 'DGB', 'MONA', 'GAS', 'PIVX', 'NAS', 'SYS', 'BAT', 'DRGN', 'GNT', 'FCT', 'IOST', 'ETHOS', 'ETN', 'FUN', 'R', 'KNC', 'XZC', 'SALT', 'GXS', 'ELF', 'BTCD', 'RDD', 'NEBL', 'NCASH', 'REQ', 'EMC', 'LINK', 'MAID', 'ENG', 'DCN', 'NXT', 'GBYTE', 'POWR', 'KIN', 'PAY', 'BNT', 'PART', 'CND', 'POLY', 'STORJ', 'ICN', 'NXS', 'VTC', 'BLOCK', 'NULS', 'MNX', 'SMART', 'DENT', 'GVT', 'ANT', 'ACT', 'MTL', 'PLR', 'MANA', 'DTR', 'SUB', 'BTX', 'SRN', 'GNO', 'THETA', 'QSP', 'AGI', 'GAME', 'TNB', 'ENJ', 'CVC', 'RLC', 'SKY', 'MCO', 'SAN', 'CS', 'GNX', 'RDN', 'POE', 'WAX', 'IGNIS', 'XPA', 'UBQ', 'HPB', 'DEW', 'BOS', 'NAV', 'BIX', 'ABT', 'ZEN', 'PURA', 'PPP', 'EDG', 'EVN', 'POA', 'AUTO', 'FSN', 'SLS', 'PRL', 'TKY', 'ADX', 'XDN', 'MED', 'LOOM', 'XP', 'CMT', 'ITC', 'LEND', 'XAS', 'SPHTX', 'MDS', 'XBY', 'BLZ', 'C20', 'DDD', 'ION', 'PPC', 'FTC', 'BCO', 'OST', 'VEE', 'EDO', 'RCN', 'PXS', 'TEL', 'LDC', 'SNM', 'DATA', 'UTK', 'RPX', 'JNT', 'SPANK', 'DTA', 'VIBE', 'EMC2', 'SMT', 'QRL', 'DBC', 'BAY', 'AST', 'AMB', 'CRPT', 'NGC', 'MLN', 'TRAC', 'WINGS', 'ERA', 'MOD', 'SNGLS', 'WGR', 'APPC', 'NLG', 'SPC', 'BRD', 'GTO', 'TAAS', 'UTNP', 'WABI', 'MGO', 'BTO', 'RKT', 'TNC', 'ETP', 'BCPT', 'VIA', 'LBC', 'SOAR', 'INS', 'IDH', 'XCP', 'BURST', 'COB', 'INK', 'FUEL', 'DPY', 'HTML', 'AEON', 'WPR', 'CLOAK', 'DNT', 'AMP', 'GRS', 'CTR', 'TNT', 'KICK', 'MOBI', 'HMQ', 'PRE', 'HAV', 'TRIG', 'UNO', 'CPC', 'BITCNY', 'CDT', 'CRW', 'IHT', 'TKN', 'LKK', 'NMC', 'QLC', 'HST', 'HVN', 'UKG', 'LEO', 'LUN', 'UCASH', 'POT', 'BITB', 'SHIFT', 'LINDA', 'FLASH', 'VIB', 'REN', 'MTH', 'DCT', 'PEPECASH', 'SNC', 'XWC', 'IOC', 'YOYOW', 'ONION', 'ECC', 'SBD', 'BKX', 'RFR', 'LET', 'SXDT', 'INT', 'SAFEX', 'OCN', 'CFI', 'EVX', 'ADT', 'XEL', 'DAT', 'FOTA', 'ATM', 'EDR', 'ZPT', 'ORME', 'MTN', 'CHSB', 'BPT', 'BLK', 'SIB', 'DIME', 'MOON', 'UQC', 'MER', 'NLC2', 'ZAP', 'DXT', 'DMD', 'MSP', 'ECA', 'DLT', 'ZCL', 'RVR', 'DAI', 'STK', 'NMR', 'SWM', 'STQ', 'XPM', 'ZSC', 'GRC', 'TRST', 'CAPP', 'RVN', 'GRID', 'ACAT', 'CAT', 'MDA', 'VRC', 'ARN', 'MUE', 'XTO', 'ELEC', 'MUSE', 'PASC', 'SLR', 'SWFTC', 'KEY', 'DADI', 'COLX', 'TIO', 'OMNI', 'ICOS', 'XSH', 'CV', 'QBT', 'QUN', 'BLT', 'LA', 'COSS', 'GETX', 'YEE', 'SOC', 'PZM', '1ST', 'TSL', 'LYM', 'XAUR', 'BITUSD', 'EXP', 'FRST', 'BMC', 'BCC', 'GUP', 'ALQO', 'PRO', 'PRG', 'THC', 'OAX', 'RADS', 'BOT', 'BDG', 'TRUE', 'TAU', 'TIX', 'INCNT', 'ZOI', 'WCT', 'MINT', 'RISE', 'OCT', 'FLO', 'ENRG', 'OXY', 'DRT', 'SNOV', 'COV', 'XUC', 'MWAT', 'IXT', 'TGT', 'DBET', 'DTB', 'DNA', 'ALIS', 'RBY', 'IPL', 'NYC', 'UNIT', 'NEU', 'XRL', 'DIVX', 'RVT', 'STX', 'LMC', 'AIR', 'BSD', 'CLAM', 'ATN', 'DEB', 'CHP', 'PHR', 'AUR', 'POSW', 'TOA', 'XMY', 'MOT', 'LOC', 'GBX', 'PRA', 'SWT', 'TX', 'QAU', 'CSNO', 'IFT', 'OK', 'BBR', 'MUSIC', 'ATB', 'NEOS', 'MDT', 'BIS', 'CAS', 'EAC', 'B2B', 'FDX', 'DBIX', 'AURA', 'AIT', 'PUT', 'MYB', 'EVR', 'PLBT', 'HKN', 'TCC', 'EZT', 'XSPEC', 'GAM', 'TIME', 'NXC', 'HAC', 'COFI', 'FLDC', 'AC', 'WRC', 'POLIS', 'DIM', 'OTN', 'TFD', 'PTOY', 'SPF', 'TCT', 'ECOB', 'MEE', 'DICE', 'GOLOS', 'LUX', 'RNT', 'XLR', 'EKO', 'DYN', 'TIE', 'SYNX', 'BNTY', 'PST', 'MYST', 'ESP', 'BUN', 'SEQ', 'NVC', 'KRM', 'DOPE', 'XNK', 'AXP', 'BLUE', 'XST', 'ELIX', 'HGT', 'CAG', 'SPHR', 'PLU', 'COVAL', 'TKS', 'HOT', 'KB3', 'STAR', 'REBL', 'RMT', 'CXO', 'POLL', 'GRE', 'CVCOIN', 'PINK', 'USNBT', 'BCY', 'REM', 'MTX', 'CURE', 'HEAT', 'AVT', 'SXUT', 'PND', 'TUSD', 'HORSE', 'PIRL', 'GEO', 'IOP', 'INSTAR', 'EBTC', 'BWK', 'BAX', 'BTM', 'VOISE', 'DOT', 'GET', 'FRD', 'AID', 'BIO', 'SETH', 'PKT', 'XVC', 'ATMS', 'TFL', 'OBITS', 'BEZ', 'HYP', 'APX', 'PFR', 'DRP', 'ARY', 'PARETO', 'IPBC', 'ABY', 'RC', 'ZLA', 'BRX', 'LIFE', 'QWARK', 'HWC', 'ERO', 'DNR', 'KORE', 'XBC', 'UFO', 'GMT', 'EXY', 'GAT', 'OPT', 'SNRG', 'EXCL', 'PTC', 'FLIXX', 'ADB', 'MONK', 'BTCZ', 'HUSH', 'ZRC', 'RIC', 'MEME', 'SCL', 'GRFT', '1337', 'SUMO', 'TIPS', 'MNTP', 'EVE', 'GLD', 'VTR', 'PBL', 'TRC', 'SLT', 'GCN', 'TBX', 'J8T', 'NIO', 'SEXC', 'UFR', 'LEDU', 'ERC', 'INXT', 'VIU', 'BTDX', 'REC', 'VRM', 'MCAP', 'BASH', 'VSL', 'NOTE', 'PBT', 'CPAY', 'LEV', 'PLAY', 'BPL', 'ZEIT', 'NOBL', 'VZT', 'BELA', 'FLIK', 'PRIX', 'ADST', 'XMCC', 'LOCI', 'TRF', 'ING', 'NKC', '2GIVE', 'CPY', 'AIX', 'BON', 'SHP', 'VSX', 'QRK', 'TRCT', 'CANN', 'HAT', 'PING', 'ODN', 'ALT', 'KZC', 'KRB', 'CRAVE', 'SPRTS', 'TZC', 'MTNC', 'INN', 'PUT', 'DTH', 'JIYO', 'ADC', 'BRK', 'CMPCO', 'ZER', 'SSS', 'BUZZ', 'HUC', 'WISH', 'MAG', 'CRED', 'FOR', 'GCR', 'SWIFT', 'SPR', 'CHC', 'BLITZ', 'PIX', 'EGC', 'EXRN', 'CRB', 'ATL', 'EBST', 'CREA', 'PIPL', 'RAIN', 'XGOX', 'TES', 'EMV', 'EFL', 'YOC', 'SAGA', 'LDOGE', 'QVT', 'SXC', 'AMM', 'LINX', 'IND', 'WTT', 'TRUST', 'CL', 'BTW', 'XMG', 'NKA', 'XFT', 'JC', 'DGPT', 'EFYT', 'ELLA', 'RUP', 'ZNY', 'SEND', 'WILD', 'MXT', 'RUPX', 'LCT', 'DFT', 'AU', 'SMS', 'TDX', 'ITNS', 'IC', 'PROC', 'PYLNT', 'ONG', 'UNB', 'EQT', 'MZC', 'ETBS', 'SKIN', 'SENSE', 'ADZ', 'STAK', 'UIS', 'STU', 'PHO', 'SMLY', 'HOLD', 'OCL', 'DP', 'MRJA', 'MAGE', 'PKB', 'PURE', 'GRWI', 'FYN', 'HXX', 'ELTCOIN', 'ARC', 'CRC', 'MRT', 'DAY', 'VIVO', 'DAR', 'JEW', 'IFLT', 'NSR', 'DEUS', 'METAL', 'FLT', '42', 'BBP', 'MBRS', 'XPTX', 'CDX', 'CDN', 'POP', 'BDL', 'WAND', 'FST', 'ARG', 'DRPU', 'MOIN', 'ACE', 'ZENI', 'UNIFY', 'LOG', 'XPD', 'MAX', 'KLN', 'DCY', 'CRM', 'ATS', 'SKC', 'BYC', 'FJC', 'CNT', 'BRIT', 'XLC', 'ARCT', 'DEM', 'GUN', 'RLT', 'START', 'LGD', 'PDC', 'EQL', 'BRO', 'BTCA', 'TROLL', 'CCRB', 'MANNA', 'KBR', 'BTA', 'SUR', 'DGC', 'DFS', 'ELE', 'ECASH', 'CPC', 'OPC', 'BXT', 'HPC', 'CJ', 'EPY', 'JET', 'CTX', 'MOJO', 'EL', 'TRUMP', 'GLS', 'PXC', 'ARI', 'NETKO', 'QBIC', 'WHL', 'XCN', 'MNE', 'POST', 'TIG', 'ETG', 'PCN', 'MBI', 'ORE', 'EBCH', 'RBT', 'AERM', 'PNX', 'DAXX', 'MAO', 'BITSILVER', 'ONX', 'KUSH', 'XCPO', 'LCP', 'IETH', 'TIT', 'SCORE', 'ERC20', 'B@', 'TKR', 'CFT', 'GRLC', 'HVCO', 'SGR', 'TOKC', 'TEK', 'CCT', 'NTO', 'STN', 'ACC', 'XHI', 'BCF', 'CCO', 'PAK', 'TAG', 'BOLI', 'ZCG', 'QBC', 'XRA', 'GLC', 'BITGOLD', 'MCRN', 'FUNC', 'GTC', 'XCXT', 'ETHD', 'RED', 'LEA', 'RKC', 'C2', 'NEWB', 'VOT', 'ARCO', 'BOST', 'SDRN', 'DSR', 'CASH', 'PCOIN', 'LTB', 'SWING', '808', 'GOLF', 'ZZC', 'SHND', 'PXI', 'AMS', 'SOON', 'CON', 'HBC', 'EOT', 'SCS', 'COAL', 'FLAX', 'SANDG', 'SH', 'CAB', 'ERY', 'VPRC', 'LUNA', 'EXN', 'XCO', 'MSCN', 'EAGLE', 'SONG', 'KRONE', 'CNNC', 'ARB', 'LTCU', 'WOMEN', 'GBC', 'ACP', 'VRS', 'PRC', 'NANOX', 'ARGUS', 'CONX', 'DMB', 'AI', 'PPY', 'KLC', 'NVST', 'HDG', 'ART', 'CREDO', 'ECN', 'BQ', 'HBT', 'CHIPS', 'NTRN', 'PGL', 'ASTRO', 'EVC', 'VTA', 'XNN', 'STA', 'DOVU', 'REX', 'UNY', 'BLU', 'IXC', 'ZEPH', 'GOOD', 'GJC', 'CARBON', 'BBT', 'REAL', 'FYP', 'CBX', 'TRIA', 'AHT', 'LEAF', 'STRC', 'YASH', 'V', 'FUCK', 'RNS', 'ORB', 'WDC', 'UNI', 'INSN', 'ZET', 'KEK', 'NDC', 'ICOO', 'BPC', 'INPAY', 'SHORTY', 'SDC', 'TTC', 'SCT', 'HTC', 'ANC', 'I0C', 'HERO', 'Q2C', 'USC', 'KOBO', 'FCN', 'HBN', 'RIYA', 'PIGGY', 'ESZ', 'BITS', 'UNIC', 'BTCS', 'MEC', 'MAC', 'GRIM', 'ITI', 'TRI', 'ITT', 'RUSTBITS', 'FIMK', 'HODL', 'CV2', 'SMC', 'BTCR', 'FC2', 'BTB', 'TALK', 'LANA', 'EBET', 'GAIA', 'VAL', 'XBL', 'UTC', 'XGR', 'VISIO', 'NYAN', 'VIDZ', 'SIGT', 'LNK', 'WAY', 'BITBTC', 'XJO', 'KURT', 'FLY', 'AMMO', 'HAL', 'BIGUP', 'BTWTY', 'CUBE', 'WGO', 'DRXNE', 'OPAL', 'GB', 'BUCKS', '8BIT', 'CNO', 'BTG', 'BLOCKPAY', 'AMBER', 'SLG', 'MOTO', 'BLC', 'ABJ', 'XPY', 'PR', 'DSH', 'SAC', 'TRK', 'BTCRED', 'MAD', 'CHESS', 'SRC', 'MARS', 'SUPER', 'TGC', 'DDF', 'CRX', 'OTX', 'VC', 'GAP', 'CCN', 'PX', 'PHS', 'TSE', 'ICN', 'MNM', 'NEVA', 'DTC', 'BITZ', 'RBIES', 'EVIL', 'DIX', 'CYP', 'EMD', 'ATOM', 'SPEX', 'FRC', 'UNITS', 'KAYI', 'BERN', 'SPACE', 'NUKO', 'SHDW', 'XVP', 'XCT', 'STV', 'XIOS', 'DLC', 'CFD', 'IRL', 'PASL', 'ECO', '888', 'XRE', 'BSTY', 'KED', 'HONEY', 'JIN', 'YTN', 'GLT', 'AIB', 'ZUR', 'INFX', 'IMS', 'DUO', 'ISL', 'BITEUR', '300', 'CHAN', 'SCRT', 'ASAFE2', 'RPC', 'YAC', 'ICOB', 'EVO', 'GUESS', 'BUMBA', 'IMX', 'REE', 'MAY', 'BRAT', 'FIRE', 'QTL', 'VUC', 'VLT', 'EUC', 'DALC', 'XNG', 'XBTS', 'MST', 'FUZZ', '611', 'DRS', 'XCRE', 'XBTC21', 'GPU', 'TRDT', '$$$', 'SOJ', 'TAJ', 'GCC', 'HMP', 'FRK', 'CACH', 'BSTAR', 'ANTI', 'SOIL', 'ACOIN', 'WARP', 'J', 'ELC', 'CPN', 'ZMC', 'BIP', 'MAR', 'ADCN', 'CF', 'MNC', 'SPT', 'BRIA', 'CXT', 'ALL', 'POS', 'ROOFS', 'GP', 'BENJI', 'BTPL', 'CMT', 'MTLMC3', 'PRX', 'ICE', 'DBTC', 'NRO', 'BLN', 'STARS', 'GPL', 'BAS', 'CESC', 'BLRY', 'BNX', 'FNC', 'MDC', 'LTCR', 'VIP', 'ZYD', 'DLISK', 'CTO', 'ATX', 'MND', 'RBX', 'URO', 'ICON', 'NTWK', 'BTQ', 'PULSE', 'SLEVIN', 'QCN', 'WORM', 'BXC', 'PONZI', 'RIDE', 'KNC', 'SFC', 'ALTCOM', 'PIE', 'WBB', 'URC', 'BSC', 'JWL', 'EGO', 'G3N', 'ORLY', 'UET', 'STEPS', 'BIOS', 'RSGP', 'RMC', 'CWXT', 'IMPS', 'VEC2', 'PEX', 'GEERT', 'DES', 'DRM', 'LIR', 'MILO', 'JOBS', 'TAGR', 'ZNE', 'BRAIN', 'CRT', 'PLNC', 'DOLLAR', 'OS76', 'PLACO', 'JS', 'BOAT', 'OFF', 'CRDNC', 'VOLT', 'TOR', 'ALTC', 'COXST', 'XOC', 'SDP', 'XRC', 'CTIC3', 'IBANK', 'SOCC', 'ELS', 'BIOB', 'P7C', 'NODC', 'FXE', 'COUPE', 'SLFI', 'CREVA', 'ULA', 'MGM', 'CTIC2', 'GSR', 'CALC', 'SLM', 'VLTC', 'TYCHO', 'LVPS', 'PIZZA', 'DGCS', 'ABN', 'TSTR', 'CCM100', 'DIBC', 'EBT', 'WAN', 'HT', 'ATMC', 'EKT', 'ELA', 'BBN', 'OC', 'RUFF', 'DRG', 'AIDOC', 'CHAT', 'EPC', 'W3C', 'UP', 'TOPC', 'WIC', 'BCD', 'NOAH', 'UGC', 'HPY', 'RCT', 'OF', 'LBTC', 'AAC', 'NPXS', 'SHOW', 'TEN', 'AVH', 'STC', 'MOF', 'MAN', 'FRGC', 'HLC', '1WO', 'OCC', 'SSC', 'BANCA', 'GLA', 'XTZ', 'TOMO', 'BTCP', 'MAG', 'UGT', 'WC', 'KCASH', 'UBTC', 'AWR', 'IQT', 'CLUB', 'LIGHT', 'FAIR', 'BITG', 'NANJ', 'LGO', 'ADK', 'SBTC', 'VLC', 'AMLT', 'DMT', 'NTK', 'CFUN', 'DROP', 'IDT', 'FIL', 'BSR', '$PAC', 'REF', 'READ', 'BCX', 'LCC', 'CAN', 'CENNZ', 'MOAC', 'MGC', 'EAG', 'SWTC', 'BIG', 'MLM', 'WETH', 'GEM', 'CMS', 'BEE', 'XID', 'LATX', 'UIP', 'BFT', 'ECH', 'QUBE', 'HIRE', 'IPC', 'B2X', 'SBC', 'FLUZ', 'PRS', 'MSD', 'SHIP', 'THS', 'MVC', 'BCDN', 'ZENGOLD', 'NMS', 'BT2', 'TOK', 'BAR', 'NXX', 'DATX', 'NPX', 'IDXM', 'ENT', 'SIC', 'CANDY', 'XIN', 'TMC', 'TOKEN', 'HQX', 'BCA', 'COR', 'PCS', 'GCS', 'LALA', 'WA', 'CSC', 'GBG', 'ETT', 'MCR', 'OX', 'HC', 'ACES', 'CLD', 'STAC', 'VULC', 'BITCF', 'PRES', 'ABC', 'IFC', 'ANI', 'CEFS', 'TESLA', 'ELITE', 'XRY', 'EDRC', 'TER', 'RBBT', 'XQN', 'SND', 'DAV', 'TCOIN', 'GARY', 'ZBC', 'BIT', 'TODAY', 'GOD', 'UTT', 'ESC', 'AKY', 'SLOTH', 'BTCM', 'CC', 'XOT', 'DMC', 'AV', 'NEOG', 'RICHX', 'FLAP', 'OP', 'FONZ', 'GDC', 'BLAZR', 'BSN', 'SJW', 'SUP', 'INDI', 'NAMO', 'BET', 'SJCX', 'CYDER', 'SPK', 'UNITY', 'WSX', 'SHA', 'FRN', 'MARX', 'FAZZ', 'GRX', 'CFC', 'SKR', 'QBT', 'MINEX', 'CME', 'HIGH', 'WOW', 'RYZ', 'BAT', 'DON', 'FID', 'VASH', 'MONETA', 'DBG', 'XSTC', 'INDIA', 'LDCN', 'HCC', 'CRYPT', 'ACN', 'REGA', 'APC', 'STEX', 'LEVO', 'ZSE', 'PLX', 'DUTCH', 'PAYP', 'HDLB', 'BTE', 'LEPEN', 'SNAKE', 'NOX', 'SISA', 'FAP', 'GML', 'TOPAZ', 'PRM', 'LKC', 'SMOKE', 'HYPER', 'FRWC', 'UR', 'WINK', 'EGG', 'SAK', 'BEST', 'SKULL', 'PRN', 'NUMUS', 'HALLO', 'BTBc', 'POKE', 'BIRDS', 'LTH', 'MBL', 'ANTX', 'GAY', 'RUNNERS', 'XTD', 'PRIMU', 'LAZ', 'KDC', 'ROYAL', 'TLE', 'TELL', 'BITOK', 'NTC', 'ASN', 'SPORT', 'CMP', 'GRN', 'DASHS', 'TURBO', 'OMC', 'AXIOM', 'FUTC', 'VOYA', 'UNRC', 'RUBIT', 'SFE', 'HNC', 'MAGN', 'XVE', 'BAC', 'X2', 'DISK', 'OPES', 'DUB', 'CYC', 'IVZ', 'GAIN', 'DCRE', 'PSY', 'TEAM', 'SHELL', 'MMXVI', 'NBIT', 'TRICK', 'RCN', 'EGOLD', 'QORA', 'TOP', 'GMX', 'XID', 'PDG', 'RHFC', 'CHEAP', 'SIGMA', 'LLT', 'MCI', 'SAY', 'KARMA', 'XAU', 'UNC', 'MEDIC', 'BUB', 'TCR', 'OCOW', 'KASHH', 'INF', 'FRCT', 'XMRG',]\n\n\n\n\n  end\n  \n  def about\n  end\n  \n  def lookup\n  end\n  \n  \nend\n","undoManager":{"mark":98,"position":100,"stack":[[{"start":{"row":9,"column":36},"end":{"row":9,"column":37},"action":"insert","lines":["B"],"id":7}],[{"start":{"row":9,"column":38},"end":{"row":9,"column":39},"action":"insert","lines":[","],"id":8}],[{"start":{"row":9,"column":31},"end":{"row":9,"column":39},"action":"remove","lines":[" \"BBBB\","],"id":9}],[{"start":{"row":9,"column":17},"end":{"row":9,"column":30},"action":"remove","lines":["'BTC', 'XRP',"],"id":10},{"start":{"row":9,"column":17},"end":{"row":9,"column":11848},"action":"insert","lines":["'BTC', 'ETH', 'XRP', 'BCH', 'LTC', 'EOS', 'ADA', 'XLM', 'NEO', 'MIOTA', 'XMR', 'DASH', 'TRX', 'XEM', 'USDT', 'ETC', 'VEN', 'QTUM', 'ICX', 'LSK', 'BNB', 'OMG', 'NANO', 'BTG', 'ZEC', 'DGD', 'XVG', 'PPT', 'BCN', 'STRAT', 'STEEM', 'WAVES', 'BTS', 'MKR', 'SC', 'RHOC', 'VERI', 'DOGE', 'AE', 'REP', 'BTM', 'DCR', 'SNT', 'ONT', 'ZIL', 'WTC', 'AION', 'KMD', 'HSR', 'ZRX', 'ARDR', 'ARK', 'CNX', 'KCS', 'QASH', 'LRC', 'STORM', 'DGB', 'MONA', 'GAS', 'PIVX', 'NAS', 'SYS', 'BAT', 'DRGN', 'GNT', 'FCT', 'IOST', 'ETHOS', 'ETN', 'FUN', 'R', 'KNC', 'XZC', 'SALT', 'GXS', 'ELF', 'BTCD', 'RDD', 'NEBL', 'NCASH', 'REQ', 'EMC', 'LINK', 'MAID', 'ENG', 'DCN', 'NXT', 'GBYTE', 'POWR', 'KIN', 'PAY', 'BNT', 'PART', 'CND', 'POLY', 'STORJ', 'ICN', 'NXS', 'VTC', 'BLOCK', 'NULS', 'MNX', 'SMART', 'DENT', 'GVT', 'ANT', 'ACT', 'MTL', 'PLR', 'MANA', 'DTR', 'SUB', 'BTX', 'SRN', 'GNO', 'THETA', 'QSP', 'AGI', 'GAME', 'TNB', 'ENJ', 'CVC', 'RLC', 'SKY', 'MCO', 'SAN', 'CS', 'GNX', 'RDN', 'POE', 'WAX', 'IGNIS', 'XPA', 'UBQ', 'HPB', 'DEW', 'BOS', 'NAV', 'BIX', 'ABT', 'ZEN', 'PURA', 'PPP', 'EDG', 'EVN', 'POA', 'AUTO', 'FSN', 'SLS', 'PRL', 'TKY', 'ADX', 'XDN', 'MED', 'LOOM', 'XP', 'CMT', 'ITC', 'LEND', 'XAS', 'SPHTX', 'MDS', 'XBY', 'BLZ', 'C20', 'DDD', 'ION', 'PPC', 'FTC', 'BCO', 'OST', 'VEE', 'EDO', 'RCN', 'PXS', 'TEL', 'LDC', 'SNM', 'DATA', 'UTK', 'RPX', 'JNT', 'SPANK', 'DTA', 'VIBE', 'EMC2', 'SMT', 'QRL', 'DBC', 'BAY', 'AST', 'AMB', 'CRPT', 'NGC', 'MLN', 'TRAC', 'WINGS', 'ERA', 'MOD', 'SNGLS', 'WGR', 'APPC', 'NLG', 'SPC', 'BRD', 'GTO', 'TAAS', 'UTNP', 'WABI', 'MGO', 'BTO', 'RKT', 'TNC', 'ETP', 'BCPT', 'VIA', 'LBC', 'SOAR', 'INS', 'IDH', 'XCP', 'BURST', 'COB', 'INK', 'FUEL', 'DPY', 'HTML', 'AEON', 'WPR', 'CLOAK', 'DNT', 'AMP', 'GRS', 'CTR', 'TNT', 'KICK', 'MOBI', 'HMQ', 'PRE', 'HAV', 'TRIG', 'UNO', 'CPC', 'GTC', 'BITCNY', 'CDT', 'CRW', 'IHT', 'TKN', 'LKK', 'NMC', 'QLC', 'HST', 'HVN', 'UKG', 'LEO', 'LUN', 'UCASH', 'POT', 'BITB', 'SHIFT', 'LINDA', 'FLASH', 'VIB', 'REN', 'MTH', 'DCT', 'PEPECASH', 'SNC', 'XWC', 'IOC', 'YOYOW', 'ONION', 'ECC', 'SBD', 'BKX', 'NET', 'RFR', 'LET', 'SXDT', 'INT', 'SAFEX', 'OCN', 'CFI', 'EVX', 'ADT', 'XEL', 'DAT', 'FOTA', 'ATM', 'EDR', 'ZPT', 'ORME', 'MTN', 'CHSB', 'BPT', 'BLK', 'SIB', 'DIME', 'MOON', 'UQC', 'MER', 'NLC2', 'ZAP', 'DXT', 'DMD', 'MSP', 'ECA', 'DLT', 'ZCL', 'RVR', 'DAI', 'STK', 'NMR', 'SWM', 'STQ', 'XPM', 'ZSC', 'GRC', 'TRST', 'CAPP', 'RVN', 'GRID', 'ACAT', 'MDA', 'VRC', 'ARN', 'MUE', 'XTO', 'ELEC', 'MUSE', 'PASC', 'SLR', 'SWFTC', 'KEY', 'DADI', 'COLX', 'TIO', 'OMNI', 'ICOS', 'XSH', 'CV', 'QBT', 'QUN', 'BLT', 'LA', 'COSS', 'GETX', 'YEE', 'SOC', 'HMC', 'PZM', '1ST', 'TSL', 'LYM', 'XAUR', 'BITUSD', 'EXP', 'FRST', 'BMC', 'CAN', 'BCC', 'GUP', 'ALQO', 'PRO', 'FAIR', 'PRG', 'THC', 'OAX', 'RADS', 'BOT', 'BDG', 'TRUE', 'TAU', 'TIX', 'INCNT', 'ZOI', 'WCT', 'MINT', 'RISE', 'OCT', 'FLO', 'ENRG', 'OXY', 'DRT', 'SNOV', 'COV', 'XUC', 'MWAT', 'IXT', 'TGT', 'DBET', 'DTB', 'DNA', 'ALIS', 'RBY', 'CAT', 'IPL', 'NYC', 'UNIT', 'NEU', 'XRL', 'DIVX', 'RVT', 'STX', 'LMC', 'AIR', 'BSD', 'CLAM', 'ATN', 'DEB', 'CHP', 'PHR', 'AUR', 'POSW', 'TOA', 'XMY', 'MOT', 'LOC', 'GBX', 'PRA', 'SWT', 'TX', 'QAU', 'CSNO', 'IFT', 'OK', 'BBR', 'MUSIC', 'ATB', 'NEOS', 'MDT', 'BIS', 'CAS', 'EAC', 'B2B', 'FDX', 'DBIX', 'AURA', 'AIT', 'PUT', 'MYB', 'EVR', 'PLBT', 'HKN', 'TCC', 'EZT', 'XSPEC', 'GAM', 'TIME', 'NXC', 'HAC', 'COFI', 'FLDC', 'AC', 'WRC', 'POLIS', 'DIM', 'OTN', 'TFD', 'PTOY', 'SPF', 'TCT', 'ECOB', 'MEE', 'DICE', 'GOLOS', 'LUX', 'RNT', 'XLR', 'EKO', 'DYN', 'TIE', 'SYNX', 'BNTY', 'PST', 'MYST', 'ESP', 'BUN', 'SEQ', 'NVC', 'KRM', 'DOPE', 'XNK', 'AXP', 'BLUE', 'XST', 'ELIX', 'HGT', 'CAG', 'SPHR', 'PLU', 'COVAL', 'TKS', 'HOT', 'KB3', 'STAR', 'REBL', 'RMT', 'CXO', 'POLL', 'GRE', 'CVCOIN', 'PINK', 'USNBT', 'BCY', 'REM', 'MTX', 'CURE', 'HEAT', 'AVT', 'SXUT', 'PND', 'TUSD', 'HORSE', 'PIRL', 'GEO', 'IOP', 'INSTAR', 'EBTC', 'BWK', 'BAX', 'BTM', 'VOISE', 'DOT', 'GET', 'FRD', 'AID', 'BIO', 'SETH', 'PKT', 'XVC', 'ATMS', 'TFL', 'CAT', 'OBITS', 'BEZ', 'HYP', 'APX', 'PFR', 'BET', 'DRP', 'ARY', 'PARETO', 'IPBC', 'ABY', 'RC', 'ZLA', 'BRX', 'LIFE', 'QWARK', 'HWC', 'ERO', 'DNR', 'KORE', 'XBC', 'UFO', 'GMT', 'EXY', 'GAT', 'OPT', 'SNRG', 'EXCL', 'PTC', 'FLIXX', 'ADB', 'MONK', 'BTCZ', 'HUSH', 'ZRC', 'RIC', 'MEME', 'SCL', 'GRFT', '1337', 'SUMO', 'TIPS', 'MNTP', 'EVE', 'GLD', 'VTR', 'PBL', 'TRC', 'SLT', 'GCN', 'TBX', 'J8T', 'NIO', 'SEXC', 'UFR', 'LEDU', 'ERC', 'INXT', 'VIU', 'BTDX', 'REC', 'VRM', 'MCAP', 'BASH', 'VSL', 'NOTE', 'PBT', 'CPAY', 'LEV', 'PLAY', 'BPL', 'ZEIT', 'NOBL', 'VZT', 'BELA', 'FLIK', 'PRIX', 'ADST', 'XMCC', 'LOCI', 'TRF', 'ING', 'NKC', '2GIVE', 'CPY', 'AIX', 'BON', 'SHP', 'VSX', 'QRK', 'TRCT', 'CANN', 'HAT', 'PING', 'ODN', 'ALT', 'KZC', 'KRB', 'CRAVE', 'SPRTS', 'TZC', 'MTNC', 'INN', 'PUT', 'DTH', 'JIYO', 'ADC', 'BRK', 'CMPCO', 'ZER', 'SSS', 'BUZZ', 'HUC', 'WISH', 'MAG', 'CRED', 'FOR', 'GCR', 'SWIFT', 'SPR', 'CHC', 'BLITZ', 'PIX', 'EGC', 'EXRN', 'CRB', 'ATL', 'EBST', 'CREA', 'PIPL', 'RAIN', 'XGOX', 'TES', 'EMV', 'EFL', 'YOC', 'SAGA', 'LDOGE', 'QVT', 'SXC', 'AMM', 'LINX', 'IND', 'WTT', 'TRUST', 'CL', 'BTW', 'XMG', 'NKA', 'XFT', 'JC', 'DGPT', 'EFYT', 'ELLA', 'RUP', 'ZNY', 'SEND', 'WILD', 'MXT', 'RUPX', 'LCT', 'DFT', 'AU', 'SMS', 'GCC', 'TDX', 'ITNS', 'IC', 'PROC', 'PYLNT', 'ONG', 'UNB', 'EQT', 'MZC', 'ETBS', 'SKIN', 'SENSE', 'ADZ', 'STAK', 'UIS', 'STU', 'PHO', 'SMLY', 'HOLD', 'OCL', 'DP', 'MRJA', 'MAGE', 'PKB', 'PURE', 'GRWI', 'FYN', 'PLC', 'HXX', 'ELTCOIN', 'ARC', 'CRC', 'MRT', 'DAY', 'VIVO', 'DAR', 'JEW', 'IFLT', 'ACC', 'NSR', 'DEUS', 'METAL', 'FLT', '42', 'BBP', 'MBRS', 'XPTX', 'CDX', 'CDN', 'POP', 'BDL', 'WAND', 'FST', 'ARG', 'DRPU', 'MOIN', 'ACE', 'ZENI', 'UNIFY', 'LOG', 'XPD', 'MAX', 'KLN', 'DCY', 'CRM', 'ATS', 'SKC', 'BYC', 'FJC', 'CNT', 'BRIT', 'XLC', 'ARCT', 'DEM', 'GUN', 'RLT', 'START', 'LGD', 'PDC', 'EQL', 'BRO', 'BTCA', 'TROLL', 'CCRB', 'MANNA', 'KBR', 'BTA', 'SUR', 'DGC', 'DFS', 'ELE', 'ECASH', 'CPC', 'OPC', 'BXT', 'HPC', 'CJ', 'EPY', 'JET', 'BLZ', 'CTX', 'MOJO', 'EL', 'TRUMP', 'GLS', 'PXC', 'ARI', 'NETKO', 'QBIC', 'WHL', 'XCN', 'MNE', 'POST', 'TIG', 'ETG', 'PCN', 'MBI', 'ORE', 'EBCH', 'RBT', 'AERM', 'PNX', 'DAXX', 'MAO', 'BITSILVER', 'ONX', 'KUSH', 'XCPO', 'LCP', 'IETH', 'TIT', 'SCORE', 'ERC20', 'B@', 'TKR', 'CFT', 'GRLC', 'HVCO', 'SGR', 'TOKC', 'TEK', 'CCT', 'NTO', 'STN', 'ACC', 'XHI', 'BCF', 'CCO', 'PAK', 'TAG', 'BOLI', 'ZCG', 'QBC', 'XRA', 'GLC', 'BITGOLD', 'MCRN', 'HNC', 'FUNC', 'GTC', 'XCXT', 'ETHD', 'RED', 'LEA', 'RKC', 'C2', 'NEWB', 'VOT', 'ARCO', 'BOST', 'SDRN', 'DSR', 'CASH', 'PCOIN', 'LTB', 'SWING', '808', 'GOLF', 'ZZC', 'PLC', 'SHND', 'PXI', 'AMS', 'SOON', 'CON', 'HBC', 'EOT', 'SCS', 'LBTC', 'COAL', 'FLAX', 'SANDG', 'SH', 'CAB', 'ERY', 'VPRC', 'LUNA', 'EXN', 'XCO', 'MSCN', 'EAGLE', 'SONG', 'KRONE', 'CNNC', 'ARB', 'LTCU', 'WOMEN', 'GBC', 'ACP', 'VRS', 'PRC', 'NANOX', 'ARGUS', 'CONX', 'HMC', 'DMB', 'AI', 'PPY', 'KLC', 'NVST', 'RMC', 'HDG', 'ART', 'CREDO', 'ECN', 'BQ', 'HBT', 'CHIPS', 'NTRN', 'PGL', 'ASTRO', 'EVC', 'VTA', 'XNN', 'STA', 'DOVU', 'REX', 'UNY', 'ETT', 'BLU', 'IXC', 'ZEPH', 'GOOD', 'GJC', 'CARBON', 'BBT', 'REAL', 'FYP', 'CBX', 'TRIA', 'AHT', 'LEAF', 'STRC', 'YASH', 'V', 'FUCK', 'RNS', 'ORB', 'WDC', 'UNI', 'INSN', 'ZET', 'KEK', 'NDC', 'ICOO', 'BPC', 'INPAY', 'SHORTY', 'SDC', 'TTC', 'SCT', 'HTC', 'ANC', 'I0C', 'HERO', 'Q2C', 'USC', 'NET', 'KOBO', 'FCN', 'HBN', 'RIYA', 'PIGGY', 'ESZ', 'BITS', 'UNIC', 'BTCS', 'MEC', 'MAC', 'GRIM', 'ITI', 'TRI', 'ITT', 'RUSTBITS', 'FIMK', 'HODL', 'CV2', 'SMC', 'BTCR', 'FC2', 'BTB', 'TALK', 'LANA', 'EBET', 'GAIA', 'VAL', 'XBL', 'UTC', 'XGR', 'VISIO', 'ENT', 'NYAN', 'VIDZ', 'SIGT', 'LNK', 'WAY', 'BITBTC', 'XJO', 'KURT', 'FLY', 'AMMO', 'HAL', 'BIGUP', 'BTWTY', 'CUBE', 'WGO', 'DRXNE', 'OPAL', 'GB', 'BUCKS', '8BIT', 'CNO', 'BTG', 'BLOCKPAY', 'AMBER', 'SLG', 'MOTO', 'BLC', 'ABJ', 'XPY', 'PR', 'DSH', 'SAC', 'TRK', 'BTCRED', 'MAD', 'CHESS', 'SRC', 'MARS', 'SUPER', 'TGC', 'DDF', 'CRX', 'OTX', 'VC', 'GAP', 'CCN', 'PX', 'PHS', 'TSE', 'ICN', 'MNM', 'NEVA', 'DTC', 'BITZ', 'RBIES', 'EVIL', 'DIX', 'CYP', 'EMD', 'ATOM', 'SPEX', 'FRC', 'UNITS', 'KAYI', 'BERN', 'SPACE', 'NUKO', 'SHDW', 'XVP', 'XCT', 'STV', 'XIOS', 'DLC', 'CFD', 'IRL', 'PASL', 'ECO', '888', 'XRE', 'BSTY', 'KED', 'CAT', 'HONEY', 'JIN', 'YTN', 'GLT', 'AIB', 'ZUR', 'INFX', 'IMS', 'DUO', 'ISL', 'BITEUR', '300', 'CHAN', 'SCRT', 'ASAFE2', 'RPC', 'YAC', 'ICOB', 'EVO', 'GUESS', 'BUMBA', 'IMX', 'REE', 'MAY', 'BRAT', 'FIRE', 'QTL', 'VUC', 'VLT', 'EUC', 'DALC', 'XNG', 'XBTS', 'MST', 'FUZZ', '611', 'DRS', 'XCRE', 'XBTC21', 'GPU', 'TRDT', '$$$', 'SOJ', 'TAJ', 'GCC', 'HMP', 'FRK', 'CACH', 'BSTAR', 'ANTI', 'SOIL', 'ACOIN', 'WARP', 'J', 'ELC', 'CPN', 'ZMC', 'BIP', 'MAR', 'ADCN', 'CF', 'MNC', 'SPT', 'BRIA', 'CXT', 'ALL', 'POS', 'ROOFS', 'GP', 'BENJI', 'BTPL', 'CMT', 'MTLMC3', 'PRX', 'ICE', 'DBTC', 'NRO', 'BLN', 'STARS', 'GPL', 'BAS', 'CESC', 'BLRY', 'BNX', 'FNC', 'MDC', 'LTCR', 'VIP', 'ZYD', 'DLISK', 'CTO', 'ATX', 'MND', 'RBX', 'URO', 'ICON', 'NTWK', 'BTQ', 'PULSE', 'SLEVIN', 'QCN', 'WORM', 'BXC', 'PONZI', 'RIDE', 'KNC', 'SFC', 'ALTCOM', 'PIE', 'WBB', 'URC', 'BSC', 'JWL', 'EGO', 'G3N', 'ORLY', 'UET', 'STEPS', 'BIOS', 'RSGP', 'RMC', 'CWXT', 'IMPS', 'VEC2', 'PEX', 'GEERT', 'DES', 'DRM', 'LIR', 'MILO', 'JOBS', 'TAGR', 'ZNE', 'BRAIN', 'CRT', 'PLNC', 'DOLLAR', 'OS76', 'PLACO', 'JS', 'BOAT', 'OFF', 'CRDNC', 'VOLT', 'TOR', 'ALTC', 'COXST', 'XOC', 'SDP', 'XRC', 'CTIC3', 'IBANK', 'SOCC', 'ELS', 'BIOB', 'P7C', 'NODC', 'FXE', 'COUPE', 'SLFI', 'CREVA', 'ULA', 'MGM', 'CTIC2', 'GSR', 'CALC', 'SLM', 'VLTC', 'TYCHO', 'LVPS', 'PIZZA', 'DGCS', 'ABN', 'TSTR', 'CCM100', 'DIBC', 'EBT', 'WAN', 'HT', 'ATMC', 'EKT', 'ELA', 'BBN', 'OC', 'RUFF', 'DRG', 'AIDOC', 'CHAT', 'EPC', 'W3C', 'UP', 'TOPC', 'WIC', 'BCD', 'NOAH', 'UGC', 'HPY', 'RCT', 'OF', 'LBTC', 'AAC', 'NPXS', 'SHOW', 'TEN', 'AVH', 'STC', 'MOF', 'MAN', 'FRGC', 'HLC', '1WO', 'OCC', 'SSC', 'BANCA', 'GLA', 'XTZ', 'TOMO', 'BTCP', 'MAG', 'UGT', 'WC', 'KCASH', 'UBTC', 'AWR', 'IQT', 'CLUB', 'LIGHT', 'FAIR', 'BITG', 'NANJ', 'LGO', 'ADK', 'SBTC', 'XIN', 'VLC', 'AMLT', 'DMT', 'NTK', 'CFUN', 'DROP', 'IDT', 'FIL', 'BSR', '$PAC', 'REF', 'READ', 'BCX', 'LCC', 'CAN', 'CMS', 'CENNZ', 'MOAC', 'MGC', 'EAG', 'SWTC', 'BIG', 'MLM', 'WETH', 'GEM', 'CMS', 'BEE', 'XID', 'LATX', 'UIP', 'BFT', 'ECH', 'QUBE', 'HIRE', 'IPC', 'B2X', 'SBC', 'FLUZ', 'PRS', 'MSD', 'SHIP', 'THS', 'MVC', 'BCDN', 'ZENGOLD', 'NMS', 'BT2', 'TOK', 'BAR', 'NXX', 'DATX', 'NPX', 'IDXM', 'ENT', 'SIC', 'CANDY', 'XIN', 'TMC', 'TOKEN', 'HQX', 'ACC', 'BCA', 'COR', 'PCS', 'GCS', 'LALA', 'WA', 'CSC', 'GBG', 'ETT', 'MCR', 'OX', 'HC', 'ACES', 'CLD', 'STAC', 'VULC', 'BITCF', 'PRES', 'ABC', 'IFC', 'ANI', 'CEFS', 'TESLA', 'ELITE', 'XRY', 'EDRC', 'TER', 'RBBT', 'XQN', 'SND', 'DAV', 'TCOIN', 'GARY', 'ZBC', 'BIT', 'TODAY', 'GOD', 'UTT', 'ESC', 'AKY', 'SLOTH', 'BTCM', 'CC', 'XOT', 'DMC', 'AV', 'NEOG', 'RICHX', 'FLAP', 'OP', 'FONZ', 'GDC', 'BLAZR', 'BSN', 'SJW', 'SUP', 'INDI', 'NAMO', 'BET', 'SJCX', 'CYDER', 'SPK', 'UNITY', 'WSX', 'SHA', 'FRN', 'MARX', 'FAZZ', 'GRX', 'CFC', 'SKR', 'QBT', 'MINEX', 'CME', 'HIGH', 'WOW', 'RYZ', 'BAT', 'DON', 'FID', 'VASH', 'MONETA', 'DBG', 'XSTC', 'INDIA', 'LDCN', 'HCC', 'CRYPT', 'ACN', 'REGA', 'APC', 'STEX', 'LEVO', 'ZSE', 'PLX', 'DUTCH', 'PAYP', 'HDLB', 'BTE', 'LEPEN', 'SNAKE', 'NOX', 'SISA', 'FAP', 'GML', 'TOPAZ', 'WIC', 'PRM', 'LKC', 'SMOKE', 'HYPER', 'FRWC', 'UR', 'WINK', 'EGG', 'SAK', 'BEST', 'SKULL', 'PRN', 'NUMUS', 'HALLO', 'BTBc', 'POKE', 'BIRDS', 'LTH', 'MBL', 'ANTX', 'GAY', 'RUNNERS', 'XTD', 'PRIMU', 'LAZ', 'KDC', 'ROYAL', 'TLE', 'TELL', 'BITOK', 'NTC', 'ASN', 'SPORT', 'CMP', 'GRN', 'DASHS', 'TURBO', 'OMC', 'AXIOM', 'FUTC', 'VOYA', 'UNRC', 'RUBIT', 'SFE', 'HNC', 'MAGN', 'XVE', 'BAC', 'X2', 'DISK', 'OPES', 'DUB', 'CYC', 'IVZ', 'GAIN', 'DCRE', 'PSY', 'TEAM', 'SHELL', 'MMXVI', 'NBIT', 'TRICK', 'RCN', 'EGOLD', 'QORA', 'TOP', 'GMX', 'XID', 'PDG', 'RHFC', 'CHEAP', 'SIGMA', 'LLT', 'MCI', 'SAY', 'KARMA', 'XAU', 'UNC', 'MEDIC', 'BUB', 'TCR', 'OCOW', 'KASHH', 'INF', 'FRCT', 'XMRG'"]}],[{"start":{"row":9,"column":11848},"end":{"row":9,"column":11849},"action":"insert","lines":[","],"id":11}],[{"start":{"row":9,"column":4926},"end":{"row":9,"column":4927},"action":"insert","lines":["]"],"id":12}],[{"start":{"row":9,"column":4927},"end":{"row":9,"column":4928},"action":"remove","lines":[" "],"id":13},{"start":{"row":9,"column":4927},"end":{"row":10,"column":0},"action":"insert","lines":["",""]},{"start":{"row":10,"column":0},"end":{"row":10,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":10,"column":4},"end":{"row":11,"column":0},"action":"insert","lines":["",""],"id":14},{"start":{"row":11,"column":0},"end":{"row":11,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":11,"column":4},"end":{"row":11,"column":6},"action":"insert","lines":["  "],"id":15}],[{"start":{"row":11,"column":6},"end":{"row":11,"column":7},"action":"insert","lines":["["],"id":16}],[{"start":{"row":11,"column":5025},"end":{"row":11,"column":5026},"action":"insert","lines":["]"],"id":17}],[{"start":{"row":11,"column":5027},"end":{"row":12,"column":0},"action":"insert","lines":["",""],"id":18},{"start":{"row":12,"column":0},"end":{"row":12,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":12,"column":6},"end":{"row":13,"column":0},"action":"insert","lines":["",""],"id":19},{"start":{"row":13,"column":0},"end":{"row":13,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":13,"column":6},"end":{"row":13,"column":7},"action":"insert","lines":["["],"id":20}],[{"start":{"row":11,"column":6},"end":{"row":11,"column":7},"action":"insert","lines":["@"],"id":21}],[{"start":{"row":11,"column":7},"end":{"row":11,"column":8},"action":"insert","lines":["M"],"id":22}],[{"start":{"row":11,"column":8},"end":{"row":11,"column":9},"action":"insert","lines":["Y"],"id":23}],[{"start":{"row":11,"column":8},"end":{"row":11,"column":9},"action":"remove","lines":["Y"],"id":24}],[{"start":{"row":11,"column":7},"end":{"row":11,"column":8},"action":"remove","lines":["M"],"id":25}],[{"start":{"row":11,"column":7},"end":{"row":11,"column":8},"action":"insert","lines":["m"],"id":26}],[{"start":{"row":11,"column":8},"end":{"row":11,"column":9},"action":"insert","lines":["y"],"id":27}],[{"start":{"row":11,"column":9},"end":{"row":11,"column":10},"action":"insert","lines":["_"],"id":28}],[{"start":{"row":11,"column":10},"end":{"row":11,"column":11},"action":"insert","lines":["c"],"id":29},{"start":{"row":11,"column":11},"end":{"row":11,"column":12},"action":"insert","lines":["o"]},{"start":{"row":11,"column":12},"end":{"row":11,"column":13},"action":"insert","lines":["i"]}],[{"start":{"row":11,"column":13},"end":{"row":11,"column":14},"action":"insert","lines":["n"],"id":30}],[{"start":{"row":11,"column":14},"end":{"row":11,"column":15},"action":"insert","lines":["2"],"id":31}],[{"start":{"row":11,"column":15},"end":{"row":11,"column":16},"action":"insert","lines":[" "],"id":32}],[{"start":{"row":11,"column":16},"end":{"row":11,"column":17},"action":"insert","lines":["="],"id":33},{"start":{"row":11,"column":17},"end":{"row":11,"column":18},"action":"insert","lines":[" "]}],[{"start":{"row":13,"column":5},"end":{"row":13,"column":6},"action":"insert","lines":["@"],"id":34}],[{"start":{"row":13,"column":6},"end":{"row":13,"column":7},"action":"insert","lines":["m"],"id":35}],[{"start":{"row":13,"column":7},"end":{"row":13,"column":8},"action":"insert","lines":["y"],"id":36}],[{"start":{"row":13,"column":8},"end":{"row":13,"column":9},"action":"insert","lines":["_"],"id":37}],[{"start":{"row":13,"column":9},"end":{"row":13,"column":10},"action":"insert","lines":["c"],"id":38},{"start":{"row":13,"column":10},"end":{"row":13,"column":11},"action":"insert","lines":["o"]}],[{"start":{"row":13,"column":11},"end":{"row":13,"column":12},"action":"insert","lines":["i"],"id":39}],[{"start":{"row":13,"column":12},"end":{"row":13,"column":13},"action":"insert","lines":["n"],"id":40}],[{"start":{"row":13,"column":13},"end":{"row":13,"column":14},"action":"insert","lines":["3"],"id":41}],[{"start":{"row":13,"column":14},"end":{"row":13,"column":15},"action":"insert","lines":[" "],"id":42}],[{"start":{"row":13,"column":15},"end":{"row":13,"column":16},"action":"insert","lines":["="],"id":43},{"start":{"row":13,"column":16},"end":{"row":13,"column":17},"action":"insert","lines":[" "]}],[{"start":{"row":13,"column":16},"end":{"row":13,"column":17},"action":"remove","lines":[" "],"id":44}],[{"start":{"row":11,"column":5024},"end":{"row":11,"column":5037},"action":"remove","lines":["'DMT', 'NTK',"],"id":45}],[{"start":{"row":11,"column":5023},"end":{"row":11,"column":5024},"action":"remove","lines":[" "],"id":46}],[{"start":{"row":13,"column":18},"end":{"row":13,"column":31},"action":"insert","lines":["'DMT', 'NTK',"],"id":47}],[{"start":{"row":13,"column":31},"end":{"row":13,"column":32},"action":"insert","lines":[" "],"id":48}],[{"start":{"row":9,"column":310},"end":{"row":9,"column":316},"action":"remove","lines":["'BTM',"],"id":49}],[{"start":{"row":9,"column":309},"end":{"row":9,"column":310},"action":"remove","lines":[" "],"id":50}],[{"start":{"row":5,"column":52},"end":{"row":5,"column":53},"action":"insert","lines":["?"],"id":51}],[{"start":{"row":5,"column":53},"end":{"row":5,"column":54},"action":"insert","lines":["l"],"id":52}],[{"start":{"row":5,"column":54},"end":{"row":5,"column":55},"action":"insert","lines":["i"],"id":53}],[{"start":{"row":5,"column":55},"end":{"row":5,"column":56},"action":"insert","lines":["m"],"id":54}],[{"start":{"row":5,"column":56},"end":{"row":5,"column":57},"action":"insert","lines":["i"],"id":55}],[{"start":{"row":5,"column":57},"end":{"row":5,"column":58},"action":"insert","lines":["t"],"id":56}],[{"start":{"row":5,"column":58},"end":{"row":5,"column":59},"action":"insert","lines":["="],"id":57}],[{"start":{"row":5,"column":59},"end":{"row":5,"column":60},"action":"insert","lines":["0"],"id":58}],[{"start":{"row":11,"column":5023},"end":{"row":13,"column":18},"action":"remove","lines":["] ","      ","     @my_coin3 = ["],"id":59},{"start":{"row":11,"column":5023},"end":{"row":11,"column":5024},"action":"insert","lines":[" "]}],[{"start":{"row":9,"column":4919},"end":{"row":11,"column":19},"action":"remove","lines":["]","    ","      @my_coin2 = ["],"id":60},{"start":{"row":9,"column":4919},"end":{"row":9,"column":4920},"action":"insert","lines":[" "]}],[{"start":{"row":9,"column":7251},"end":{"row":9,"column":7258},"action":"remove","lines":[" 'NET',"],"id":61}],[{"start":{"row":9,"column":2589},"end":{"row":9,"column":2595},"action":"remove","lines":["'HMC',"],"id":62}],[{"start":{"row":9,"column":2588},"end":{"row":9,"column":2589},"action":"remove","lines":[" "],"id":63}],[{"start":{"row":9,"column":2657},"end":{"row":9,"column":2663},"action":"remove","lines":["'CAN',"],"id":64}],[{"start":{"row":9,"column":2656},"end":{"row":9,"column":2657},"action":"remove","lines":[" "],"id":65}],[{"start":{"row":9,"column":2686},"end":{"row":9,"column":2693},"action":"remove","lines":["'FAIR',"],"id":66}],[{"start":{"row":9,"column":2685},"end":{"row":9,"column":2686},"action":"remove","lines":[" "],"id":67}],[{"start":{"row":9,"column":2907},"end":{"row":9,"column":2913},"action":"remove","lines":["'CAT',"],"id":69}],[{"start":{"row":9,"column":2906},"end":{"row":9,"column":2907},"action":"remove","lines":[" "],"id":70}],[{"start":{"row":9,"column":3963},"end":{"row":9,"column":3969},"action":"remove","lines":["'BET',"],"id":71}],[{"start":{"row":9,"column":3962},"end":{"row":9,"column":3963},"action":"remove","lines":[" "],"id":72}],[{"start":{"row":9,"column":5141},"end":{"row":9,"column":5147},"action":"remove","lines":["'GCC',"],"id":73}],[{"start":{"row":9,"column":5140},"end":{"row":9,"column":5141},"action":"remove","lines":[" "],"id":74}],[{"start":{"row":9,"column":6476},"end":{"row":9,"column":6483},"action":"remove","lines":["'PLC', "],"id":75}],[{"start":{"row":9,"column":10299},"end":{"row":9,"column":10303},"action":"remove","lines":["'ACC"],"id":76}],[{"start":{"row":9,"column":10300},"end":{"row":9,"column":10301},"action":"remove","lines":[","],"id":77}],[{"start":{"row":9,"column":10299},"end":{"row":9,"column":10300},"action":"remove","lines":["'"],"id":78},{"start":{"row":9,"column":10298},"end":{"row":9,"column":10299},"action":"remove","lines":[" "]},{"start":{"row":9,"column":10297},"end":{"row":9,"column":10298},"action":"remove","lines":[","]}],[{"start":{"row":9,"column":10297},"end":{"row":9,"column":10298},"action":"insert","lines":[","],"id":79}],[{"start":{"row":9,"column":5426},"end":{"row":9,"column":5432},"action":"remove","lines":["'ACC',"],"id":80}],[{"start":{"row":9,"column":5425},"end":{"row":9,"column":5426},"action":"remove","lines":[" "],"id":81}],[{"start":{"row":9,"column":5867},"end":{"row":9,"column":5874},"action":"remove","lines":["'BLZ', "],"id":82}],[{"start":{"row":9,"column":6296},"end":{"row":9,"column":6303},"action":"remove","lines":["'HNC', "],"id":83}],[{"start":{"row":9,"column":5343},"end":{"row":9,"column":5349},"action":"remove","lines":["'PLC',"],"id":84}],[{"start":{"row":9,"column":5342},"end":{"row":9,"column":5343},"action":"remove","lines":[" "],"id":85}],[{"start":{"row":9,"column":6506},"end":{"row":9,"column":6514},"action":"remove","lines":["'LBTC', "],"id":86}],[{"start":{"row":9,"column":6701},"end":{"row":9,"column":6707},"action":"remove","lines":["'HMC',"],"id":87}],[{"start":{"row":9,"column":6700},"end":{"row":9,"column":6701},"action":"remove","lines":[" "],"id":88}],[{"start":{"row":9,"column":6736},"end":{"row":9,"column":6743},"action":"remove","lines":["'RMC', "],"id":89}],[{"start":{"row":9,"column":6862},"end":{"row":9,"column":6869},"action":"remove","lines":["'ETT', "],"id":90}],[{"start":{"row":9,"column":2049},"end":{"row":9,"column":2055},"action":"remove","lines":["'NET',"],"id":91}],[{"start":{"row":9,"column":2048},"end":{"row":9,"column":2049},"action":"remove","lines":[" "],"id":92}],[{"start":{"row":9,"column":7384},"end":{"row":9,"column":7391},"action":"remove","lines":["'ENT', "],"id":93}],[{"start":{"row":9,"column":1797},"end":{"row":9,"column":1804},"action":"remove","lines":["'GTC', "],"id":94}],[{"start":{"row":9,"column":3905},"end":{"row":9,"column":3912},"action":"remove","lines":["'CAT', "],"id":95}],[{"start":{"row":9,"column":7986},"end":{"row":9,"column":7993},"action":"remove","lines":["'CAT', "],"id":96}],[{"start":{"row":9,"column":2384},"end":{"row":9,"column":2386},"action":"insert","lines":["''"],"id":97}],[{"start":{"row":9,"column":2385},"end":{"row":9,"column":2386},"action":"insert","lines":["C"],"id":98},{"start":{"row":9,"column":2386},"end":{"row":9,"column":2387},"action":"insert","lines":["A"]},{"start":{"row":9,"column":2387},"end":{"row":9,"column":2388},"action":"insert","lines":["T"]}],[{"start":{"row":9,"column":2389},"end":{"row":9,"column":2390},"action":"insert","lines":[","],"id":99}],[{"start":{"row":9,"column":2390},"end":{"row":9,"column":2391},"action":"insert","lines":[" "],"id":100}],[{"start":{"row":9,"column":11015},"end":{"row":9,"column":11021},"action":"remove","lines":["'WIC',"],"id":101}],[{"start":{"row":9,"column":11014},"end":{"row":9,"column":11015},"action":"remove","lines":[" "],"id":102}],[{"start":{"row":9,"column":9761},"end":{"row":9,"column":9767},"action":"remove","lines":["'XIN',"],"id":103}],[{"start":{"row":9,"column":9760},"end":{"row":9,"column":9761},"action":"remove","lines":[" "],"id":104}],[{"start":{"row":9,"column":9871},"end":{"row":9,"column":9877},"action":"remove","lines":["'CMS',"],"id":105}],[{"start":{"row":9,"column":9870},"end":{"row":9,"column":9871},"action":"remove","lines":[" "],"id":106}],[{"start":{"row":9,"column":406},"end":{"row":9,"column":407},"action":"insert","lines":[" "],"id":107}],[{"start":{"row":9,"column":406},"end":{"row":9,"column":407},"action":"remove","lines":[" "],"id":108}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":9,"column":406},"end":{"row":9,"column":406},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":true,"wrapToView":true},"firstLineState":0},"timestamp":1521861723838}