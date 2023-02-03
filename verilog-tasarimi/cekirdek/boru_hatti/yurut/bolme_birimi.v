// bolme_birimi.v
`timescale 1ns / 1ps

`include "tanimlamalar.vh"

module bolme_birimi(
	input clk_i,
	input rst_i,
	input [1:0] islem_i, //00 DIVU, 01 REMU, 10 DIV, 11 REM
	input [31:0] bolunen_i,
	input [31:0] bolen_i, 
	output reg [31:0] sonuc_o,
	output reg bitti_o
);

	reg bitti_sonraki_r = 0;

	reg [31:0] bolen_r = 0;
	reg [31:0] bolen_sonraki_r = 0;

	reg [31:0] bolunen_r = 0;
	reg [31:0] bolunen_sonraki_r = 0;

	reg [31:0] fark_r = 0;
	reg [31:0] fark_sonraki_r = 0;

	reg [33:0] cevrim_r = 34'd1;
	reg [33:0] cevrim_sonraki_r = 34'd1;

	reg boluyor_r = 0;
	reg boluyor_sonraki_r = 0;

	reg[31:0] gecici_fark_r = 0;

	reg isaret_bolunen_r = 0;
	reg isaret_bolen_r = 0;

	always @(*)begin
		bolen_sonraki_r = 0;
		bolunen_sonraki_r = 0;
		fark_sonraki_r = 0;
		cevrim_sonraki_r = 0;
		boluyor_sonraki_r = 0;

		bitti_sonraki_r = 0;
		
		if(cevrim_r[0]) begin
		    isaret_bolen_r = bolen_i[31];
			isaret_bolunen_r = bolunen_i[31];

			if(islem_i[1] & bolen_i[31]) begin
			   bolen_sonraki_r = ~bolen_i + 1;
			end
			else begin
			   bolen_sonraki_r= bolen_i;
			end
		
		    if(islem_i[1] & bolunen_i[31])begin
			   bolunen_sonraki_r = ~bolunen_i + 1;
			end
			else begin
			   bolunen_sonraki_r = bolunen_i;
			end
			boluyor_sonraki_r = 1;
			cevrim_sonraki_r = cevrim_r<<1;
		end

		if(boluyor_r)begin
		
			fark_sonraki_r = {fark_r[30:0], bolunen_r[31]} - bolen_r;
			gecici_fark_r = fark_sonraki_r;
			bolunen_sonraki_r = bolunen_r<<1;

			if(fark_sonraki_r[31])begin
				bolunen_sonraki_r[0] = 0;
				fark_sonraki_r = gecici_fark_r + bolen_r;
			end
			else begin
				bolunen_sonraki_r[0] = 1;

			end

			cevrim_sonraki_r = cevrim_r<<1;
			boluyor_sonraki_r = ~cevrim_r[32];
		end

		if(cevrim_r[33])begin
			casez({islem_i, (isaret_bolen_r ^ isaret_bolunen_r)})
				{`BOLME_DIVU, 1'b?}: sonuc_o = bolunen_r;
				{`BOLME_REMU, 1'b?}: sonuc_o = fark_r;

				{`BOLME_DIV, 1'b0}: sonuc_o = bolunen_r;
				{`BOLME_DIV, 1'b1}: sonuc_o = (~bolunen_r) + 1;
				{`BOLME_REM, 1'b0}: sonuc_o = fark_r;
				{`BOLME_REM, 1'b1}: sonuc_o = fark_r - bolen_r;
			endcase

			cevrim_sonraki_r = 34'd1;
			boluyor_sonraki_r = 0;
			fark_sonraki_r = 0;
			bolen_sonraki_r = 0;
			bolunen_sonraki_r = 0;

			bitti_sonraki_r = 1;
		end
	end

	always @(posedge clk_i)begin
		if(rst_i) begin
			bolen_r <= 0; 
			bolunen_r <= 0;
			fark_r <= 0;
			cevrim_r <= 0;
			boluyor_r <= 0;

			bitti_o <= 0;
		end
		else begin
			bolen_r <= bolen_sonraki_r; 
			bolunen_r <= bolunen_sonraki_r;
			fark_r <= fark_sonraki_r;
			cevrim_r <= cevrim_sonraki_r;
			boluyor_r <= boluyor_sonraki_r;

			bitti_o <= bitti_sonraki_r;
		end
	end

endmodule
