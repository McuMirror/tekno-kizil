`timescale 1ns / 1ps

`include "tanimlamalar.vh"

module getir
    (
    input                               clk_i,
    input                               rst_i,
    // denetim durum birimi sinyalleri 
    input                               ddb_ps_al_gecerli_i,
    input [`PS_BIT - 1:0]               ddb_ps_al_i,
    // onbellekten gelen guncelleme sinyalleri 
    input [`BUYRUK_BIT-1:0]             l1b_buy_i,
    input                               l1b_gecerli_i,
    input                               l1b_hazir_i,
    input                               l1b_duraklat_i,
    input                               l1b_oku_adres_kabul_i, // buna gerek olmayabilir
    // yurutten gelen dallanma guncelleme bitleri
    input                               y_guncelleme_gecerli_i,
    input                               y_yanlis_ongoru_i,
    input                               y_atladi_i,
    input [`BB_ADRES_BIT-1:0]           y_dallanma_ps_i, 
    input [`BB_ADRES_BIT-1:0]           y_atlanan_ps_i,
    input [`BUYRUK_BIT-1:0]             y_buy_i,
    input                               y_siradaki_ps_gecerli_i,
    input [`BB_ADRES_BIT-1:0]           y_siradaki_ps_i,
    // coz'e giden cikis sinyalleri
    // Not: ongoru varsa vermek gerekebilir?  
    output [`BB_ADRES_BIT-1:0]          coz_ps_o,
    output [`BUYRUK_BIT-3:0]            coz_buy_o, //Not: butun buyruklarin en onemsiz iki biti 2'b11
    output                              coz_gecerli_o, 
    output                              coz_buyruk_compressed_o,  
    // onbellege giden cikis sinyalleri   
    output [`BB_ADRES_BIT-1:0]          l1b_ps_o,
    output                              l1b_ps_gecerli_o
    );

    ////////////////////////////////////////////////////
    //                  Tanimlamalar
    ////////////////////////////////////////////////////

    // Program Sayaci
    reg [`PS_BIT - 1:0] ps_r, ps_next_r;
    wire [`PS_BIT - 1:0] dob_yeni_ps;

    // Cikis yazmaclari: Getir -> Coz
    reg [`BB_ADRES_BIT-1:0] coz_ps_r, coz_ps_next_r;
    reg [`BUYRUK_BIT-1:0] coz_buyruk_r, coz_buyruk_next_r;
    reg coz_gecerli_r, coz_gecerli_next_r;

    // Kontrol sinyalleri: Getir -> Dallanma Birimi
    wire buyruk_db_etkin_w;
    wire buyruk_jr_w;
    wire buyruk_branch_w;
    wire buyruk_jalr_w;
    wire buyruk_j_w;
    wire buyruk_jal_w;
    wire buyruk_comp_w;

    // Giris sinyalleri: Dallanma Birimi -> Getir
    wire [`BB_ADRES_BIT-1:0] dob_yeni_ps;
    wire dob_ongoru_atlar;

    // Kontrol sinyalleri: Dallanma Birimi -> Getir 
    wire atlanan_adres_w;
    wire buyruk_ongoru_w;

    // Kontrol sinyalleri: Yurut -> Dallanma Birimi
    // Not: dallanma birimine ayni cevrim icerisinde erisilecek
    wire guncelleme_gecerli_w;
    wire [`BUYRUK_BIT-1:0] eski_buyruk_w;
    wire [`BUYRUK_BIT-1:0] eski_buyruk_adresi_w;
    wire buyruk_atladi_w;
    wire [`BUYRUK_BIT-1:0] atlanan_adres_w; 
    wire ongoru_yanlis_w;

    // Getir asamasi kontrol sinyalleri
    // Buyruk Buffer: Compressed buyruk gelmesi durumunda
    //                diger 16 biti sakla.
    reg [`BUYRUK_BIT-1:0] buyruk_buffer_r, buyruk_buffer_next_r;
    reg buyruk_buffer_gecerli_r, buyruk_buffer_gecerli_next_r;
    reg buyruk_buffer_comp_r, buyruk_buffer_comp_next_r;

    // Gecerli buyruk 
    wire [`BUYRUK_BIT-1:0] buyruk_w;
    wire buyruk_gecerli_w;

    ////////////////////////////////////////////////////
    //              Cagirilan Moduller
    ////////////////////////////////////////////////////

    dallanma_ongorucu do(
        .clk_i(clk_i),
        .rst_i(rst_i),
        .buyruk_adresi_i(ps_r),
        .buyruk_i(dob_buy_g_r),
        .is_jr_i(buyruk_jr_w),
        .is_branch_i(buyruk_branch_w),
        .is_jalr_i(buyruk_jalr_w),
        .is_j_i(buyruk_j_w),
        .is_jal_i(buyruk_jal_w),
        .is_comp_i(buyruk_comp_w),
        .atlanan_adres_o(dob_yeni_ps),
        .buyruk_ongoru_o(dob_ongoru_atlar),
        // dallanma ongorucuyu guncellemek icin kullanilan bitler
        .guncelleme_gecerli_i(y_guncelleme_gecerli_i),
        .eski_buyruk_i(y_buy_i),
        .eski_buyruk_adresi_i(y_dallanma_ps_i),
        .buyruk_atladi_i(y_atladi_i),
        .atlanan_adres_i(y_atlanan_ps_i),
        .ongoru_yanlis_i(y_yanlis_ongoru_i)
    );

    ////////////////////////////////////////////////////
    //                  Atamalar
    ////////////////////////////////////////////////////

    // Gecerli buyruk
    assign buyruk_w = buyruk_buffer_gecerli_r ? 
        (buyruk_buffer_comp_r ? 
        ({{16{1'b0}},buyruk_buffer_r}) : 
        ({l1b_buy_i[15:0],buyruk_buffer_r})) :
        (l1b_buy_i);

    assign buyruk_gecerli_w = buyruk_buffer_gecerli_r ? 
        (buyruk_buffer_comp_r ? 
        (1'b1) : 
        (l1b_gecerli_i)) :
        (l1b_gecerli_i);

    // Yazmaclari cikis sinyallerine bagla
    assign coz_ps_o = ps_r;
    assign coz_buy_o = buyruk_r;
    assign coz_gecerli_o = coz_gecerli_r;

    // Dallanma birimi icin predecode
    assign buyruk_jr_w = (buyruk_w[1:0]==2'b10) ? 
        ((buyruk_w[6:2]==5'b0)&&(buyruk_w[12]==1'b0)) : 1'b0;

    assign buyruk_jalr_w = (buyruk_w[1:0]==2'b10) ? 
        ((buyruk_w[6:2]==5'b0)&&(buyruk_w[12]==1'b1)) :
        (buyruk_w[6:2]==5'b11001);

    assign buyruk_j_w = (buyruk_w[1:0]==2'b01) ? 
        (buyruk_w[15:13]==3'b101) : 1'b0;

    assign buyruk_jal_w = (buyruk_w[1:0]==2'b01) ? 
        (buyruk_w[15:13]==3'b001)&&(buyruk_w[11:7]==5'b0) : 1'b0;

    assign buyruk_branch_w = (buyruk_w[1:0]==2'b01) ?
        ((buyruk_w[15:13]==3'b110)||(buyruk_w[15:13]==3'b111)) :
        (buyruk_w[6:2]==7'b11000);

    assign buyruk_comp_w = (buyruk_w[1:0]!=2'b11);

    assign buyruk_db_etkin_w = (buyruk_branch_w ||
        buyruk_j_w ||
        buyruk_jal_w ||
        buyruk_jalr_w ||
        buyruk_jr_w) && l1b_gecerli_i;  

    // Kontrol sinyalleri: Getir -> L1B
    assign l1b_ps_o = {ps_r[31:2],{2{1'b0}}};
    // Buyruk Buffer gecerli degilse, l1b'den yeni buyruk gelmediyse ve
    // l1b istegi beklenmiyorsa, yeni l1b istegi uret
    // Not: l1 istek aldiginda zaten durduruyor
    assign l1b_ps_gecerli_o = (~buyruk_buffer_gecerli_r || (buyruk_buffer_gecerli_r 
                                && ~buyruk_buffer_comp_r)) && ~l1b_duraklat_i && l1b_hazir_i;

    always @* begin
        // Latch olusturma
        // PS
        ps_next_r = ps_r;
        // Buyruk Buffer
        buyruk_buffer_comp_next_r = buyruk_buffer_comp_r;
        buyruk_buffer_gecerli_next_r = buyruk_buffer_gecerli_r;
        buyruk_buffer_next_r = buyruk_buffer_r;
        // Coz sinyalleri
        coz_gecerli_next_r = 1'b0;
        coz_buyruk_next_r = coz_buyruk_r;
        coz_ps_next_r = coz_ps_r;

        if(bosalt_i) begin
            ps_next_r = 'd0;
            buyruk_buffer_comp_next_r = 1'd0;
            buyruk_buffer_gecerli_next_r = 1'd0;
            buyruk_buffer_next_r = 'd0;
            coz_gecerli_next_r = 1'd0;
            coz_buyruk_next_r = 'd0;
        end

        // Buyruk Buffer Gecerli ve Bufferdaki Buyruk Compressed
        if(!l1b_duraklat_i && buyruk_buffer_comp_r && buyruk_buffer_gecerli_r && !buyruk_db_etkin_w) begin
            // Coz bir sonraki cevrim gecerli
            ps_next_r = ps_r + 'd2;
            // Buffer'i Bosalt
            buyruk_buffer_next_r = 16'd0;
            buyruk_buffer_comp_next_r = 1'b0;
            buyruk_buffer_gecerli_next_r = 1'b0;
        end

        // Buyruk Buffer Gecerli degil ve l1'den istenilen veri geldi
        else if(!l1b_duraklat_i && l1b_gecerli_i && !buyruk_db_etkin_w) begin
            // Coze verilecek sinyallerin kontrolu
            // Coz bir sonraki cevrim gecerli
            coz_gecerli_next_r = 1'b1;
            // Coz'e buyruk bir sonraki cevrim verilecegi icin registerda tutulmali
            coz_buyruk_next_r = buyruk_w;
            // Coz'e verilen buyrugun PS'si
            coz_ps_next_r = ps_r;
            // Getir Asamasi icerisindeki yazmaclarin kontrolu 
            // Buyruk Compressed degil ve yarisi buyruk buffer'inda
            if() begin
                // Bir sonraki cevrim icin ps
                ps_next_r = ps_r + 'd4;
                // Geri kalan buyrugu sakla
                buyruk_buffer_next_r = l1b_buy_i[31:16];
                // Buyruk buffer'inda saklanan buyruk compressed mi?
                buyruk_buffer_comp_next_r = l1b_buy_i[17:16]~=2'b11;
                // Buyruk buffer'i bir sonraki cevrimde gecerli
                buyruk_buffer_gecerli_next_r = 1'b1;
            end
            // Buyruk Compressed degil ve buyruk bufferi gecersiz
            else if() begin 
                // Bir sonraki cevrim icin ps
                ps_next_r = ps_r + 'd4;
                // Buyruk bufferi bir sonraki cevrim icin bos
                buyruk_buffer_next_r = 16'd0;
                buyruk_buffer_comp_next_r = 1'b0;
                buyruk_buffer_gecerli_next_r = 1'b0;
            end
            // Buyruk Compressed ve buyruk bufferi gecersiz
            else begin
                // Bir sonraki cevrim icin ps
                ps_next_r = ps_r + 'd2;
                // Geri kalan buyrugu sakla
                buyruk_buffer_next_r = l1b_buy_i[31:16];
                // Buyruk buffer'inda saklanan buyruk compressed mi?
                buyruk_buffer_comp_next_r = l1b_buy_i[17:16]~=2'b11;
                // Buyruk buffer'i bir sonraki cevrimde gecerli
                buyruk_buffer_gecerli_next_r = 1'b1;
            end
        end

        // Dallanma birimi gecerli, dallanma buyrugu coze verilecek ve sonrasinda atlanan
        // adresteki buyruk l1'den alinacak
        if(!l1b_duraklat_i && buyruk_db_etkin_w && dob_ongoru_atlar) begin
            // Bir sonraki cevrim coze dallanma buyrugu verilecek
            coz_ps_next_r = ps_r + (buyruk_comp_w ? 'd2 : 'd4);
            coz_buyruk_next_r = buyruk_w;
            coz_gecerli_next_r = 1'b1;
            // Bir sonraki cevrim Getir atlanan buyrugu isleyecek
            ps_next_r = dob_yeni_ps;
            buyruk_buffer_next_r = 16'd0;
            buyruk_buffer_comp_next_r = 1'b0;
            buyruk_buffer_gecerli_next_r = 1'b0;
        end
    end

    always @(posedge clk_i) begin
        if (rst_i) begin
            ps_r = 'd0;
            buyruk_buffer_comp_r = 1'b0;
            buyruk_buffer_gecerli_r = 1'b0;
            buyruk_buffer_r = 'd0;
            coz_gecerli_r = 1'b0;
            coz_buyruk_r = 'd0;
        end
        else begin
            ps_r = ps_next_r;
            buyruk_buffer_comp_r = buyruk_buffer_comp_next_r;
            buyruk_buffer_gecerli_r = buyruk_buffer_gecerli_next_r;
            buyruk_buffer_r = buyruk_buffer_next_r;
            coz_gecerli_r = coz_gecerli_next_r;
            coz_buyruk_r = coz_buyruk_next_r;
        end
    end
endmodule
