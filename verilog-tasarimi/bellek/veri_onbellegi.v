/* Generated by Yosys 0.25+86 (git sha1 541fdffff, clang 10.0.0-4ubuntu1 -fPIC -Os) */




module veri_onbellegi(main_web, main_addr, main_din, main_dout, main_stall, clk, rst, csb, web, wmask, addr, din, dout, stall, main_csb);
  reg \$auto$verilog_backend.cc:2097:dump_module$7  = 0;
  wire \$1 ;
  wire \$100 ;
  wire \$102 ;
  wire \$104 ;
  wire \$106 ;
  wire \$108 ;
  wire \$11 ;
  wire \$110 ;
  wire \$112 ;
  wire \$114 ;
  wire \$116 ;
  wire \$118 ;
  wire \$120 ;
  wire \$122 ;
  wire \$124 ;
  wire \$126 ;
  wire \$128 ;
  wire [9:0] \$13 ;
  wire \$130 ;
  wire \$132 ;
  wire \$134 ;
  wire \$136 ;
  wire \$138 ;
  wire [9:0] \$14 ;
  wire \$140 ;
  wire \$142 ;
  wire \$144 ;
  wire \$146 ;
  wire \$148 ;
  wire \$150 ;
  wire \$152 ;
  wire \$154 ;
  wire \$156 ;
  wire \$158 ;
  wire \$16 ;
  wire \$160 ;
  wire \$162 ;
  wire \$164 ;
  wire \$166 ;
  wire \$168 ;
  wire \$170 ;
  wire \$172 ;
  wire \$174 ;
  wire \$176 ;
  wire \$178 ;
  wire \$18 ;
  wire \$180 ;
  wire \$182 ;
  wire \$184 ;
  wire \$186 ;
  wire \$188 ;
  wire \$190 ;
  wire \$192 ;
  wire \$194 ;
  wire \$196 ;
  wire \$198 ;
  wire \$20 ;
  wire \$200 ;
  wire \$202 ;
  wire \$204 ;
  wire \$206 ;
  wire \$208 ;
  wire \$210 ;
  wire \$212 ;
  wire \$214 ;
  wire \$216 ;
  wire \$218 ;
  wire \$22 ;
  wire \$220 ;
  wire \$222 ;
  wire \$224 ;
  wire \$226 ;
  wire \$228 ;
  wire \$230 ;
  wire \$232 ;
  wire \$234 ;
  wire \$236 ;
  wire \$238 ;
  wire \$24 ;
  wire \$240 ;
  wire \$242 ;
  wire \$26 ;
  wire \$28 ;
  wire \$3 ;
  wire \$30 ;
  wire \$32 ;
  wire \$34 ;
  wire \$36 ;
  wire \$38 ;
  wire \$40 ;
  wire \$42 ;
  wire \$44 ;
  wire \$46 ;
  wire \$48 ;
  wire \$5 ;
  wire \$50 ;
  wire \$52 ;
  wire \$54 ;
  wire \$56 ;
  wire \$58 ;
  wire \$60 ;
  wire \$62 ;
  wire \$64 ;
  wire \$66 ;
  wire \$68 ;
  wire \$7 ;
  wire \$70 ;
  wire \$72 ;
  wire \$74 ;
  wire \$76 ;
  wire \$78 ;
  wire \$80 ;
  wire \$82 ;
  wire \$84 ;
  wire \$86 ;
  wire \$88 ;
  wire \$9 ;
  wire \$90 ;
  wire \$92 ;
  wire \$94 ;
  wire \$96 ;
  wire \$98 ;
  input [10:0] addr;
  wire [10:0] addr;
  input clk;
  wire clk;
  input csb;
  wire csb;
  reg [8:0] data_read_addr0;
  reg data_read_csb0;
  wire [31:0] data_read_dout0;
  reg [8:0] data_write_addr0;
  reg data_write_csb0;
  reg [31:0] data_write_din0;
  input [31:0] din;
  wire [31:0] din;
  reg [31:0] din_reg = 32'd0;
  reg [31:0] din_reg_next;
  output [31:0] dout;
  reg [31:0] dout;
  output [10:0] main_addr;
  reg [10:0] main_addr;
  output main_csb;
  reg main_csb;
  output [31:0] main_din;
  reg [31:0] main_din;
  input [31:0] main_dout;
  wire [31:0] main_dout;
  input main_stall;
  wire main_stall;
  output main_web;
  reg main_web;
  input rst;
  wire rst;
  reg [8:0] set = 9'h000;
  reg [8:0] set_next;
  output stall;
  reg stall;
  reg [3:0] state = 4'h0;
  reg [3:0] state_next;
  reg [1:0] tag = 2'h0;
  reg [1:0] tag_next;
  reg [8:0] tag_read_addr0;
  reg tag_read_csb0;
  wire [2:0] tag_read_dout0;
  reg [8:0] tag_write_addr0;
  reg tag_write_csb0;
  reg [2:0] tag_write_din0;
  input web;
  wire web;
  reg web_reg = 1'h0;
  reg web_reg_next;
  input [3:0] wmask;
  wire [3:0] wmask;
  reg [3:0] wmask_reg = 4'h0;
  reg [3:0] wmask_reg_next;
  assign \$9  = ~  main_stall;
  assign \$100  = tag_read_dout0[2] &  \$98 ;
  assign \$102  = ~  main_stall;
  assign \$104  = ~  main_stall;
  assign \$106  = ~  main_stall;
  assign \$108  = ~  main_stall;
  assign \$110  = tag_read_dout0[1:0] ==  tag;
  assign \$112  = tag_read_dout0[2] &  \$110 ;
  assign \$114  = ~  web_reg;
  assign \$116  = ~  main_stall;
  assign \$118  = tag_read_dout0[1:0] ==  tag;
  assign \$11  = ~  main_stall;
  assign \$120  = tag_read_dout0[2] &  \$118 ;
  assign \$122  = ~  web_reg;
  assign \$124  = ~  main_stall;
  assign \$126  = tag_read_dout0[1:0] ==  tag;
  assign \$128  = tag_read_dout0[2] &  \$126 ;
  assign \$130  = ~  web_reg;
  assign \$132  = ~  main_stall;
  assign \$134  = ~  web_reg;
  assign \$136  = tag_read_dout0[1:0] ==  tag;
  assign \$138  = tag_read_dout0[2] &  \$136 ;
  assign \$140  = ~  main_stall;
  assign \$142  = web_reg |  \$140 ;
  assign \$144  = ~  main_stall;
  assign \$146  = ~  main_stall;
  assign \$148  = tag_read_dout0[1:0] ==  tag;
  assign \$14  = set +  1'h1;
  assign \$150  = tag_read_dout0[2] &  \$148 ;
  assign \$152  = ~  main_stall;
  assign \$154  = web_reg |  \$152 ;
  assign \$156  = ~  main_stall;
  assign \$158  = ~  main_stall;
  assign \$160  = tag_read_dout0[1:0] ==  tag;
  assign \$162  = tag_read_dout0[2] &  \$160 ;
  assign \$164  = ~  main_stall;
  assign \$166  = web_reg |  \$164 ;
  assign \$168  = ~  main_stall;
  assign \$16  = tag_read_dout0[1:0] ==  tag;
  assign \$170  = ~  main_stall;
  assign \$172  = tag_read_dout0[1:0] ==  tag;
  assign \$174  = tag_read_dout0[2] &  \$172 ;
  assign \$176  = ~  main_stall;
  assign \$178  = web_reg |  \$176 ;
  assign \$180  = ~  main_stall;
  assign \$182  = ~  main_stall;
  assign \$184  = ~  main_stall;
  assign \$186  = tag_read_dout0[1:0] ==  tag;
  assign \$188  = tag_read_dout0[2] &  \$186 ;
  assign \$18  = tag_read_dout0[2] &  \$16 ;
  assign \$190  = ~  web_reg;
  assign \$192  = ~  main_stall;
  assign \$194  = ~  main_stall;
  assign \$196  = ~  web_reg;
  assign \$198  = ~  main_stall;
  assign \$1  = tag_read_dout0[1:0] ==  tag;
  assign \$200  = ~  main_stall;
  assign \$202  = tag_read_dout0[1:0] ==  tag;
  assign \$204  = tag_read_dout0[2] &  \$202 ;
  assign \$206  = ~  web_reg;
  assign \$208  = ~  main_stall;
  assign \$20  = ~  main_stall;
  assign \$210  = ~  main_stall;
  assign \$212  = ~  web_reg;
  assign \$214  = ~  main_stall;
  assign \$216  = ~  main_stall;
  assign \$218  = tag_read_dout0[1:0] ==  tag;
  assign \$220  = tag_read_dout0[2] &  \$218 ;
  assign \$222  = ~  web_reg;
  assign \$224  = ~  main_stall;
  assign \$226  = ~  main_stall;
  assign \$228  = ~  web_reg;
  assign \$22  = web_reg |  \$20 ;
  assign \$230  = ~  main_stall;
  assign \$232  = tag_read_dout0[1:0] ==  tag;
  assign \$234  = tag_read_dout0[2] &  \$232 ;
  assign \$236  = ~  web_reg;
  assign \$238  = ~  main_stall;
  assign \$240  = ~  web_reg;
  assign \$242  = ~  main_stall;
  assign \$24  = ~  main_stall;
  assign \$26  = ~  main_stall;
  assign \$28  = tag_read_dout0[1:0] ==  tag;
  assign \$30  = tag_read_dout0[2] &  \$28 ;
  assign \$32  = ~  main_stall;
  assign \$34  = web_reg |  \$32 ;
  assign \$36  = ~  main_stall;
  assign \$38  = ~  main_stall;
  assign \$3  = tag_read_dout0[2] &  \$1 ;
  assign \$40  = tag_read_dout0[1:0] ==  tag;
  assign \$42  = tag_read_dout0[2] &  \$40 ;
  assign \$44  = ~  main_stall;
  assign \$46  = web_reg |  \$44 ;
  assign \$48  = ~  main_stall;
  assign \$50  = ~  main_stall;
  assign \$52  = tag_read_dout0[1:0] ==  tag;
  assign \$54  = tag_read_dout0[2] &  \$52 ;
  assign \$56  = ~  main_stall;
  assign \$58  = web_reg |  \$56 ;
  assign \$5  = ~  main_stall;
  assign \$60  = ~  main_stall;
  assign \$62  = ~  main_stall;
  assign \$64  = set ==  9'h1ff;
  assign \$66  = ~  csb;
  assign \$68  = tag_read_dout0[1:0] ==  tag;
  assign \$70  = tag_read_dout0[2] &  \$68 ;
  assign \$72  = ~  main_stall;
  assign \$74  = web_reg |  \$72 ;
  assign \$76  = ~  main_stall;
  assign \$78  = ~  main_stall;
  assign \$7  = web_reg |  \$5 ;
  assign \$80  = set ==  addr[8:0];
  assign \$82  = ~  main_stall;
  assign \$84  = set ==  addr[8:0];
  assign \$86  = tag_read_dout0[1:0] ==  tag;
  assign \$88  = tag_read_dout0[2] &  \$86 ;
  assign \$90  = ~  main_stall;
  assign \$92  = web_reg |  \$90 ;
  assign \$94  = ~  main_stall;
  assign \$96  = ~  main_stall;
  assign \$98  = tag_read_dout0[1:0] ==  tag;
  always @(posedge clk)
    state <= state_next;
  always @(posedge clk)
    din_reg <= din_reg_next;
  always @(posedge clk)
    wmask_reg <= wmask_reg_next;
  always @(posedge clk)
    web_reg <= web_reg_next;
  always @(posedge clk)
    set <= set_next;
  always @(posedge clk)
    tag <= tag_next;
  veri_onbellegi_tag_array \U$$0  (
    .addr0(tag_write_addr0),
    .addr1(tag_read_addr0),
    .clk0(clk),
    .clk1(clk),
    .csb0(tag_write_csb0),
    .csb1(tag_read_csb0),
    .din0(tag_write_din0),
    .dout1(tag_read_dout0)
  );
  veri_onbellegi_data_array \U$$1  (
    .addr0(data_write_addr0),
    .addr1(data_read_addr0),
    .clk0(clk),
    .clk1(clk),
    .csb0(data_write_csb0),
    .csb1(data_read_csb0),
    .din0(data_write_din0),
    .dout1(data_read_dout0)
  );
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    din_reg_next = din_reg;
    casez (state)
      4'h0:
          ;
      4'h2:
          din_reg_next = din;
      4'h3:
          casez (\$54 )
            1'h1:
                casez (\$58 )
                  1'h1:
                      din_reg_next = din;
                endcase
          endcase
      4'h7:
          casez (\$60 )
            1'h1:
                din_reg_next = din;
          endcase
      4'h4:
          casez (\$62 )
            1'h1:
                din_reg_next = din;
          endcase
    endcase
    casez (rst)
      1'h1:
          din_reg_next = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    state_next = state;
    casez (state)
      4'h0:
          casez (\$64 )
            1'h1:
                state_next = 4'h2;
          endcase
      4'h2:
          casez (\$66 )
            1'h1:
                state_next = 4'h3;
          endcase
      4'h3:
        begin
          casez (main_stall)
            1'h1:
                state_next = 4'h6;
            default:
                state_next = 4'h7;
          endcase
          casez (\$70 )
            1'h1:
                casez (\$74 )
                  1'h1:
                      casez (csb)
                        1'h1:
                            state_next = 4'h2;
                        default:
                            state_next = 4'h3;
                      endcase
                  default:
                      state_next = 4'h4;
                endcase
          endcase
        end
      4'h6:
          casez (\$76 )
            1'h1:
                state_next = 4'h7;
          endcase
      4'h7:
          casez (\$78 )
            1'h1:
                casez (csb)
                  1'h1:
                      state_next = 4'h2;
                  default:
                      casez (\$80 )
                        1'h1:
                            state_next = 4'h9;
                        default:
                            state_next = 4'h3;
                      endcase
                endcase
          endcase
      4'h4:
          casez (\$82 )
            1'h1:
                casez (csb)
                  1'h1:
                      state_next = 4'h2;
                  default:
                      casez (\$84 )
                        1'h1:
                            state_next = 4'h9;
                        default:
                            state_next = 4'h3;
                      endcase
                endcase
          endcase
      4'h9:
          state_next = 4'h3;
    endcase
    casez (rst)
      1'h1:
          state_next = 4'h0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    stall = 1'h1;
    casez (state)
      4'h2:
          stall = 1'h0;
      4'h3:
          casez (\$88 )
            1'h1:
                casez (\$92 )
                  1'h1:
                      stall = 1'h0;
                endcase
          endcase
      4'h7:
          casez (\$94 )
            1'h1:
                stall = 1'h0;
          endcase
      4'h4:
          casez (\$96 )
            1'h1:
                stall = 1'h0;
          endcase
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    dout = 32'd0;
    casez (state)
      4'h2:
          ;
      4'h3:
          casez (\$100 )
            1'h1:
                dout = data_read_dout0;
          endcase
      4'h7:
          casez (\$102 )
            1'h1:
                dout = main_dout;
          endcase
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    tag_write_csb0 = 1'h1;
    casez (state)
      4'h0:
          tag_write_csb0 = 1'h0;
      4'h2:
          ;
      4'h3:
          ;
      4'h6:
          ;
      4'h7:
          casez (\$104 )
            1'h1:
                tag_write_csb0 = 1'h0;
          endcase
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    tag_write_addr0 = 9'h000;
    casez (state)
      4'h0:
          tag_write_addr0 = set;
      4'h2:
          ;
      4'h3:
          ;
      4'h6:
          ;
      4'h7:
          casez (\$106 )
            1'h1:
                tag_write_addr0 = set;
          endcase
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    tag_write_din0 = 3'h0;
    casez (state)
      4'h0:
          tag_write_din0 = 3'h0;
      4'h2:
          ;
      4'h3:
          ;
      4'h6:
          ;
      4'h7:
          casez (\$108 )
            1'h1:
                tag_write_din0 = { 1'h1, tag };
          endcase
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    data_write_csb0 = 1'h1;
    casez (state)
      4'h0:
          data_write_csb0 = 1'h0;
      4'h2:
          ;
      4'h3:
          casez (\$112 )
            1'h1:
                casez (\$114 )
                  1'h1:
                      data_write_csb0 = 1'h0;
                endcase
          endcase
      4'h6:
          ;
      4'h7:
          casez (\$116 )
            1'h1:
                data_write_csb0 = 1'h0;
          endcase
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    data_write_addr0 = 9'h000;
    casez (state)
      4'h0:
          data_write_addr0 = set;
      4'h2:
          ;
      4'h3:
          casez (\$120 )
            1'h1:
                casez (\$122 )
                  1'h1:
                      data_write_addr0 = set;
                endcase
          endcase
      4'h6:
          ;
      4'h7:
          casez (\$124 )
            1'h1:
                data_write_addr0 = set;
          endcase
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    data_write_din0 = 32'd0;
    casez (state)
      4'h0:
          data_write_din0 = 32'd0;
      4'h2:
          ;
      4'h3:
          casez (\$128 )
            1'h1:
                casez (\$130 )
                  1'h1:
                    begin
                      data_write_din0 = data_read_dout0;
                      casez (wmask_reg[0])
                        1'h1:
                            data_write_din0[7:0] = din_reg[7:0];
                      endcase
                      casez (wmask_reg[1])
                        1'h1:
                            data_write_din0[15:8] = din_reg[15:8];
                      endcase
                      casez (wmask_reg[2])
                        1'h1:
                            data_write_din0[23:16] = din_reg[23:16];
                      endcase
                      casez (wmask_reg[3])
                        1'h1:
                            data_write_din0[31:24] = din_reg[31:24];
                      endcase
                    end
                endcase
          endcase
      4'h6:
          ;
      4'h7:
          casez (\$132 )
            1'h1:
              begin
                data_write_din0 = main_dout;
                casez (\$134 )
                  1'h1:
                    begin
                      casez (wmask_reg[0])
                        1'h1:
                            data_write_din0[7:0] = din_reg[7:0];
                      endcase
                      casez (wmask_reg[1])
                        1'h1:
                            data_write_din0[15:8] = din_reg[15:8];
                      endcase
                      casez (wmask_reg[2])
                        1'h1:
                            data_write_din0[23:16] = din_reg[23:16];
                      endcase
                      casez (wmask_reg[3])
                        1'h1:
                            data_write_din0[31:24] = din_reg[31:24];
                      endcase
                    end
                endcase
              end
          endcase
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    tag_read_csb0 = 1'h0;
    casez (state)
      4'h0:
          ;
      4'h2:
          tag_read_csb0 = 1'h0;
      4'h3:
        begin
          tag_read_csb0 = 1'h0;
          casez (\$138 )
            1'h1:
                casez (\$142 )
                  1'h1:
                      tag_read_csb0 = 1'h0;
                endcase
          endcase
        end
      4'h6:
          tag_read_csb0 = 1'h0;
      4'h7:
        begin
          tag_read_csb0 = 1'h0;
          casez (\$144 )
            1'h1:
                tag_read_csb0 = 1'h0;
          endcase
        end
      4'h4:
        begin
          tag_read_csb0 = 1'h0;
          casez (\$146 )
            1'h1:
                tag_read_csb0 = 1'h0;
          endcase
        end
      4'h9:
          tag_read_csb0 = 1'h0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    tag_read_addr0 = 9'h000;
    casez (state)
      4'h0:
          ;
      4'h2:
          tag_read_addr0 = addr[8:0];
      4'h3:
        begin
          tag_read_addr0 = set;
          casez (\$150 )
            1'h1:
                casez (\$154 )
                  1'h1:
                      tag_read_addr0 = addr[8:0];
                endcase
          endcase
        end
      4'h6:
          tag_read_addr0 = set;
      4'h7:
        begin
          tag_read_addr0 = set;
          casez (\$156 )
            1'h1:
                tag_read_addr0 = addr[8:0];
          endcase
        end
      4'h4:
        begin
          tag_read_addr0 = set;
          casez (\$158 )
            1'h1:
                tag_read_addr0 = addr[8:0];
          endcase
        end
      4'h9:
          tag_read_addr0 = set;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    data_read_csb0 = 1'h0;
    casez (state)
      4'h0:
          ;
      4'h2:
          data_read_csb0 = 1'h0;
      4'h3:
        begin
          data_read_csb0 = 1'h0;
          casez (\$162 )
            1'h1:
                casez (\$166 )
                  1'h1:
                      data_read_csb0 = 1'h0;
                endcase
          endcase
        end
      4'h6:
          data_read_csb0 = 1'h0;
      4'h7:
        begin
          data_read_csb0 = 1'h0;
          casez (\$168 )
            1'h1:
                data_read_csb0 = 1'h0;
          endcase
        end
      4'h4:
        begin
          data_read_csb0 = 1'h0;
          casez (\$170 )
            1'h1:
                data_read_csb0 = 1'h0;
          endcase
        end
      4'h9:
          data_read_csb0 = 1'h0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    data_read_addr0 = 9'h000;
    casez (state)
      4'h0:
          ;
      4'h2:
          data_read_addr0 = addr[8:0];
      4'h3:
        begin
          data_read_addr0 = set;
          casez (\$174 )
            1'h1:
                casez (\$178 )
                  1'h1:
                      data_read_addr0 = addr[8:0];
                endcase
          endcase
        end
      4'h6:
          data_read_addr0 = set;
      4'h7:
        begin
          data_read_addr0 = set;
          casez (\$180 )
            1'h1:
                data_read_addr0 = addr[8:0];
          endcase
        end
      4'h4:
        begin
          data_read_addr0 = set;
          casez (\$182 )
            1'h1:
                data_read_addr0 = addr[8:0];
          endcase
        end
      4'h9:
          data_read_addr0 = set;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    main_csb = 1'h1;
    casez (state)
      4'h0:
          ;
      4'h2:
          ;
      4'h3:
        begin
          casez (\$184 )
            1'h1:
                main_csb = 1'h0;
          endcase
          casez (\$188 )
            1'h1:
              begin
                main_csb = 1'h1;
                casez (\$190 )
                  1'h1:
                      main_csb = 1'h0;
                endcase
              end
          endcase
        end
      4'h6:
          casez (\$192 )
            1'h1:
                main_csb = 1'h0;
          endcase
      4'h7:
          casez (\$194 )
            1'h1:
                casez (\$196 )
                  1'h1:
                      main_csb = 1'h0;
                endcase
          endcase
      4'h4:
          casez (\$198 )
            1'h1:
                main_csb = 1'h0;
          endcase
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    main_web = 1'h1;
    casez (state)
      4'h0:
          ;
      4'h2:
          ;
      4'h3:
        begin
          casez (\$200 )
            1'h1:
                main_web = 1'h1;
          endcase
          casez (\$204 )
            1'h1:
                casez (\$206 )
                  1'h1:
                      main_web = 1'h0;
                endcase
          endcase
        end
      4'h6:
          casez (\$208 )
            1'h1:
                main_web = 1'h1;
          endcase
      4'h7:
          casez (\$210 )
            1'h1:
                casez (\$212 )
                  1'h1:
                      main_web = 1'h0;
                endcase
          endcase
      4'h4:
          casez (\$214 )
            1'h1:
                main_web = 1'h0;
          endcase
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    main_addr = 11'h000;
    casez (state)
      4'h0:
          ;
      4'h2:
          ;
      4'h3:
        begin
          casez (\$216 )
            1'h1:
                main_addr = { tag, set };
          endcase
          casez (\$220 )
            1'h1:
                casez (\$222 )
                  1'h1:
                      main_addr = { tag, set };
                endcase
          endcase
        end
      4'h6:
          casez (\$224 )
            1'h1:
                main_addr = { tag, set };
          endcase
      4'h7:
          casez (\$226 )
            1'h1:
                casez (\$228 )
                  1'h1:
                      main_addr = { tag, set };
                endcase
          endcase
      4'h4:
          casez (\$230 )
            1'h1:
                main_addr = { tag_read_dout0[1:0], set };
          endcase
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    main_din = 32'd0;
    casez (state)
      4'h0:
          ;
      4'h2:
          ;
      4'h3:
          casez (\$234 )
            1'h1:
                casez (\$236 )
                  1'h1:
                    begin
                      main_din = data_read_dout0;
                      casez (wmask_reg[0])
                        1'h1:
                            main_din[7:0] = din_reg[7:0];
                      endcase
                      casez (wmask_reg[1])
                        1'h1:
                            main_din[15:8] = din_reg[15:8];
                      endcase
                      casez (wmask_reg[2])
                        1'h1:
                            main_din[23:16] = din_reg[23:16];
                      endcase
                      casez (wmask_reg[3])
                        1'h1:
                            main_din[31:24] = din_reg[31:24];
                      endcase
                    end
                endcase
          endcase
      4'h6:
          ;
      4'h7:
          casez (\$238 )
            1'h1:
                casez (\$240 )
                  1'h1:
                    begin
                      main_din = main_dout;
                      casez (wmask_reg[0])
                        1'h1:
                            main_din[7:0] = din_reg[7:0];
                      endcase
                      casez (wmask_reg[1])
                        1'h1:
                            main_din[15:8] = din_reg[15:8];
                      endcase
                      casez (wmask_reg[2])
                        1'h1:
                            main_din[23:16] = din_reg[23:16];
                      endcase
                      casez (wmask_reg[3])
                        1'h1:
                            main_din[31:24] = din_reg[31:24];
                      endcase
                    end
                endcase
          endcase
      4'h4:
          casez (\$242 )
            1'h1:
              begin
                main_din = data_read_dout0;
                casez (wmask_reg[0])
                  1'h1:
                      main_din[7:0] = din_reg[7:0];
                endcase
                casez (wmask_reg[1])
                  1'h1:
                      main_din[15:8] = din_reg[15:8];
                endcase
                casez (wmask_reg[2])
                  1'h1:
                      main_din[23:16] = din_reg[23:16];
                endcase
                casez (wmask_reg[3])
                  1'h1:
                      main_din[31:24] = din_reg[31:24];
                endcase
              end
          endcase
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    tag_next = tag;
    casez (state)
      4'h0:
          ;
      4'h2:
          tag_next = addr[10:9];
      4'h3:
          casez (\$3 )
            1'h1:
                casez (\$7 )
                  1'h1:
                      tag_next = addr[10:9];
                endcase
          endcase
      4'h7:
          casez (\$9 )
            1'h1:
                tag_next = addr[10:9];
          endcase
      4'h4:
          casez (\$11 )
            1'h1:
                tag_next = addr[10:9];
          endcase
    endcase
    casez (rst)
      1'h1:
          tag_next = 2'h0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    set_next = set;
    casez (state)
      4'h0:
          set_next = \$14 [8:0];
      4'h2:
          set_next = addr[8:0];
      4'h3:
          casez (\$18 )
            1'h1:
                casez (\$22 )
                  1'h1:
                      set_next = addr[8:0];
                endcase
          endcase
      4'h7:
          casez (\$24 )
            1'h1:
                set_next = addr[8:0];
          endcase
      4'h4:
          casez (\$26 )
            1'h1:
                set_next = addr[8:0];
          endcase
    endcase
    casez (rst)
      1'h1:
          set_next = 9'h000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    web_reg_next = web_reg;
    casez (state)
      4'h0:
          ;
      4'h2:
          web_reg_next = web;
      4'h3:
          casez (\$30 )
            1'h1:
                casez (\$34 )
                  1'h1:
                      web_reg_next = web;
                endcase
          endcase
      4'h7:
          casez (\$36 )
            1'h1:
                web_reg_next = web;
          endcase
      4'h4:
          casez (\$38 )
            1'h1:
                web_reg_next = web;
          endcase
    endcase
    casez (rst)
      1'h1:
          web_reg_next = 1'h1;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$7 ) begin end
    wmask_reg_next = wmask_reg;
    casez (state)
      4'h0:
          ;
      4'h2:
          wmask_reg_next = wmask;
      4'h3:
          casez (\$42 )
            1'h1:
                casez (\$46 )
                  1'h1:
                      wmask_reg_next = wmask;
                endcase
          endcase
      4'h7:
          casez (\$48 )
            1'h1:
                wmask_reg_next = wmask;
          endcase
      4'h4:
          casez (\$50 )
            1'h1:
                wmask_reg_next = wmask;
          endcase
    endcase
    casez (rst)
      1'h1:
          wmask_reg_next = 4'h0;
    endcase
  end
  assign \$13  = \$14 ;
endmodule