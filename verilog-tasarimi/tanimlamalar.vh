
// RV32IMCX Buyruklari
`define ADD        32'b0000000??????????000?????0110011
`define ADDI       32'b?????????????????000?????0010011
`define AND        32'b0000000??????????111?????0110011
`define ANDI       32'b?????????????????111?????0010011
`define AUIPC      32'b?????????????????????????0010111
`define BEQ        32'b?????????????????000?????1100011
`define BGE        32'b?????????????????101?????1100011
`define BGEU       32'b?????????????????111?????1100011
`define BLT        32'b?????????????????100?????1100011
`define BLTU       32'b?????????????????110?????1100011
`define BNE        32'b?????????????????001?????1100011

`define C_ADD      32'b0000000000000000_1001??????????10
`define C_ADDI     32'b0000000000000000_000???????????01
`define C_ADDI16SP 32'b0000000000000000_011?00010?????01
`define C_ADDI4SPN 32'b0000000000000000_000???????????00
`define C_AND      32'b0000000000000000_100011???11???01
`define C_ANDI     32'b0000000000000000_100?10????????01
`define C_BEQZ     32'b0000000000000000_110???????????01
`define C_BNEZ     32'b0000000000000000_111???????????01
`define C_EBREAK   32'b0000000000000000_1001000000000010
`define C_J        32'b0000000000000000_101???????????01
`define C_JAL      32'b0000000000000000_001???????????01
`define C_JALR     32'b0000000000000000_1001?????0000010
`define C_JR       32'b0000000000000000_1000?????0000010
`define C_LI       32'b0000000000000000_010???????????01
`define C_LUI      32'b0000000000000000_011???????????01
`define C_LW       32'b0000000000000000_010???????????00
`define C_LWSP     32'b0000000000000000_010???????????10
`define C_MV       32'b0000000000000000_1000??????????10
`define C_NOP      32'b0000000000000000_000?00000?????01
`define C_OR       32'b0000000000000000_100011???10???01
`define C_SLLI     32'b0000000000000000_0000??????????10
`define C_SRAI     32'b0000000000000000_100001????????01
`define C_SRLI     32'b0000000000000000_100000????????01
`define C_SUB      32'b0000000000000000_100011???00???01
`define C_SW       32'b0000000000000000_110???????????00
`define C_SWSP     32'b0000000000000000_110???????????10
`define C_XOR      32'b0000000000000000_100011???01???01

`define DIV        32'b0000001??????????100?????0110011
`define DIVU       32'b0000001??????????101?????0110011
`define EBREAK     32'b00000000000100000000000001110011
`define ECALL      32'b00000000000000000000000001110011
`define FENCE      32'b?????????????????000?????0001111
`define FENCE_I    32'b?????????????????001?????0001111
`define JAL        32'b?????????????????????????1101111
`define JALR       32'b?????????????????000?????1100111
`define LB         32'b?????????????????000?????0000011
`define LBU        32'b?????????????????100?????0000011
`define LH         32'b?????????????????001?????0000011
`define LHU        32'b?????????????????101?????0000011
`define LUI        32'b?????????????????????????0110111
`define LW         32'b?????????????????010?????0000011
`define MUL        32'b0000001??????????000?????0110011
`define MULH       32'b0000001??????????001?????0110011
`define MULHSU     32'b0000001??????????010?????0110011
`define MULHU      32'b0000001??????????011?????0110011
`define OR         32'b0000000??????????110?????0110011
`define ORI        32'b?????????????????110?????0010011
`define REM        32'b0000001??????????110?????0110011
`define REMU       32'b0000001??????????111?????0110011
`define SB         32'b?????????????????000?????0100011
`define SH         32'b?????????????????001?????0100011
`define SLL        32'b0000000??????????001?????0110011
`define SLLI       32'b0000000??????????001?????0010011
`define SLT        32'b0000000??????????010?????0110011
`define SLTI       32'b?????????????????010?????0010011
`define SLTIU      32'b?????????????????011?????0010011
`define SLTU       32'b0000000??????????011?????0110011
`define SRA        32'b0100000??????????101?????0110011
`define SRAI       32'b0100000??????????101?????0010011
`define SRL        32'b0000000??????????101?????0110011
`define SRLI       32'b0000000??????????101?????0010011
`define SUB        32'b0100000??????????000?????0110011
`define SW         32'b?????????????????010?????0100011
`define XOR        32'b0000000??????????100?????0110011
`define XORI       32'b?????????????????100?????0010011

`define HMDST      32'b0000101_?????_?????_001_?????_0110011
`define PKG        32'b0000100_?????_?????_100_?????_0110011
`define RVRS       32'b011010111000_?????_101_?????_0010011
`define SLADD      32'b0010000_?????_?????_010_?????_0110011
`define CNTZ       32'b0110000_00001_?????_001_?????_0010011
`define CNTP       32'b0110000_00010_?????_001_?????_0010011

`define CONV_LD_W  32'b?_000000_?????_?????_010_00000_0001011
`define CONV_CLR_W 32'b0000000_00000_00000_011_00000_0001011
`define CONV_LD_X  32'b?_000000_?????_?????_000_00000_0001011
`define CONV_CLR_X 32'b0000000_00000_00000_001_00000_0001011
`define CONV_RUN   32'b0000000_00000_00000_100_?????_0001011

// op ve funclarin tum bitlerine bakmamak guvenli mi?
// Cozulmesi gereken bitler 14 bit 30:29, 27, 25, 21:20, 14:12, 6:2
`define BUYRUK_COZ_BIT 14

`define EBREAK_COZ		14'b00000100011100
`define ECALL_COZ		14'b00000000011100
`define CONV_CLR_W_COZ	14'b00000001100010
`define CONV_CLR_X_COZ	14'b00000000100010
`define CONV_RUN_COZ	14'b00000010000010
`define RVRS_COZ		14'b11110010100100
`define CNTZ_COZ		14'b11000100100100
`define CNTP_COZ		14'b11001000100100
`define CONV_LD_W_COZ	14'b0000??01000010
`define CONV_LD_X_COZ	14'b0000??00000010
`define ADD_COZ		    14'b0000??00001100
`define AND_COZ		    14'b0000??11101100
`define DIV_COZ		    14'b0001??10001100
`define DIVU_COZ		14'b0001??10101100
`define MUL_COZ		    14'b0001??00001100
`define MULH_COZ		14'b0001??00101100
`define MULHSU_COZ		14'b0001??01001100
`define MULHU_COZ		14'b0001??01101100
`define OR_COZ		    14'b0000??11001100
`define REM_COZ		    14'b0001??11001100
`define REMU_COZ		14'b0001??11101100
`define SLL_COZ		    14'b0000??00101100
`define SLT_COZ		    14'b0000??01001100
`define SLTU_COZ		14'b0000??01101100
`define SRA_COZ		    14'b1000??10101100
`define SRL_COZ		    14'b0000??10101100
`define SUB_COZ		    14'b1000??00001100
`define XOR_COZ		    14'b0000??10001100
`define HMDST_COZ		14'b0011??00101100
`define PKG_COZ		    14'b0010??10001100
`define SLADD_COZ		14'b0100??01001100
`define SLLI_COZ		14'b000???00100100
`define SRAI_COZ		14'b100???10100100
`define SRLI_COZ		14'b000???10100100
`define ADDI_COZ		14'b??????00000100
`define ANDI_COZ		14'b??????11100100
`define BEQ_COZ		    14'b??????00011000
`define BGE_COZ		    14'b??????10111000
`define BGEU_COZ		14'b??????11111000
`define BLT_COZ		    14'b??????10011000
`define BLTU_COZ		14'b??????11011000
`define BNE_COZ		    14'b??????00111000
`define FENCE_COZ		14'b??????00000011
`define FENCE_I_COZ		14'b??????00100011
`define JALR_COZ		14'b??????00011001
`define LB_COZ		    14'b??????00000000
`define LBU_COZ		    14'b??????10000000
`define LH_COZ		    14'b??????00100000
`define LHU_COZ		    14'b??????10100000
`define LW_COZ		    14'b??????01000000
`define ORI_COZ		    14'b??????11000100
`define SB_COZ		    14'b??????00001000
`define SH_COZ		    14'b??????00101000
`define SLTI_COZ		14'b??????01000100
`define SLTIU_COZ		14'b??????01100100
`define SW_COZ		    14'b??????01001000
`define XORI_COZ		14'b??????10000100
`define AUIPC_COZ		14'b?????????00101
`define JAL_COZ		    14'b?????????11011
`define LUI_COZ		    14'b?????????01101

`define GECERSIZ 18'b00000_0_000000000

//////////// Mikro islemler
`define GERIYAZ   01:00
`define YAZMAC    02:02
`define OPERAND   04:03
`define BIRIM     07:05
`define DAL       10:08
`define AMB       14:11
`define BOLME     16:15
`define CARPMA    18:17
`define BIB       21:19
`define SIFRELEME 24:22
`define CONV      27:25

`define MI_BIT 28

`define GERIYAZ_KAYNAK_BIB    2'd0
`define GERIYAZ_KAYNAK_YURUT  2'd1
`define GERIYAZ_KAYNAK_PC     2'd2
`define GERIYAZ_KAYNAK_YOK    2'd?

`define YAZMAC_YAZMA 1'b0
`define YAZMAC_YAZ   1'b1

`define OPERAND_REG      2'b00 // Yurut'e giden deger1 ve deger2'yi secmek icin.
`define OPERAND_IMM      2'b01 // deger2 <- imm
`define OPERAND_PC       2'b10 // deger1 <- pc
`define OPERAND_PCIMM    2'b11 // deger2 <- imm ve deger1 <- pc

`define BIRIM_AMB        3'h0
`define BIRIM_CARPMA     3'h1
`define BIRIM_BOLME      3'h2
`define BIRIM_SIFRELEME  3'h3
`define BIRIM_YAPAYZEKA  3'h4
`define BIRIM_BIB        3'h5
`define BIRIM_SISTEM     3'h6

`define DAL_EQ     3'b000
`define DAL_NE     3'b001
`define DAL_LT     3'b010
`define DAL_GE     3'b011
`define DAL_LTU    3'b100
`define DAL_GEU    3'b101
`define DAL_JAL    3'b110 // jalr nin aynisi
`define DAL_JALR   3'b110 // jal in aynisi
`define DAL_YOK    3'h111 // Kesin deger almali. 3'hx ya da 3'h? olmamali. Surekli okunan bir deger.

`define AMB_TOPLAMA  4'h0
`define AMB_CIKARMA  4'h1
`define AMB_XOR      4'h2
`define AMB_OR       4'h3
`define AMB_AND      4'h4
`define AMB_SLL      4'h5
`define AMB_SRL      4'h6
`define AMB_SRA      4'h7
`define AMB_SLT      4'h8
`define AMB_SLTU     4'h9
`define AMB_GECIR    4'ha // deger2 yi aynen gecirsin. sonuc = deger2. LUI icin gerekli
`define AMB_YOK      4'h? // Eger BIRIM_AMB degilse icerde ne oldugu onemsiz

`define BOLME_DIV   2'h0
`define BOLME_DIVU  2'h1
`define BOLME_REM   2'h2
`define BOLME_REMU  2'h3
`define BOLME_YOK   2'h? // Eger BIRIM_BOLME degilse icerde ne oldugu onemsiz

`define CARPMA_MUL    2'h0
`define CARPMA_MULH   2'h1
`define CARPMA_MULHSU 2'h2
`define CARPMA_MULHU  2'h3
`define CARPMA_YOK    2'h?? // Eger BIRIM_CARPMA degilse icerde ne oldugu onemsiz

`define BIB_LB        3'h0
`define BIB_LBU       3'h1
`define BIB_LH        3'h2
`define BIB_LHU       3'h3
`define BIB_LW        3'h4
`define BIB_SB        3'h5
`define BIB_SH        3'h6
`define BIB_SW        3'h7
`define BIB_YOK       3'h? // Eger BIRIM_BIB degilse icerde ne oldugu onemsiz

`define SIFRELEME_HMDST     3'h0
`define SIFRELEME_PKG       3'h1
`define SIFRELEME_RVRS      3'h2
`define SIFRELEME_SLADD     3'h3
`define SIFRELEME_CNTZ      3'h4
`define SIFRELEME_CNTP      3'h5
`define SIFRELEME_YOK       3'h? //Eger BIRIM_SIFRELEME degilse icerde ne oldugu onemsiz

`define YZH_LD_W   3'h0
`define YZH_CLR_W  3'h1
`define YZH_LD_X   3'h2
`define YZH_CLR_X  3'h3
`define YZH_RUN    3'h4
`define YZH_YOK    3'h? //Eger BIRIM_CONV degilse icerde ne oldugu onemsiz

`define ADD_MI   {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_TOPLAMA, `DAL_YOK, `BIRIM_AMB, `OPERAND_REG,   `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define SUB_MI   {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_CIKARMA, `DAL_YOK, `BIRIM_AMB, `OPERAND_REG,   `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define AND_MI   {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_AND    , `DAL_YOK, `BIRIM_AMB, `OPERAND_REG,   `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define OR_MI    {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_OR     , `DAL_YOK, `BIRIM_AMB, `OPERAND_REG,   `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define SLL_MI   {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_SLL    , `DAL_YOK, `BIRIM_AMB, `OPERAND_REG,   `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define SLT_MI   {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_SLT    , `DAL_YOK, `BIRIM_AMB, `OPERAND_REG,   `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define SLTU_MI  {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_SLTU   , `DAL_YOK, `BIRIM_AMB, `OPERAND_REG,   `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define SRA_MI   {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_SRA    , `DAL_YOK, `BIRIM_AMB, `OPERAND_REG,   `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define SRL_MI   {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_SRL    , `DAL_YOK, `BIRIM_AMB, `OPERAND_REG,   `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define XOR_MI   {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_XOR    , `DAL_YOK, `BIRIM_AMB, `OPERAND_REG,   `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define AUIPC_MI {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_TOPLAMA, `DAL_YOK, `BIRIM_AMB, `OPERAND_PCIMM, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define LUI_MI   {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_GECIR  , `DAL_YOK, `BIRIM_AMB, `OPERAND_IMM,   `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}

`define ADDI_MI   {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_TOPLAMA, `DAL_YOK, `BIRIM_AMB, `OPERAND_IMM, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define ANDI_MI   {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_AND    , `DAL_YOK, `BIRIM_AMB, `OPERAND_IMM, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define ORI_MI    {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_OR     , `DAL_YOK, `BIRIM_AMB, `OPERAND_IMM, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define SLLI_MI   {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_SLL    , `DAL_YOK, `BIRIM_AMB, `OPERAND_IMM, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define SLTI_MI   {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_SLT    , `DAL_YOK, `BIRIM_AMB, `OPERAND_IMM, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define SLTIU_MI  {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_SLTU   , `DAL_YOK, `BIRIM_AMB, `OPERAND_IMM, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define SRAI_MI   {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_SRA    , `DAL_YOK, `BIRIM_AMB, `OPERAND_IMM, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define SRLI_MI   {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_SRL    , `DAL_YOK, `BIRIM_AMB, `OPERAND_IMM, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define XORI_MI   {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_XOR    , `DAL_YOK, `BIRIM_AMB, `OPERAND_IMM, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}

`define DIV_MI  {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_DIV , `AMB_YOK, `DAL_YOK, `BIRIM_BOLME, `OPERAND_REG, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define DIVU_MI {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_DIVU, `AMB_YOK, `DAL_YOK, `BIRIM_BOLME, `OPERAND_REG, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define REM_MI  {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_REM , `AMB_YOK, `DAL_YOK, `BIRIM_BOLME, `OPERAND_REG, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define REMU_MI {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_REMU, `AMB_YOK, `DAL_YOK, `BIRIM_BOLME, `OPERAND_REG, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}


// Modified Booth Dadda Carpici buyruklari
`define MUL_MI    {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_MUL   , `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_CARPMA, `OPERAND_REG, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define MULH_MI   {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_MULH  , `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_CARPMA, `OPERAND_REG, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define MULHSU_MI {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_MULHSU, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_CARPMA, `OPERAND_REG, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define MULHU_MI  {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_MULHU , `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_CARPMA, `OPERAND_REG, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}

// BIB buyruklari
`define LB_MI  {`YZH_YOK, `SIFRELEME_YOK, `BIB_LB , `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_BIB, `OPERAND_IMM, `YAZMAC_YAZ  , `GERIYAZ_KAYNAK_YURUT}
`define LBU_MI {`YZH_YOK, `SIFRELEME_YOK, `BIB_LBU, `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_BIB, `OPERAND_IMM, `YAZMAC_YAZ  , `GERIYAZ_KAYNAK_YURUT}
`define LH_MI  {`YZH_YOK, `SIFRELEME_YOK, `BIB_LH , `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_BIB, `OPERAND_IMM, `YAZMAC_YAZ  , `GERIYAZ_KAYNAK_YURUT}
`define LHU_MI {`YZH_YOK, `SIFRELEME_YOK, `BIB_LHU, `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_BIB, `OPERAND_IMM, `YAZMAC_YAZ  , `GERIYAZ_KAYNAK_YURUT}
`define LW_MI  {`YZH_YOK, `SIFRELEME_YOK, `BIB_LW , `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_BIB, `OPERAND_IMM, `YAZMAC_YAZ  , `GERIYAZ_KAYNAK_YURUT}
`define SB_MI  {`YZH_YOK, `SIFRELEME_YOK, `BIB_SB , `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_BIB, `OPERAND_IMM, `YAZMAC_YAZMA, `GERIYAZ_KAYNAK_YOK}
`define SH_MI  {`YZH_YOK, `SIFRELEME_YOK, `BIB_SH , `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_BIB, `OPERAND_IMM, `YAZMAC_YAZMA, `GERIYAZ_KAYNAK_YOK}
`define SW_MI  {`YZH_YOK, `SIFRELEME_YOK, `BIB_SW , `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_BIB, `OPERAND_IMM, `YAZMAC_YAZMA, `GERIYAZ_KAYNAK_YOK}

// Out-of-order BIB buyruklari
// Bizim islemci in-order oldugu icin bu buyruklari implement etmemize gerek yok, bos birakin
`define FENCE_MI   {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK , `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_SISTEM, `OPERAND_REG, `YAZMAC_YAZMA, `GERIYAZ_KAYNAK_YOK}
`define FENCE_I_MI {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK , `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_SISTEM, `OPERAND_REG, `YAZMAC_YAZMA, `GERIYAZ_KAYNAK_YOK}

// Dallanma buyruklari PC+IMM AMB'de hesaplaniyor
`define BEQ_MI  {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_TOPLAMA, `DAL_EQ  , `BIRIM_AMB, `OPERAND_PCIMM, `YAZMAC_YAZMA, `GERIYAZ_KAYNAK_YURUT}
`define BGE_MI  {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_TOPLAMA, `DAL_GE  , `BIRIM_AMB, `OPERAND_PCIMM, `YAZMAC_YAZMA, `GERIYAZ_KAYNAK_YURUT}
`define BGEU_MI {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_TOPLAMA, `DAL_GEU , `BIRIM_AMB, `OPERAND_PCIMM, `YAZMAC_YAZMA, `GERIYAZ_KAYNAK_YURUT}
`define BLT_MI  {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_TOPLAMA, `DAL_LT  , `BIRIM_AMB, `OPERAND_PCIMM, `YAZMAC_YAZMA, `GERIYAZ_KAYNAK_YURUT}
`define BLTU_MI {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_TOPLAMA, `DAL_LTU , `BIRIM_AMB, `OPERAND_PCIMM, `YAZMAC_YAZMA, `GERIYAZ_KAYNAK_YURUT}
`define BNE_MI  {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_TOPLAMA, `DAL_NE  , `BIRIM_AMB, `OPERAND_PCIMM, `YAZMAC_YAZMA, `GERIYAZ_KAYNAK_YURUT}
`define JAL_MI  {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_TOPLAMA, `DAL_JAL , `BIRIM_AMB, `OPERAND_PCIMM, `YAZMAC_YAZ  , `GERIYAZ_KAYNAK_PC   }
`define JALR_MI {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_TOPLAMA, `DAL_JALR, `BIRIM_AMB, `OPERAND_IMM  , `YAZMAC_YAZ  , `GERIYAZ_KAYNAK_PC   }

// Sifreleme buyruklari
`define HMDST_MI {`YZH_YOK, `SIFRELEME_HMDST, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_SIFRELEME, `OPERAND_REG, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define PKG_MI   {`YZH_YOK, `SIFRELEME_PKG  , `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_SIFRELEME, `OPERAND_REG, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define RVRS_MI  {`YZH_YOK, `SIFRELEME_RVRS , `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_SIFRELEME, `OPERAND_REG, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define SLADD_MI {`YZH_YOK, `SIFRELEME_SLADD, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_SIFRELEME, `OPERAND_REG, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define CNTZ_MI  {`YZH_YOK, `SIFRELEME_CNTZ , `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_SIFRELEME, `OPERAND_REG, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}
`define CNTP_MI  {`YZH_YOK, `SIFRELEME_CNTP , `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_SIFRELEME, `OPERAND_REG, `YAZMAC_YAZ, `GERIYAZ_KAYNAK_YURUT}

// Yapay Zeka buyruklari
`define CONV_LD_W_MI  {`YZH_LD_W , `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_YAPAYZEKA, `OPERAND_REG, `YAZMAC_YAZMA, `GERIYAZ_KAYNAK_YURUT}
`define CONV_CLR_W_MI {`YZH_CLR_W, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_YAPAYZEKA, `OPERAND_REG, `YAZMAC_YAZMA, `GERIYAZ_KAYNAK_YURUT}
`define CONV_LD_X_MI  {`YZH_LD_X , `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_YAPAYZEKA, `OPERAND_REG, `YAZMAC_YAZMA, `GERIYAZ_KAYNAK_YURUT}
`define CONV_CLR_X_MI {`YZH_CLR_X, `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_YAPAYZEKA, `OPERAND_REG, `YAZMAC_YAZMA, `GERIYAZ_KAYNAK_YURUT}
`define CONV_RUN_MI   {`YZH_RUN  , `SIFRELEME_YOK, `BIB_YOK, `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_YAPAYZEKA, `OPERAND_REG, `YAZMAC_YAZ,   `GERIYAZ_KAYNAK_YURUT}

// Sistem buyruklari
`define EBREAK_MI {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK , `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_SISTEM, `OPERAND_REG, `YAZMAC_YAZMA, `GERIYAZ_KAYNAK_YOK}
`define ECALL_MI  {`YZH_YOK, `SIFRELEME_YOK, `BIB_YOK , `CARPMA_YOK, `BOLME_YOK, `AMB_YOK, `DAL_YOK, `BIRIM_SISTEM, `OPERAND_REG, `YAZMAC_YAZMA, `GERIYAZ_KAYNAK_YOK}


// Compressedleri 32 bitlik buyruklara donusturdugumuz icin artik tanimlamamiz gerekmiyor

/*
// Compressed AMB buyruklari
`define C_AND_MI {5'b1_0_0_1_0, `CMPVAR, `IMMYOK, `SISYOK, `YAPYOK, `SIFYOK, `DALYOK, `BIBYOK, `BDCYOK, `CLAYOK, `AMBVAR}
`define C_OR_MI  {5'b1_0_0_1_1, `CMPVAR, `IMMYOK, `SISYOK, `YAPYOK, `SIFYOK, `DALYOK, `BIBYOK, `BDCYOK, `CLAYOK, `AMBVAR}
`define C_XOR_MI {5'b1_0_1_0_0, `CMPVAR, `IMMYOK, `SISYOK, `YAPYOK, `SIFYOK, `DALYOK, `BIBYOK, `BDCYOK, `CLAYOK, `AMBVAR}

// Compressed IMMLI AMB buyruklari
`define C_ANDI_MI {5'b1_0_1_0_0, `CMPVAR, `IMMVAR, `SISYOK, `YAPYOK, `SIFYOK, `DALYOK, `BIBYOK, `BDCYOK, `CLAYOK, `AMBVAR}
`define C_SLLI_MI {5'b1_0_1_0_1, `CMPVAR, `IMMVAR, `SISYOK, `YAPYOK, `SIFYOK, `DALYOK, `BIBYOK, `BDCYOK, `CLAYOK, `AMBVAR}
`define C_SRAI_MI {5'b1_0_1_1_0, `CMPVAR, `IMMVAR, `SISYOK, `YAPYOK, `SIFYOK, `DALYOK, `BIBYOK, `BDCYOK, `CLAYOK, `AMBVAR}
`define C_SRLI_MI {5'b1_0_1_1_1, `CMPVAR, `IMMVAR, `SISYOK, `YAPYOK, `SIFYOK, `DALYOK, `BIBYOK, `BDCYOK, `CLAYOK, `AMBVAR}

// Compressed Carry Lookahead Toplayici buyruklari
`define C_ADD_MI {5'b0_0_0_1_1, `CMPVAR, `IMMYOK, `SISYOK, `YAPYOK, `SIFYOK, `DALYOK, `BIBYOK, `BDCYOK, `CLAVAR, `AMBYOK}
`define C_MV_MI  {5'b0_0_1_0_0, `CMPVAR, `IMMYOK, `SISYOK, `YAPYOK, `SIFYOK, `DALYOK, `BIBYOK, `BDCYOK, `CLAVAR, `AMBYOK}
`define C_SUB_MI {5'b0_0_1_0_1, `CMPVAR, `IMMYOK, `SISYOK, `YAPYOK, `SIFYOK, `DALYOK, `BIBYOK, `BDCYOK, `CLAVAR, `AMBYOK}

// Compressed IMMLI Carry Lookahead Toplayici buyruklari
`define C_ADDI_MI     {5'b0_0_1_1_0, `CMPVAR, `IMMVAR, `SISYOK, `YAPYOK, `SIFYOK, `DALYOK, `BIBYOK, `BDCYOK, `CLAVAR, `AMBYOK}
`define C_ADDI16SP_MI {5'b0_0_1_1_1, `CMPVAR, `IMMVAR, `SISYOK, `YAPYOK, `SIFYOK, `DALYOK, `BIBYOK, `BDCYOK, `CLAVAR, `AMBYOK}
`define C_ADDI4SPN_MI {5'b0_1_0_0_0, `CMPVAR, `IMMVAR, `SISYOK, `YAPYOK, `SIFYOK, `DALYOK, `BIBYOK, `BDCYOK, `CLAVAR, `AMBYOK}
`define C_LI_MI       {5'b0_1_0_0_1, `CMPVAR, `IMMVAR, `SISYOK, `YAPYOK, `SIFYOK, `DALYOK, `BIBYOK, `BDCYOK, `CLAVAR, `AMBYOK}
`define C_NOP_MI      {5'b0_1_0_1_0, `CMPVAR, `IMMVAR, `SISYOK, `YAPYOK, `SIFYOK, `DALYOK, `BIBYOK, `BDCYOK, `CLAVAR, `AMBYOK}

// Compressed BIB buyruklari
`define C_LUI_MI  {5'b0_1_0_0_0, `CMPVAR, `IMMYOK, `SISYOK, `YAPYOK, `SIFYOK, `DALYOK, `BIBVAR, `BDCYOK, `CLAYOK, `AMBYOK}
`define C_LW_MI   {5'b0_1_0_0_1, `CMPVAR, `IMMYOK, `SISYOK, `YAPYOK, `SIFYOK, `DALYOK, `BIBVAR, `BDCYOK, `CLAYOK, `AMBYOK}
`define C_LWSP_MI {5'b0_1_0_1_0, `CMPVAR, `IMMYOK, `SISYOK, `YAPYOK, `SIFYOK, `DALYOK, `BIBVAR, `BDCYOK, `CLAYOK, `AMBYOK}
`define C_SW_MI   {5'b0_1_0_1_1, `CMPVAR, `IMMYOK, `SISYOK, `YAPYOK, `SIFYOK, `DALYOK, `BIBVAR, `BDCYOK, `CLAYOK, `AMBYOK}
`define C_SWSP_MI {5'b0_1_1_0_0, `CMPVAR, `IMMYOK, `SISYOK, `YAPYOK, `SIFYOK, `DALYOK, `BIBVAR, `BDCYOK, `CLAYOK, `AMBYOK}

// Compressed Dallanma buyruklari
`define C_BEQZ_MI {5'b0_1_0_0_0, `CMPVAR, `IMMYOK, `SISYOK, `YAPYOK, `SIFYOK, `DALVAR, `BIBYOK, `BDCYOK, `CLAYOK, `AMBYOK}
`define C_BNEZ_MI {5'b0_1_0_0_1, `CMPVAR, `IMMYOK, `SISYOK, `YAPYOK, `SIFYOK, `DALVAR, `BIBYOK, `BDCYOK, `CLAYOK, `AMBYOK}
`define C_J_MI    {5'b0_1_0_1_0, `CMPVAR, `IMMYOK, `SISYOK, `YAPYOK, `SIFYOK, `DALVAR, `BIBYOK, `BDCYOK, `CLAYOK, `AMBYOK}
`define C_JAL_MI  {5'b0_1_0_1_1, `CMPVAR, `IMMYOK, `SISYOK, `YAPYOK, `SIFYOK, `DALVAR, `BIBYOK, `BDCYOK, `CLAYOK, `AMBYOK}
`define C_JALR_MI {5'b0_1_1_0_0, `CMPVAR, `IMMYOK, `SISYOK, `YAPYOK, `SIFYOK, `DALVAR, `BIBYOK, `BDCYOK, `CLAYOK, `AMBYOK}
`define C_JR_MI   {5'b0_1_1_0_1, `CMPVAR, `IMMYOK, `SISYOK, `YAPYOK, `SIFYOK, `DALVAR, `BIBYOK, `BDCYOK, `CLAYOK, `AMBYOK}

// Compressed Sistem buyruklari
`define C_EBREAK_MI {5'b0_0_0_0_0, `CMPVAR, `IMMYOK, `SISVAR, `YAPYOK, `SIFYOK, `DALYOK, `BIBYOK, `BDCYOK, `CLAYOK, `AMBYOK}
*/
// Buyruk tipleri
`define I_Tipi 3'b000
`define S_Tipi 3'b001
`define U_Tipi 3'b011
`define J_Tipi 3'b100
`define B_Tipi 3'b101

// yurutte 2 tip yeterli.
`define BTIP     2'b01
`define JTIP     2'b00

// DDB sabitleri
`define YON_GERIYAZ 2'b00
`define YON_YURUT 2'b01
`define YON_HICBISEY 2'b10

