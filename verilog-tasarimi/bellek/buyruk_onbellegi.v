// buyruk_onbellegi.v
`timescale 1ns / 1ps

`define TAG 18:11
`define ADR 10:2

module buyruk_onbellegi(
    input  wire        clk_i,
    input  wire        rst_i,

    output reg         iomem_valid,
    input  wire        iomem_ready,
    output reg  [18:2] iomem_addr,
    input  wire [31:0] iomem_rdata,

    output reg         l1b_bekle_o,
    output wire [31:0] l1b_deger_o,
    input  wire [18:1] l1b_adres_i
);
    wire [15:0] data0;
    wire [15:0] data1;

    assign l1b_deger_o = l1b_adres_i[1] ? {data0,data1} : {data1,data0};

    localparam  READMEM0   = 3'd0,
                READMEM1   = 3'd1,
                READCACHE  = 3'd2;

    reg [2:0] state;
    reg [2:0] next;

    reg  [ 8:0] d_addr0;
    reg  [ 8:0] d_addr1;
    wire [ 8:0] data_addr0 = l1b_adres_i[`ADR] + {{8{1'b0}},l1b_adres_i[1]};
    wire [ 8:0] data_addr1 = l1b_adres_i[`ADR];


    wire valid0;
    wire valid1;
    wire [7:0] tag0;
    wire [7:0] tag1;

    reg wen;
    wire data0_ready = (l1b_adres_i[`TAG] === tag0) && valid0;
    wire data1_ready = (l1b_adres_i[`TAG] === tag1) && valid1;

    always @(posedge clk_i) begin
        if(rst_i) state <= READMEM0;
        else      state <= next;
    end

    always @(*) begin
        case(state)
            READMEM0: begin
                if(iomem_ready)
                    next = READCACHE;
                else
                    next = READMEM0;
            end
            READMEM1: begin
                if(iomem_ready)
                    next = READCACHE;
                else
                    next = READMEM1;
            end
            READCACHE: begin
                if(~data0_ready)
                    next = READMEM0;
                else if(~data1_ready)
                    next = READMEM1;
                else
                    next = READCACHE;
            end
            default: next = READMEM0;
        endcase
        case(state)
            READMEM0: begin
                iomem_addr  = {l1b_adres_i[`TAG],data_addr0};
                iomem_valid = 1'b1;
                d_addr0 = iomem_addr[`ADR];
                d_addr1 = iomem_addr[`ADR];
                l1b_bekle_o = 1'b1;
                wen = iomem_ready;
            end
            READMEM1: begin
                iomem_addr  = {l1b_adres_i[`TAG],data_addr1};
                iomem_valid = 1'b1;
                d_addr0 = iomem_addr[`ADR];
                d_addr1 = iomem_addr[`ADR];
                l1b_bekle_o = 1'b1;
                wen = iomem_ready;
            end
            READCACHE: begin
                iomem_addr  = l1b_adres_i[18:2];
                iomem_valid = 1'b0;
                d_addr0 = data_addr0;
                d_addr1 = data_addr1;
                l1b_bekle_o = ~(data0_ready && data1_ready);
                wen = 1'b0;
            end
            default: begin
            end
        endcase
    end

    RAM512 bffram_d0(
        .CLK(clk_i),
        .EN0(1'b1),
        .A0(d_addr0),
        .Di0(iomem_rdata[15:0]),
        .Do0(data0),
        .WE0({wen,wen})
    );

    RAM512 bffram_d1(
        .CLK(clk_i),
        .EN0(1'b1),
        .A0(d_addr1),
        .Di0(iomem_rdata[31:16]),
        .Do0(data1),
        .WE0({wen,wen})
    );

    RAM512_VALID bffram_v01 (
      .clk_i  (clk_i ),
      .rst_i  (rst_i ),
      //
      .wen_i  (wen   ),
      .data_i ({1'b1,l1b_adres_i[`TAG]}),
      .wadr_i (iomem_addr[`ADR] ),
      //
      .data0_o ({valid0,tag0}),
      .radr0_i (data_addr0 ),
      //
      .data1_o ({valid1,tag1}),
      .radr1_i (data_addr1 )
    );

endmodule
