// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Wed Nov 04 15:15:50 2020
//
// Verilog Description of module Key_Input
//

module Key_Input (row, col, independent_keys, seg1, seg2, clk);   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(4[8:17])
    output [3:0]row;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[8:11])
    input [3:0]col;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(8[8:11])
    input [3:0]independent_keys;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(9[3:19])
    output [6:0]seg1;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:7])
    output [6:0]seg2;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:7])
    input clk;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(12[3:6])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(12[3:6])
    wire seg1_6__N_154 /* synthesis is_clock=1, SET_AS_NETWORK=\decoder/seg1_6__N_154 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(7[3:7])
    
    wire row_c_3, row_c_2, row_c_1, row_c_0, col_c_3, col_c_2, col_c_1, 
        col_c_0, independent_keys_c_3, independent_keys_c_2, independent_keys_c_1, 
        independent_keys_c_0, n582, seg1_c, GND_net, seg1_c_3, seg1_c_0, 
        seg2_c_6, seg2_c_5, seg2_c_4, seg2_c_3, seg2_c_2, seg2_c_1, 
        seg2_c_0;
    wire [19:0]key_id;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(37[8:14])
    
    wire VCC_net, seg1_6__N_129, seg1_6__N_152, seg1_6__N_153, seg2_6__N_155, 
        seg2_6__N_156, seg2_6__N_157, seg2_6__N_158, seg2_6__N_159, 
        seg2_6__N_160, seg2_6__N_161, n4190, n6, n4262, n4261, n4103, 
        n4259, n4, n1278, n1284, n4363, n4321, n1311, n4320, 
        n4318, n1315, n4353, n4_adj_171, n4313, n4312, n1370, 
        n1283, n1348, n1400, n1421, n4467, n1310, n1313, n4311, 
        n4338;
    
    VHI i5 (.Z(VCC_net));
    OB row_pad_2 (.I(row_c_2), .O(row[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[8:11])
    OB row_pad_3 (.I(row_c_3), .O(row[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[8:11])
    LUT4 m1_lut (.Z(n4467)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    GSR GSR_INST (.GSR(VCC_net));
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB row_pad_1 (.I(row_c_1), .O(row[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[8:11])
    key_pressing_detector detector (.col_c_0(col_c_0), .key_id({key_id}), 
            .independent_keys_c_0(independent_keys_c_0), .clk_c(clk_c), 
            .row_c_0(row_c_0), .GND_net(GND_net), .n4312(n4312), .seg2_6__N_158(seg2_6__N_158), 
            .n1370(n1370), .n1315(n1315), .n4190(n4190), .n4318(n4318), 
            .seg2_6__N_160(seg2_6__N_160), .n1284(n1284), .n1311(n1311), 
            .n1348(n1348), .n1283(n1283), .n1310(n1310), .n4(n4), .n4353(n4353), 
            .seg1_6__N_154(seg1_6__N_154), .n6(n6), .n4338(n4338), .n4_adj_2(n4_adj_171), 
            .n1278(n1278), .n4313(n4313), .seg2_6__N_157(seg2_6__N_157), 
            .n1313(n1313), .seg2_6__N_156(seg2_6__N_156), .seg2_6__N_155(seg2_6__N_155), 
            .n1400(n1400), .n4311(n4311), .seg1_6__N_152(seg1_6__N_152), 
            .n4321(n4321), .n4363(n4363), .n1421(n1421), .seg1_6__N_129(seg1_6__N_129), 
            .n4103(n4103), .n4262(n4262), .seg1_6__N_153(seg1_6__N_153), 
            .n4320(n4320), .seg2_6__N_159(seg2_6__N_159), .independent_keys_c_2(independent_keys_c_2), 
            .independent_keys_c_3(independent_keys_c_3), .independent_keys_c_1(independent_keys_c_1), 
            .seg2_6__N_161(seg2_6__N_161), .n4467(n4467), .col_c_3(col_c_3), 
            .n4259(n4259), .n4261(n4261), .col_c_2(col_c_2), .col_c_1(col_c_1), 
            .row_c_3(row_c_3), .row_c_2(row_c_2), .row_c_1(row_c_1));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(40[12:33])
    segment_led_decoder decoder (.seg1_c_0(seg1_c_0), .seg1_6__N_154(seg1_6__N_154), 
            .seg1_6__N_153(seg1_6__N_153), .seg2_c_0(seg2_c_0), .seg2_6__N_161(seg2_6__N_161), 
            .seg2_c_1(seg2_c_1), .seg2_6__N_160(seg2_6__N_160), .seg2_c_2(seg2_c_2), 
            .seg2_6__N_159(seg2_6__N_159), .seg2_c_3(seg2_c_3), .seg2_6__N_158(seg2_6__N_158), 
            .seg2_c_4(seg2_c_4), .seg2_6__N_157(seg2_6__N_157), .seg2_c_5(seg2_c_5), 
            .seg2_6__N_156(seg2_6__N_156), .seg2_c_6(seg2_c_6), .seg2_6__N_155(seg2_6__N_155), 
            .seg1_c_3(seg1_c_3), .seg1_6__N_152(seg1_6__N_152), .seg1_c(seg1_c), 
            .n582(n582), .seg1_6__N_129(seg1_6__N_129), .key_id({key_id}), 
            .n4338(n4338), .n4321(n4321), .n1278(n1278), .n4(n4), .n4320(n4320), 
            .n1315(n1315), .n1313(n1313), .n1400(n1400), .n4353(n4353), 
            .n1284(n1284), .n1421(n1421), .n6(n6), .n4363(n4363), .n4259(n4259), 
            .n1370(n1370), .n1283(n1283), .n1348(n1348), .n4190(n4190), 
            .n4312(n4312), .n4313(n4313), .n4311(n4311), .n1310(n1310), 
            .n4261(n4261), .n4262(n4262), .n4318(n4318), .n4_adj_1(n4_adj_171), 
            .n1311(n1311), .n4103(n4103));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[11:30])
    OB row_pad_0 (.I(row_c_0), .O(row[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[8:11])
    OB seg1_pad_6 (.I(n582), .O(seg1[6]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:7])
    OB seg1_pad_5 (.I(seg1_c), .O(seg1[5]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:7])
    OB seg1_pad_4 (.I(seg1_c), .O(seg1[4]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:7])
    OB seg1_pad_3 (.I(seg1_c_3), .O(seg1[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:7])
    OB seg1_pad_2 (.I(n582), .O(seg1[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:7])
    OB seg1_pad_1 (.I(n582), .O(seg1[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:7])
    OB seg1_pad_0 (.I(seg1_c_0), .O(seg1[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:7])
    OB seg2_pad_6 (.I(seg2_c_6), .O(seg2[6]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:7])
    OB seg2_pad_5 (.I(seg2_c_5), .O(seg2[5]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:7])
    OB seg2_pad_4 (.I(seg2_c_4), .O(seg2[4]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:7])
    OB seg2_pad_3 (.I(seg2_c_3), .O(seg2[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:7])
    OB seg2_pad_2 (.I(seg2_c_2), .O(seg2[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:7])
    OB seg2_pad_1 (.I(seg2_c_1), .O(seg2[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:7])
    OB seg2_pad_0 (.I(seg2_c_0), .O(seg2[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:7])
    IB col_pad_3 (.I(col[3]), .O(col_c_3));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(8[8:11])
    IB col_pad_2 (.I(col[2]), .O(col_c_2));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(8[8:11])
    IB col_pad_1 (.I(col[1]), .O(col_c_1));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(8[8:11])
    IB col_pad_0 (.I(col[0]), .O(col_c_0));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(8[8:11])
    IB independent_keys_pad_3 (.I(independent_keys[3]), .O(independent_keys_c_3));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(9[3:19])
    IB independent_keys_pad_2 (.I(independent_keys[2]), .O(independent_keys_c_2));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(9[3:19])
    IB independent_keys_pad_1 (.I(independent_keys[1]), .O(independent_keys_c_1));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(9[3:19])
    IB independent_keys_pad_0 (.I(independent_keys[0]), .O(independent_keys_c_0));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(9[3:19])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(12[3:6])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module key_pressing_detector
//

module key_pressing_detector (col_c_0, key_id, independent_keys_c_0, clk_c, 
            row_c_0, GND_net, n4312, seg2_6__N_158, n1370, n1315, 
            n4190, n4318, seg2_6__N_160, n1284, n1311, n1348, n1283, 
            n1310, n4, n4353, seg1_6__N_154, n6, n4338, n4_adj_2, 
            n1278, n4313, seg2_6__N_157, n1313, seg2_6__N_156, seg2_6__N_155, 
            n1400, n4311, seg1_6__N_152, n4321, n4363, n1421, seg1_6__N_129, 
            n4103, n4262, seg1_6__N_153, n4320, seg2_6__N_159, independent_keys_c_2, 
            independent_keys_c_3, independent_keys_c_1, seg2_6__N_161, 
            n4467, col_c_3, n4259, n4261, col_c_2, col_c_1, row_c_3, 
            row_c_2, row_c_1);
    input col_c_0;
    output [19:0]key_id;
    input independent_keys_c_0;
    input clk_c;
    output row_c_0;
    input GND_net;
    input n4312;
    output seg2_6__N_158;
    input n1370;
    input n1315;
    input n4190;
    input n4318;
    output seg2_6__N_160;
    input n1284;
    input n1311;
    input n1348;
    input n1283;
    input n1310;
    input n4;
    input n4353;
    input seg1_6__N_154;
    input n6;
    input n4338;
    input n4_adj_2;
    input n1278;
    input n4313;
    output seg2_6__N_157;
    input n1313;
    output seg2_6__N_156;
    output seg2_6__N_155;
    input n1400;
    input n4311;
    output seg1_6__N_152;
    input n4321;
    input n4363;
    input n1421;
    output seg1_6__N_129;
    input n4103;
    input n4262;
    output seg1_6__N_153;
    input n4320;
    output seg2_6__N_159;
    input independent_keys_c_2;
    input independent_keys_c_3;
    input independent_keys_c_1;
    output seg2_6__N_161;
    input n4467;
    input col_c_3;
    input n4259;
    output n4261;
    input col_c_2;
    input col_c_1;
    output row_c_3;
    output row_c_2;
    output row_c_1;
    
    wire apa /* synthesis SET_AS_NETWORK=\detector/apa, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(21[8:11])
    wire apa_N_6 /* synthesis is_inv_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(8[3:6])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(12[3:6])
    wire seg1_6__N_154 /* synthesis is_clock=1, SET_AS_NETWORK=\decoder/seg1_6__N_154 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(7[3:7])
    wire [15:0]key_out;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(22[8:15])
    
    wire key_out_15__N_72, apa_enable_1;
    wire [19:0]key_id_19__N_11;
    wire [3:0]BTN_cache;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(23[8:17])
    
    wire BTN_cache_3__N_83, apa_enable_19, n1598;
    wire [19:0]key_id_19__N_109;
    wire [2:0]num_cnt;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(20[8:15])
    
    wire n567, n4131;
    wire [16:0]clk_cnt;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(17[8:15])
    wire [16:0]n73;
    wire [3:0]row_3__N_1;
    
    wire n13, n33, n4465, n4352, n3633, n3634, n4359, n4337, 
        n2476, n2428, n4316, n1211, n3955, n4260, n3660, n4089, 
        n4127, n3946, n8, n3632, n3630, n3631, n3637, n3988, 
        n3635, n4344, n4243;
    wire [4:0]LED_get;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(19[8:15])
    
    wire n89;
    wire [4:0]n25;
    
    wire n4010, n4367, n2325, n3954, n2381, n4265, n4018, n4360, 
        n3998, n4016, n4266, n3636, n4017, n3952, n4113, n9, 
        n3999, n4144, n4083, n6_adj_165, n4366, n3, n4362, n4347, 
        n6_adj_166, n4129, n8_adj_167, clk_c_enable_1, n4091, n4355, 
        n4340, n4343, n3978, n3975, n3868, n21, apa_enable_15, 
        apa_enable_20, n4268, n4021, n4350, n4365, n4019, n4358, 
        n4354, n3994, n4267, key_out_15__N_67, n4364, n4361, n4095, 
        n6_adj_168, n2, n4244, n3758, n4_adj_169, n4237, n74_adj_170, 
        n4351, n4368, n4230, key_out_15__N_62, key_out_15__N_57, apa_N_10, 
        n3944, n10;
    
    FD1P3AX key_out_i0 (.D(col_c_0), .SP(key_out_15__N_72), .CK(apa), 
            .Q(key_out[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_out_i0.GSR = "ENABLED";
    INV i3854 (.A(apa), .Z(apa_N_6));
    FD1P3AX key_id_i3 (.D(key_id_19__N_11[3]), .SP(apa_enable_1), .CK(apa), 
            .Q(key_id[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_id_i3.GSR = "ENABLED";
    FD1P3AX BTN_cache_i0_i0 (.D(independent_keys_c_0), .SP(BTN_cache_3__N_83), 
            .CK(apa), .Q(BTN_cache[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam BTN_cache_i0_i0.GSR = "ENABLED";
    FD1P3IX key_id_i4 (.D(key_id_19__N_109[4]), .SP(apa_enable_19), .CD(n1598), 
            .CK(apa), .Q(key_id[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_id_i4.GSR = "ENABLED";
    FD1S3IX num_cnt__i0 (.D(n4131), .CK(clk_c), .CD(n567), .Q(num_cnt[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(28[2] 41[10])
    defparam num_cnt__i0.GSR = "ENABLED";
    FD1S3AX clk_cnt_154__i0 (.D(n73[0]), .CK(clk_c), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154__i0.GSR = "ENABLED";
    FD1S3AX row_i1 (.D(row_3__N_1[0]), .CK(apa_N_6), .Q(row_c_0)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(46[2] 54[9])
    defparam row_i1.GSR = "ENABLED";
    FD1P3IX key_id_i16 (.D(key_id_19__N_109[16]), .SP(apa_enable_19), .CD(n1598), 
            .CK(apa), .Q(key_id[16])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_id_i16.GSR = "ENABLED";
    LUT4 i1_4_lut_rep_72 (.A(n13), .B(n33), .C(n4465), .D(n4352), .Z(apa_enable_19)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i1_4_lut_rep_72.init = 16'h0aca;
    CCU2D clk_cnt_154_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3633), .COUT(n3634), .S0(n73[7]), .S1(n73[8]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_154_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_154_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_154_add_4_9.INJECT1_1 = "NO";
    LUT4 i3752_3_lut_4_lut (.A(n4359), .B(n4337), .C(key_out[14]), .D(key_out[13]), 
         .Z(key_id_19__N_109[17])) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3752_3_lut_4_lut.init = 16'h0080;
    LUT4 i3750_3_lut_4_lut (.A(n4359), .B(n4337), .C(key_out[14]), .D(key_out[13]), 
         .Z(key_id_19__N_109[18])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3750_3_lut_4_lut.init = 16'h0800;
    LUT4 i27_4_lut_4_lut (.A(BTN_cache[2]), .B(BTN_cache[1]), .C(BTN_cache[0]), 
         .D(BTN_cache[3]), .Z(n13)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam i27_4_lut_4_lut.init = 16'h6880;
    LUT4 i1_2_lut_3_lut (.A(n4312), .B(n2476), .C(n2428), .Z(seg2_6__N_158)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_rep_55 (.A(n1370), .B(n1315), .C(key_id[0]), .D(key_id[2]), 
         .Z(n4316)) /* synthesis lut_function=(A (B+(C+!(D)))) */ ;
    defparam i1_4_lut_rep_55.init = 16'ha8aa;
    LUT4 i1_2_lut_rep_105 (.A(n1211), .B(BTN_cache_3__N_83), .Z(n4465)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(93[6:34])
    defparam i1_2_lut_rep_105.init = 16'heeee;
    LUT4 i1188_2_lut_2_lut_3_lut (.A(n1211), .B(BTN_cache_3__N_83), .C(n13), 
         .Z(n1598)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(93[6:34])
    defparam i1188_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i3785_4_lut (.A(n4190), .B(n3955), .C(n2428), .D(n4318), .Z(seg2_6__N_160)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i3785_4_lut.init = 16'hbfff;
    LUT4 i2_3_lut (.A(n1284), .B(n1311), .C(n1348), .Z(n3955)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i2_4_lut (.A(n1283), .B(n1310), .C(n1315), .D(n4), .Z(n2428)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut.init = 16'h8880;
    LUT4 n1363_bdd_4_lut (.A(n4353), .B(key_id[0]), .C(key_id[1]), .D(key_id[2]), 
         .Z(n4260)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam n1363_bdd_4_lut.init = 16'h0114;
    LUT4 i3_4_lut (.A(seg1_6__N_154), .B(n6), .C(n4338), .D(n4_adj_2), 
         .Z(n2476)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3_4_lut.init = 16'h8880;
    LUT4 i3720_4_lut (.A(n3660), .B(clk_cnt[9]), .C(n4089), .D(clk_cnt[13]), 
         .Z(n4127)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3720_4_lut.init = 16'h8000;
    LUT4 i3_3_lut (.A(n3946), .B(clk_cnt[7]), .C(clk_cnt[16]), .Z(n8)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(29[6:21])
    defparam i3_3_lut.init = 16'hfefe;
    FD1P3IX key_id_i5 (.D(key_id_19__N_109[5]), .SP(apa_enable_19), .CD(n1598), 
            .CK(apa), .Q(key_id[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_id_i5.GSR = "ENABLED";
    CCU2D clk_cnt_154_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3632), .COUT(n3633), .S0(n73[5]), .S1(n73[6]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_154_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_154_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_154_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_154_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3630), .COUT(n3631), .S0(n73[1]), .S1(n73[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_154_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_154_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_154_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_154_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3637), .S0(n73[15]), .S1(n73[16]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_154_add_4_17.INIT1 = 16'hfaaa;
    defparam clk_cnt_154_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_154_add_4_17.INJECT1_1 = "NO";
    LUT4 i2_3_lut_adj_17 (.A(n3988), .B(key_out[12]), .C(n4337), .Z(key_id_19__N_109[16])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam i2_3_lut_adj_17.init = 16'h2020;
    LUT4 i2_3_lut_adj_18 (.A(key_out[5]), .B(key_out[13]), .C(key_out[14]), 
         .Z(n3988)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam i2_3_lut_adj_18.init = 16'h8080;
    CCU2D clk_cnt_154_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3634), .COUT(n3635), .S0(n73[9]), .S1(n73[10]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_154_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_154_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_154_add_4_11.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_76_4_lut (.A(key_out[6]), .B(n4344), .C(key_out[3]), 
         .D(n4243), .Z(n4337)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam i2_3_lut_rep_76_4_lut.init = 16'h8000;
    FD1S3IX LED_get_155__i0 (.D(n25[0]), .CK(apa), .CD(n89), .Q(LED_get[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(107[15:22])
    defparam LED_get_155__i0.GSR = "ENABLED";
    LUT4 i1_4_lut_then_4_lut (.A(n4010), .B(key_out[9]), .C(key_out[8]), 
         .D(key_out[11]), .Z(n4367)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(72[4] 90[13])
    defparam i1_4_lut_then_4_lut.init = 16'h2880;
    LUT4 i1921_2_lut (.A(key_out[2]), .B(key_out[1]), .Z(n2325)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1921_2_lut.init = 16'h8888;
    LUT4 i3782_2_lut_4_lut (.A(BTN_cache[3]), .B(BTN_cache[2]), .C(n4465), 
         .D(BTN_cache[1]), .Z(key_id_19__N_11[1])) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i3782_2_lut_4_lut.init = 16'h0008;
    LUT4 i3772_3_lut (.A(key_out[1]), .B(n3954), .C(key_out[0]), .Z(key_id_19__N_109[5])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(87[9:27])
    defparam i3772_3_lut.init = 16'h4040;
    LUT4 i1_2_lut (.A(n1211), .B(BTN_cache_3__N_83), .Z(n89)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(93[6:34])
    defparam i1_2_lut.init = 16'hdddd;
    LUT4 i3203_1_lut (.A(LED_get[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(107[15:22])
    defparam i3203_1_lut.init = 16'h5555;
    LUT4 i2_3_lut_adj_19 (.A(n1278), .B(n4313), .C(n1348), .Z(n2381)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_19.init = 16'h8080;
    LUT4 key_out_15__bdd_4_lut (.A(key_out[15]), .B(key_out[14]), .C(key_out[13]), 
         .D(key_out[12]), .Z(n4265)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam key_out_15__bdd_4_lut.init = 16'h6880;
    LUT4 i3770_3_lut (.A(key_out[3]), .B(n4018), .C(key_out[2]), .Z(key_id_19__N_109[6])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(86[9:27])
    defparam i3770_3_lut.init = 16'h0808;
    LUT4 i3_4_lut_adj_20 (.A(n4360), .B(n3998), .C(n3988), .D(n4016), 
         .Z(n4018)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam i3_4_lut_adj_20.init = 16'h8000;
    LUT4 key_out_0__bdd_4_lut (.A(key_out[0]), .B(key_out[3]), .C(key_out[2]), 
         .D(key_out[1]), .Z(n4266)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam key_out_0__bdd_4_lut.init = 16'h6880;
    LUT4 i3205_2_lut (.A(LED_get[1]), .B(LED_get[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(107[15:22])
    defparam i3205_2_lut.init = 16'h6666;
    LUT4 i3768_3_lut (.A(key_out[2]), .B(n4018), .C(key_out[3]), .Z(key_id_19__N_109[7])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(85[9:27])
    defparam i3768_3_lut.init = 16'h0808;
    CCU2D clk_cnt_154_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3636), .COUT(n3637), .S0(n73[13]), .S1(n73[14]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_154_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_154_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_154_add_4_15.INJECT1_1 = "NO";
    LUT4 i3766_3_lut (.A(key_out[5]), .B(n4017), .C(key_out[4]), .Z(key_id_19__N_109[8])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(84[9:27])
    defparam i3766_3_lut.init = 16'h0808;
    CCU2D clk_cnt_154_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3635), .COUT(n3636), .S0(n73[11]), .S1(n73[12]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_154_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_154_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_154_add_4_13.INJECT1_1 = "NO";
    LUT4 i2_3_lut_adj_21 (.A(n4316), .B(seg1_6__N_154), .C(n1278), .Z(seg2_6__N_157)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_21.init = 16'h8080;
    LUT4 i2_3_lut_adj_22 (.A(n3955), .B(seg1_6__N_154), .C(n1313), .Z(seg2_6__N_156)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_22.init = 16'h8080;
    LUT4 i2_3_lut_adj_23 (.A(n4016), .B(n3952), .C(key_out[0]), .Z(n4017)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_23.init = 16'h8080;
    LUT4 i2104_2_lut (.A(n2428), .B(n2476), .Z(seg2_6__N_155)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2104_2_lut.init = 16'h8888;
    LUT4 i6_4_lut (.A(n4113), .B(n9), .C(n1400), .D(n4311), .Z(seg1_6__N_152)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i6_4_lut.init = 16'hdfff;
    LUT4 i3764_3_lut (.A(key_out[5]), .B(n4017), .C(key_out[4]), .Z(key_id_19__N_109[9])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(83[9:27])
    defparam i3764_3_lut.init = 16'h4040;
    LUT4 i3762_3_lut (.A(key_out[7]), .B(n3999), .C(key_out[6]), .Z(key_id_19__N_109[10])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(82[9:27])
    defparam i3762_3_lut.init = 16'h0808;
    CCU2D clk_cnt_154_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3630), .S1(n73[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_154_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_154_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_154_add_4_1.INJECT1_1 = "NO";
    CCU2D clk_cnt_154_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3631), .COUT(n3632), .S0(n73[3]), .S1(n73[4]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_154_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_154_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_154_add_4_5.INJECT1_1 = "NO";
    LUT4 i3706_3_lut (.A(n1283), .B(n2381), .C(n1284), .Z(n4113)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3706_3_lut.init = 16'h8080;
    LUT4 i2_4_lut_adj_24 (.A(n4312), .B(n4321), .C(n4363), .D(key_id[17]), 
         .Z(n9)) /* synthesis lut_function=(!(A (B+(C+!(D))))) */ ;
    defparam i2_4_lut_adj_24.init = 16'h5755;
    LUT4 i3738_4_lut (.A(n4144), .B(n1421), .C(n4083), .D(n1311), .Z(seg1_6__N_129)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(72[4] 90[13])
    defparam i3738_4_lut.init = 16'h8000;
    LUT4 i3737_4_lut (.A(n1310), .B(seg1_6__N_154), .C(key_id[7]), .D(n4103), 
         .Z(n4144)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(72[4] 90[13])
    defparam i3737_4_lut.init = 16'h8808;
    LUT4 i4_4_lut (.A(key_out[15]), .B(n3998), .C(n2325), .D(n6_adj_165), 
         .Z(n3999)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i3760_3_lut (.A(key_out[7]), .B(n3999), .C(key_out[6]), .Z(key_id_19__N_109[11])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(81[9:27])
    defparam i3760_3_lut.init = 16'h4040;
    LUT4 i1_4_lut_else_4_lut (.A(n4010), .B(key_out[9]), .C(key_out[8]), 
         .D(key_out[11]), .Z(n4366)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(72[4] 90[13])
    defparam i1_4_lut_else_4_lut.init = 16'h8000;
    LUT4 i131_2_lut (.A(num_cnt[0]), .B(num_cnt[1]), .Z(n3)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(33[16:23])
    defparam i131_2_lut.init = 16'h6666;
    LUT4 i4_4_lut_adj_25 (.A(n4362), .B(n4347), .C(key_out[15]), .D(n6_adj_166), 
         .Z(key_id_19__N_109[19])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam i4_4_lut_adj_25.init = 16'h0800;
    LUT4 i3742_4_lut (.A(n4129), .B(clk_cnt[5]), .C(n8_adj_167), .D(clk_cnt[11]), 
         .Z(clk_c_enable_1)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(36[9:25])
    defparam i3742_4_lut.init = 16'h0002;
    LUT4 i3722_4_lut (.A(n3660), .B(clk_cnt[12]), .C(n4091), .D(clk_cnt[7]), 
         .Z(n4129)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3722_4_lut.init = 16'h8000;
    LUT4 i3_3_lut_adj_26 (.A(n3946), .B(clk_cnt[9]), .C(clk_cnt[13]), 
         .Z(n8_adj_167)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(29[6:21])
    defparam i3_3_lut_adj_26.init = 16'hfefe;
    LUT4 i3684_2_lut (.A(clk_cnt[10]), .B(clk_cnt[16]), .Z(n4091)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3684_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_79_3_lut_4_lut (.A(n2325), .B(n4355), .C(key_out[6]), 
         .D(n4360), .Z(n4340)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_79_3_lut_4_lut.init = 16'h8000;
    LUT4 i3774_3_lut (.A(key_out[1]), .B(n3954), .C(key_out[0]), .Z(key_id_19__N_109[4])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(88[9:27])
    defparam i3774_3_lut.init = 16'h0808;
    LUT4 i3791_3_lut_rep_82_4_lut (.A(n1211), .B(BTN_cache_3__N_83), .C(BTN_cache[2]), 
         .D(BTN_cache[3]), .Z(n4343)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(93[6:34])
    defparam i3791_3_lut_rep_82_4_lut.init = 16'h1000;
    LUT4 n4262_bdd_2_lut (.A(n4262), .B(key_id[4]), .Z(seg1_6__N_153)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n4262_bdd_2_lut.init = 16'h2222;
    LUT4 i26_3_lut_4_lut (.A(n1211), .B(BTN_cache_3__N_83), .C(n3978), 
         .D(n13), .Z(apa_enable_1)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(93[6:34])
    defparam i26_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_4_lut (.A(BTN_cache[1]), .B(n3978), .C(n3975), .D(n4465), 
         .Z(n3868)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam i1_4_lut.init = 16'h4450;
    LUT4 i38_3_lut_4_lut (.A(n1211), .B(BTN_cache_3__N_83), .C(n21), .D(n3978), 
         .Z(apa_enable_15)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(93[6:34])
    defparam i38_3_lut_4_lut.init = 16'hfe10;
    LUT4 i3794_2_lut_3_lut (.A(n1211), .B(BTN_cache_3__N_83), .C(BTN_cache[3]), 
         .Z(key_id_19__N_11[3])) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(93[6:34])
    defparam i3794_2_lut_3_lut.init = 16'h0101;
    LUT4 i41_3_lut_4_lut (.A(n1211), .B(BTN_cache_3__N_83), .C(n3978), 
         .D(n21), .Z(apa_enable_20)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(93[6:34])
    defparam i41_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_3_lut_4_lut (.A(n1211), .B(BTN_cache_3__N_83), .C(BTN_cache[2]), 
         .D(BTN_cache[3]), .Z(key_id_19__N_11[2])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(93[6:34])
    defparam i2_3_lut_4_lut.init = 16'h0100;
    LUT4 key_out_5__bdd_4_lut (.A(key_out[5]), .B(key_out[4]), .C(key_out[6]), 
         .D(key_out[7]), .Z(n4268)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam key_out_5__bdd_4_lut.init = 16'h6880;
    LUT4 i3758_3_lut (.A(key_out[9]), .B(n4021), .C(key_out[8]), .Z(key_id_19__N_109[12])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(80[9:27])
    defparam i3758_3_lut.init = 16'h0808;
    LUT4 i3_4_lut_adj_27 (.A(n4350), .B(n4365), .C(n2325), .D(n4019), 
         .Z(n4021)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_27.init = 16'h8000;
    LUT4 i3756_3_lut (.A(key_out[9]), .B(n4021), .C(key_out[8]), .Z(key_id_19__N_109[13])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(79[9:27])
    defparam i3756_3_lut.init = 16'h4040;
    LUT4 i3788_3_lut_3_lut_4_lut (.A(n1313), .B(n4320), .C(n2381), .D(n4316), 
         .Z(seg2_6__N_159)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i3788_3_lut_3_lut_4_lut.init = 16'h7fff;
    LUT4 i2_3_lut_4_lut_adj_28 (.A(n4359), .B(n4358), .C(n3952), .D(key_out[4]), 
         .Z(n3954)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam i2_3_lut_4_lut_adj_28.init = 16'h8000;
    LUT4 i3754_4_lut (.A(n4354), .B(key_out[11]), .C(n4340), .D(key_out[10]), 
         .Z(key_id_19__N_109[14])) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(78[9:27])
    defparam i3754_4_lut.init = 16'h0080;
    LUT4 i3_4_lut_adj_29 (.A(key_out[11]), .B(n3994), .C(n4350), .D(n4344), 
         .Z(key_id_19__N_109[15])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam i3_4_lut_adj_29.init = 16'h4000;
    LUT4 n39_bdd_2_lut_3801_4_lut (.A(n4362), .B(key_out[5]), .C(key_out[4]), 
         .D(n4266), .Z(n4267)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(72[4] 90[13])
    defparam n39_bdd_2_lut_3801_4_lut.init = 16'h8000;
    LUT4 i3740_3_lut (.A(num_cnt[1]), .B(num_cnt[2]), .C(num_cnt[0]), 
         .Z(key_out_15__N_67)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(66[6:17])
    defparam i3740_3_lut.init = 16'h0202;
    LUT4 i3732_3_lut (.A(num_cnt[0]), .B(num_cnt[1]), .C(num_cnt[2]), 
         .Z(row_3__N_1[1])) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(47[3] 53[12])
    defparam i3732_3_lut.init = 16'hfbfb;
    LUT4 i3676_2_lut_3_lut (.A(n1313), .B(n4320), .C(n1370), .Z(n4083)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3676_2_lut_3_lut.init = 16'h8080;
    LUT4 i3226_3_lut_4_lut (.A(LED_get[2]), .B(n4364), .C(LED_get[3]), 
         .D(LED_get[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(107[15:22])
    defparam i3226_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut_rep_83_3_lut_4_lut (.A(n4365), .B(n4361), .C(n4360), 
         .D(n2325), .Z(n4344)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_83_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_30 (.A(LED_get[0]), .B(LED_get[2]), .C(n4095), .D(LED_get[3]), 
         .Z(n1211)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i1_4_lut_adj_30.init = 16'hbfff;
    LUT4 i3688_2_lut (.A(LED_get[1]), .B(LED_get[4]), .Z(n4095)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3688_2_lut.init = 16'h8888;
    LUT4 i3_4_lut_adj_31 (.A(independent_keys_c_0), .B(n6_adj_168), .C(n2), 
         .D(BTN_cache[0]), .Z(BTN_cache_3__N_83)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(93[6:34])
    defparam i3_4_lut_adj_31.init = 16'hfdfe;
    LUT4 i1_4_lut_adj_32 (.A(n4244), .B(n3758), .C(n4_adj_169), .D(n4237), 
         .Z(n33)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(72[4] 90[13])
    defparam i1_4_lut_adj_32.init = 16'heccc;
    LUT4 i2_4_lut_adj_33 (.A(n4010), .B(n74_adj_170), .C(n4243), .D(n4361), 
         .Z(n3758)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(72[4] 90[13])
    defparam i2_4_lut_adj_33.init = 16'h8000;
    LUT4 i2_4_lut_adj_34 (.A(independent_keys_c_2), .B(independent_keys_c_3), 
         .C(BTN_cache[2]), .D(BTN_cache[3]), .Z(n6_adj_168)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(93[6:34])
    defparam i2_4_lut_adj_34.init = 16'h7bde;
    LUT4 i1_4_lut_adj_35 (.A(n4265), .B(n4351), .C(n4368), .D(n4230), 
         .Z(n4_adj_169)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(72[4] 90[13])
    defparam i1_4_lut_adj_35.init = 16'hc8c0;
    LUT4 i1_2_lut_rep_97 (.A(key_out[6]), .B(key_out[10]), .Z(n4358)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam i1_2_lut_rep_97.init = 16'h8888;
    LUT4 i1_4_lut_adj_36 (.A(n4268), .B(n4267), .C(n4244), .D(n4237), 
         .Z(n74_adj_170)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(72[4] 90[13])
    defparam i1_4_lut_adj_36.init = 16'heccc;
    LUT4 i1_rep_42_2_lut (.A(key_out[10]), .B(key_out[11]), .Z(n4243)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_rep_42_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_4_lut_adj_37 (.A(key_out[6]), .B(key_out[10]), .C(key_out[1]), 
         .D(key_out[12]), .Z(n4016)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam i2_3_lut_4_lut_adj_37.init = 16'h8000;
    LUT4 independent_keys_3__I_0_i2_2_lut (.A(independent_keys_c_1), .B(BTN_cache[1]), 
         .Z(n2)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(93[6:34])
    defparam independent_keys_3__I_0_i2_2_lut.init = 16'h6666;
    LUT4 i1_rep_43_2_lut (.A(key_out[3]), .B(key_out[2]), .Z(n4244)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam i1_rep_43_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_98 (.A(key_out[5]), .B(key_out[12]), .Z(n4359)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam i1_2_lut_rep_98.init = 16'h8888;
    LUT4 i4_rep_36_2_lut (.A(key_out[1]), .B(key_out[0]), .Z(n4237)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(72[4] 90[13])
    defparam i4_rep_36_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_89_3_lut_4_lut (.A(key_out[5]), .B(key_out[12]), .C(key_out[10]), 
         .D(key_out[6]), .Z(n4350)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam i1_2_lut_rep_89_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_93_3_lut (.A(key_out[5]), .B(key_out[12]), .C(n3994), 
         .Z(n4354)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam i1_2_lut_rep_93_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut (.A(key_out[5]), .B(key_out[12]), .C(key_out[10]), 
         .D(n3994), .Z(n6_adj_165)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_38 (.A(key_out[5]), .B(key_out[12]), .C(n4243), 
         .D(n3994), .Z(n6_adj_166)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam i1_2_lut_3_lut_4_lut_adj_38.init = 16'h8000;
    LUT4 i1_2_lut_rep_99 (.A(key_out[7]), .B(key_out[15]), .Z(n4360)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_99.init = 16'h8888;
    LUT4 i1_rep_29_4_lut (.A(key_out[10]), .B(key_out[9]), .C(key_out[11]), 
         .D(key_out[8]), .Z(n4230)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(72[4] 90[13])
    defparam i1_rep_29_4_lut.init = 16'h8000;
    LUT4 BTN_cache_2__bdd_4_lut (.A(BTN_cache[2]), .B(BTN_cache[3]), .C(BTN_cache[1]), 
         .D(BTN_cache[0]), .Z(n21)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam BTN_cache_2__bdd_4_lut.init = 16'h6880;
    LUT4 i1_3_lut_4_lut (.A(key_out[7]), .B(key_out[15]), .C(n3994), .D(key_out[11]), 
         .Z(n4019)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h8000;
    FD1S3IX LED_get_155__i4 (.D(n25[4]), .CK(apa), .CD(n89), .Q(LED_get[4]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(107[15:22])
    defparam LED_get_155__i4.GSR = "ENABLED";
    LUT4 i2_2_lut_rep_100 (.A(key_out[9]), .B(key_out[8]), .Z(n4361)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(72[4] 90[13])
    defparam i2_2_lut_rep_100.init = 16'h8888;
    LUT4 i1_2_lut_rep_86_3_lut_4_lut (.A(key_out[9]), .B(key_out[8]), .C(n2325), 
         .D(n4365), .Z(n4347)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(72[4] 90[13])
    defparam i1_2_lut_rep_86_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_39 (.A(key_out[9]), .B(key_out[8]), .C(key_out[11]), 
         .D(n4365), .Z(n3998)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(72[4] 90[13])
    defparam i1_2_lut_3_lut_4_lut_adj_39.init = 16'h8000;
    LUT4 i2_3_lut_4_lut_adj_40 (.A(key_out[9]), .B(key_out[8]), .C(n4019), 
         .D(key_out[2]), .Z(n3952)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(72[4] 90[13])
    defparam i2_3_lut_4_lut_adj_40.init = 16'h8000;
    LUT4 i1_2_lut_rep_101 (.A(key_out[6]), .B(key_out[7]), .Z(n4362)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam i1_2_lut_rep_101.init = 16'h8888;
    LUT4 i1_3_lut_rep_90_4_lut (.A(key_out[6]), .B(key_out[7]), .C(key_out[4]), 
         .D(key_out[5]), .Z(n4351)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam i1_3_lut_rep_90_4_lut.init = 16'h8000;
    LUT4 i2076_2_lut_3_lut (.A(num_cnt[2]), .B(num_cnt[1]), .C(num_cnt[0]), 
         .Z(row_3__N_1[3])) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2076_2_lut_3_lut.init = 16'hfefe;
    LUT4 i3730_2_lut_3_lut (.A(num_cnt[2]), .B(num_cnt[1]), .C(num_cnt[0]), 
         .Z(row_3__N_1[2])) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i3730_2_lut_3_lut.init = 16'hefef;
    LUT4 i1_2_lut_3_lut_adj_41 (.A(n4312), .B(n2476), .C(n4320), .Z(seg2_6__N_161)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_41.init = 16'h8080;
    LUT4 i3736_2_lut_3_lut (.A(num_cnt[2]), .B(num_cnt[0]), .C(num_cnt[1]), 
         .Z(key_out_15__N_72)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(64[6:17])
    defparam i3736_2_lut_3_lut.init = 16'h4040;
    LUT4 i3745_2_lut_3_lut (.A(num_cnt[2]), .B(num_cnt[0]), .C(num_cnt[1]), 
         .Z(key_out_15__N_62)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(64[6:17])
    defparam i3745_2_lut_3_lut.init = 16'h0404;
    FD1P3IX key_id_i6 (.D(key_id_19__N_109[6]), .SP(apa_enable_19), .CD(n1598), 
            .CK(apa), .Q(key_id[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_id_i6.GSR = "ENABLED";
    FD1P3IX key_id_i17 (.D(key_id_19__N_109[17]), .SP(apa_enable_19), .CD(n1598), 
            .CK(apa), .Q(key_id[17])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_id_i17.GSR = "ENABLED";
    LUT4 i3748_2_lut_3_lut (.A(num_cnt[0]), .B(num_cnt[1]), .C(num_cnt[2]), 
         .Z(key_out_15__N_57)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(70[6:17])
    defparam i3748_2_lut_3_lut.init = 16'h0101;
    LUT4 i1_3_lut_4_lut_adj_42 (.A(num_cnt[0]), .B(num_cnt[1]), .C(num_cnt[2]), 
         .D(n33), .Z(n3978)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(70[6:17])
    defparam i1_3_lut_4_lut_adj_42.init = 16'h1000;
    FD1S3IX LED_get_155__i3 (.D(n25[3]), .CK(apa), .CD(n89), .Q(LED_get[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(107[15:22])
    defparam LED_get_155__i3.GSR = "ENABLED";
    FD1S3IX LED_get_155__i2 (.D(n25[2]), .CK(apa), .CD(n89), .Q(LED_get[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(107[15:22])
    defparam LED_get_155__i2.GSR = "ENABLED";
    FD1S3IX LED_get_155__i1 (.D(n25[1]), .CK(apa), .CD(n89), .Q(LED_get[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(107[15:22])
    defparam LED_get_155__i1.GSR = "ENABLED";
    FD1S3AX clk_cnt_154__i16 (.D(n73[16]), .CK(clk_c), .Q(clk_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154__i16.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_91_3_lut (.A(num_cnt[0]), .B(num_cnt[1]), .C(num_cnt[2]), 
         .Z(n4352)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(70[6:17])
    defparam i1_2_lut_rep_91_3_lut.init = 16'hefef;
    LUT4 i3728_2_lut_2_lut_3_lut_4_lut (.A(num_cnt[0]), .B(num_cnt[1]), 
         .C(apa_N_10), .D(num_cnt[2]), .Z(n567)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(70[6:17])
    defparam i3728_2_lut_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_adj_43 (.A(BTN_cache[3]), .B(BTN_cache[2]), .C(BTN_cache[0]), 
         .Z(n3975)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_43.init = 16'h8080;
    LUT4 i1_4_lut_adj_44 (.A(key_out[14]), .B(key_out[12]), .C(key_out[15]), 
         .D(key_out[13]), .Z(n4010)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(72[4] 90[13])
    defparam i1_4_lut_adj_44.init = 16'h8000;
    LUT4 i3208_2_lut_rep_103 (.A(LED_get[1]), .B(LED_get[0]), .Z(n4364)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(107[15:22])
    defparam i3208_2_lut_rep_103.init = 16'h8888;
    LUT4 i3212_2_lut_3_lut (.A(LED_get[1]), .B(LED_get[0]), .C(LED_get[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(107[15:22])
    defparam i3212_2_lut_3_lut.init = 16'h7878;
    LUT4 i3219_2_lut_3_lut_4_lut (.A(LED_get[1]), .B(LED_get[0]), .C(LED_get[3]), 
         .D(LED_get[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(107[15:22])
    defparam i3219_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_3_lut (.A(key_out[13]), .B(key_out[3]), .C(key_out[14]), .Z(n3994)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam i1_3_lut.init = 16'h8080;
    FD1P3IX key_id_i7 (.D(key_id_19__N_109[7]), .SP(apa_enable_19), .CD(n1598), 
            .CK(apa), .Q(key_id[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_id_i7.GSR = "ENABLED";
    FD1P3IX key_id_i8 (.D(key_id_19__N_109[8]), .SP(apa_enable_19), .CD(n1598), 
            .CK(apa), .Q(key_id[8])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_id_i8.GSR = "ENABLED";
    FD1P3IX key_id_i9 (.D(key_id_19__N_109[9]), .SP(apa_enable_19), .CD(n1598), 
            .CK(apa), .Q(key_id[9])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_id_i9.GSR = "ENABLED";
    FD1P3IX key_id_i10 (.D(key_id_19__N_109[10]), .SP(apa_enable_19), .CD(n1598), 
            .CK(apa), .Q(key_id[10])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_id_i10.GSR = "ENABLED";
    FD1P3IX key_id_i11 (.D(key_id_19__N_109[11]), .SP(apa_enable_19), .CD(n1598), 
            .CK(apa), .Q(key_id[11])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_id_i11.GSR = "ENABLED";
    FD1P3IX key_id_i18 (.D(key_id_19__N_109[18]), .SP(apa_enable_19), .CD(n1598), 
            .CK(apa), .Q(key_id[18])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_id_i18.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_104 (.A(key_out[0]), .B(key_out[4]), .Z(n4365)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_104.init = 16'h8888;
    FD1S3AX clk_cnt_154__i15 (.D(n73[15]), .CK(clk_c), .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154__i15.GSR = "ENABLED";
    FD1S3AX clk_cnt_154__i14 (.D(n73[14]), .CK(clk_c), .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154__i14.GSR = "ENABLED";
    FD1S3AX clk_cnt_154__i13 (.D(n73[13]), .CK(clk_c), .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154__i13.GSR = "ENABLED";
    FD1S3AX clk_cnt_154__i12 (.D(n73[12]), .CK(clk_c), .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154__i12.GSR = "ENABLED";
    FD1S3AX clk_cnt_154__i11 (.D(n73[11]), .CK(clk_c), .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154__i11.GSR = "ENABLED";
    FD1S3AX clk_cnt_154__i10 (.D(n73[10]), .CK(clk_c), .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154__i10.GSR = "ENABLED";
    FD1S3AX clk_cnt_154__i9 (.D(n73[9]), .CK(clk_c), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154__i9.GSR = "ENABLED";
    FD1S3AX clk_cnt_154__i8 (.D(n73[8]), .CK(clk_c), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154__i8.GSR = "ENABLED";
    FD1S3AX clk_cnt_154__i7 (.D(n73[7]), .CK(clk_c), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154__i7.GSR = "ENABLED";
    FD1S3AX clk_cnt_154__i6 (.D(n73[6]), .CK(clk_c), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154__i6.GSR = "ENABLED";
    FD1S3AX clk_cnt_154__i5 (.D(n73[5]), .CK(clk_c), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154__i5.GSR = "ENABLED";
    FD1S3AX clk_cnt_154__i4 (.D(n73[4]), .CK(clk_c), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154__i4.GSR = "ENABLED";
    FD1S3AX clk_cnt_154__i3 (.D(n73[3]), .CK(clk_c), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154__i3.GSR = "ENABLED";
    FD1S3AX clk_cnt_154__i2 (.D(n73[2]), .CK(clk_c), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154__i2.GSR = "ENABLED";
    FD1S3AX clk_cnt_154__i1 (.D(n73[1]), .CK(clk_c), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(40[14:21])
    defparam clk_cnt_154__i1.GSR = "ENABLED";
    FD1P3IX num_cnt__i2 (.D(n3944), .SP(apa_N_10), .CD(n567), .CK(clk_c), 
            .Q(num_cnt[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(28[2] 41[10])
    defparam num_cnt__i2.GSR = "ENABLED";
    FD1P3IX num_cnt__i1 (.D(n3), .SP(apa_N_10), .CD(n567), .CK(clk_c), 
            .Q(num_cnt[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(28[2] 41[10])
    defparam num_cnt__i1.GSR = "ENABLED";
    FD1P3AX BTN_cache_i0_i3 (.D(independent_keys_c_3), .SP(BTN_cache_3__N_83), 
            .CK(apa), .Q(BTN_cache[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam BTN_cache_i0_i3.GSR = "ENABLED";
    FD1P3AX BTN_cache_i0_i2 (.D(independent_keys_c_2), .SP(BTN_cache_3__N_83), 
            .CK(apa), .Q(BTN_cache[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam BTN_cache_i0_i2.GSR = "ENABLED";
    FD1P3AX BTN_cache_i0_i1 (.D(independent_keys_c_1), .SP(BTN_cache_3__N_83), 
            .CK(apa), .Q(BTN_cache[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam BTN_cache_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_94_3_lut_4_lut (.A(key_out[0]), .B(key_out[4]), .C(key_out[8]), 
         .D(key_out[9]), .Z(n4355)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_94_3_lut_4_lut.init = 16'h8000;
    LUT4 i3724_2_lut (.A(num_cnt[0]), .B(apa_N_10), .Z(n4131)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(28[2] 41[10])
    defparam i3724_2_lut.init = 16'h6666;
    LUT4 i3778_4_lut (.A(n4127), .B(clk_cnt[12]), .C(n8), .D(clk_cnt[10]), 
         .Z(apa_N_10)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(29[6:21])
    defparam i3778_4_lut.init = 16'h0002;
    FD1P3IX key_id_i19 (.D(key_id_19__N_109[19]), .SP(apa_enable_19), .CD(n1598), 
            .CK(apa), .Q(key_id[19])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_id_i19.GSR = "ENABLED";
    LUT4 i3734_2_lut_3_lut (.A(num_cnt[0]), .B(num_cnt[1]), .C(num_cnt[2]), 
         .Z(row_3__N_1[0])) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(47[3] 53[12])
    defparam i3734_2_lut_3_lut.init = 16'hf7f7;
    FD1P3IX apa_75 (.D(n4467), .SP(clk_c_enable_1), .CD(apa_N_10), .CK(clk_c), 
            .Q(apa)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(28[2] 41[10])
    defparam apa_75.GSR = "ENABLED";
    FD1P3IX key_id_i0 (.D(n4343), .SP(apa_enable_15), .CD(n3868), .CK(apa), 
            .Q(key_id[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_id_i0.GSR = "ENABLED";
    LUT4 i15_2_lut_3_lut (.A(num_cnt[0]), .B(num_cnt[1]), .C(num_cnt[2]), 
         .Z(n3944)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(47[3] 53[12])
    defparam i15_2_lut_3_lut.init = 16'h7878;
    LUT4 i3682_2_lut (.A(clk_cnt[5]), .B(clk_cnt[11]), .Z(n4089)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3682_2_lut.init = 16'h8888;
    LUT4 i5_3_lut (.A(clk_cnt[8]), .B(n10), .C(clk_cnt[3]), .Z(n3946)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(29[6:21])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i4_4_lut_adj_45 (.A(clk_cnt[4]), .B(clk_cnt[1]), .C(clk_cnt[0]), 
         .D(clk_cnt[2]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(29[6:21])
    defparam i4_4_lut_adj_45.init = 16'hfffe;
    LUT4 i2_3_lut_adj_46 (.A(clk_cnt[14]), .B(clk_cnt[15]), .C(clk_cnt[6]), 
         .Z(n3660)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_46.init = 16'h8080;
    FD1P3AX key_id_i1 (.D(key_id_19__N_11[1]), .SP(apa_enable_15), .CK(apa), 
            .Q(key_id[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_id_i1.GSR = "ENABLED";
    FD1P3AX key_out_i15 (.D(col_c_3), .SP(key_out_15__N_57), .CK(apa), 
            .Q(key_out[15])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_out_i15.GSR = "ENABLED";
    PFUMX i3796 (.BLUT(n4260), .ALUT(n4259), .C0(key_id[3]), .Z(n4261));
    PFUMX i3816 (.BLUT(n4366), .ALUT(n4367), .C0(key_out[10]), .Z(n4368));
    FD1P3IX key_id_i12 (.D(key_id_19__N_109[12]), .SP(apa_enable_19), .CD(n1598), 
            .CK(apa), .Q(key_id[12])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_id_i12.GSR = "ENABLED";
    FD1P3IX key_id_i13 (.D(key_id_19__N_109[13]), .SP(apa_enable_19), .CD(n1598), 
            .CK(apa), .Q(key_id[13])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_id_i13.GSR = "ENABLED";
    FD1P3IX key_id_i14 (.D(key_id_19__N_109[14]), .SP(apa_enable_19), .CD(n1598), 
            .CK(apa), .Q(key_id[14])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_id_i14.GSR = "ENABLED";
    FD1P3IX key_id_i15 (.D(key_id_19__N_109[15]), .SP(apa_enable_19), .CD(n1598), 
            .CK(apa), .Q(key_id[15])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_id_i15.GSR = "ENABLED";
    FD1P3AX key_id_i2 (.D(key_id_19__N_11[2]), .SP(apa_enable_20), .CK(apa), 
            .Q(key_id[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_id_i2.GSR = "ENABLED";
    FD1P3AX key_out_i14 (.D(col_c_2), .SP(key_out_15__N_57), .CK(apa), 
            .Q(key_out[14])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_out_i14.GSR = "ENABLED";
    FD1P3AX key_out_i13 (.D(col_c_1), .SP(key_out_15__N_57), .CK(apa), 
            .Q(key_out[13])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_out_i13.GSR = "ENABLED";
    FD1P3AX key_out_i12 (.D(col_c_0), .SP(key_out_15__N_57), .CK(apa), 
            .Q(key_out[12])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_out_i12.GSR = "ENABLED";
    FD1P3AX key_out_i11 (.D(col_c_3), .SP(key_out_15__N_62), .CK(apa), 
            .Q(key_out[11])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_out_i11.GSR = "ENABLED";
    FD1P3AX key_out_i10 (.D(col_c_2), .SP(key_out_15__N_62), .CK(apa), 
            .Q(key_out[10])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_out_i10.GSR = "ENABLED";
    FD1P3AX key_out_i9 (.D(col_c_1), .SP(key_out_15__N_62), .CK(apa), 
            .Q(key_out[9])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_out_i9.GSR = "ENABLED";
    FD1P3AX key_out_i8 (.D(col_c_0), .SP(key_out_15__N_62), .CK(apa), 
            .Q(key_out[8])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_out_i8.GSR = "ENABLED";
    FD1P3AX key_out_i7 (.D(col_c_3), .SP(key_out_15__N_67), .CK(apa), 
            .Q(key_out[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_out_i7.GSR = "ENABLED";
    FD1P3AX key_out_i6 (.D(col_c_2), .SP(key_out_15__N_67), .CK(apa), 
            .Q(key_out[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_out_i6.GSR = "ENABLED";
    FD1P3AX key_out_i5 (.D(col_c_1), .SP(key_out_15__N_67), .CK(apa), 
            .Q(key_out[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_out_i5.GSR = "ENABLED";
    FD1P3AX key_out_i4 (.D(col_c_0), .SP(key_out_15__N_67), .CK(apa), 
            .Q(key_out[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_out_i4.GSR = "ENABLED";
    FD1P3AX key_out_i3 (.D(col_c_3), .SP(key_out_15__N_72), .CK(apa), 
            .Q(key_out[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_out_i3.GSR = "ENABLED";
    FD1P3AX key_out_i2 (.D(col_c_2), .SP(key_out_15__N_72), .CK(apa), 
            .Q(key_out[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_out_i2.GSR = "ENABLED";
    FD1P3AX key_out_i1 (.D(col_c_1), .SP(key_out_15__N_72), .CK(apa), 
            .Q(key_out[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(60[2] 110[9])
    defparam key_out_i1.GSR = "ENABLED";
    FD1S3AX row_i4 (.D(row_3__N_1[3]), .CK(apa_N_6), .Q(row_c_3)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(46[2] 54[9])
    defparam row_i4.GSR = "ENABLED";
    FD1S3AX row_i3 (.D(row_3__N_1[2]), .CK(apa_N_6), .Q(row_c_2)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(46[2] 54[9])
    defparam row_i3.GSR = "ENABLED";
    FD1S3AX row_i2 (.D(row_3__N_1[1]), .CK(apa_N_6), .Q(row_c_1)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_pressing_detector.vhd(46[2] 54[9])
    defparam row_i2.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module segment_led_decoder
//

module segment_led_decoder (seg1_c_0, seg1_6__N_154, seg1_6__N_153, seg2_c_0, 
            seg2_6__N_161, seg2_c_1, seg2_6__N_160, seg2_c_2, seg2_6__N_159, 
            seg2_c_3, seg2_6__N_158, seg2_c_4, seg2_6__N_157, seg2_c_5, 
            seg2_6__N_156, seg2_c_6, seg2_6__N_155, seg1_c_3, seg1_6__N_152, 
            seg1_c, n582, seg1_6__N_129, key_id, n4338, n4321, n1278, 
            n4, n4320, n1315, n1313, n1400, n4353, n1284, n1421, 
            n6, n4363, n4259, n1370, n1283, n1348, n4190, n4312, 
            n4313, n4311, n1310, n4261, n4262, n4318, n4_adj_1, 
            n1311, n4103);
    output seg1_c_0;
    output seg1_6__N_154;
    input seg1_6__N_153;
    output seg2_c_0;
    input seg2_6__N_161;
    output seg2_c_1;
    input seg2_6__N_160;
    output seg2_c_2;
    input seg2_6__N_159;
    output seg2_c_3;
    input seg2_6__N_158;
    output seg2_c_4;
    input seg2_6__N_157;
    output seg2_c_5;
    input seg2_6__N_156;
    output seg2_c_6;
    input seg2_6__N_155;
    output seg1_c_3;
    input seg1_6__N_152;
    output seg1_c;
    output n582;
    input seg1_6__N_129;
    input [19:0]key_id;
    output n4338;
    output n4321;
    output n1278;
    output n4;
    output n4320;
    output n1315;
    output n1313;
    output n1400;
    output n4353;
    output n1284;
    output n1421;
    output n6;
    output n4363;
    output n4259;
    output n1370;
    output n1283;
    output n1348;
    output n4190;
    output n4312;
    output n4313;
    output n4311;
    output n1310;
    input n4261;
    output n4262;
    output n4318;
    output n4_adj_1;
    output n1311;
    output n4103;
    
    wire seg1_6__N_154 /* synthesis is_clock=1, SET_AS_NETWORK=\decoder/seg1_6__N_154 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(7[3:7])
    
    wire n4330, n4336, n4329, n2409, n4370, n4369, n4339, n4331, 
        n4341, n4332, n4335, n4328, n4325, n4357, n4317, n4342, 
        n4334, n4349, n4314, n4346, n1423, n4345, n4324, n4326, 
        n4327, n4319, n2478, n3652, n2405, n451, n2413, n2411, 
        n454, n4281, n4280, n428, n1244, n431, n4279, n4371, 
        n4212, n4323, n4356, n4315, n4322, n2277;
    
    FD1S1A seg1_6__I_0_i1 (.D(seg1_6__N_153), .CK(seg1_6__N_154), .Q(seg1_c_0)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=30, LSE_LLINE=41, LSE_RLINE=41 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(14[2] 39[14])
    defparam seg1_6__I_0_i1.GSR = "ENABLED";
    FD1S1A seg2_6__I_0_i1 (.D(seg2_6__N_161), .CK(seg1_6__N_154), .Q(seg2_c_0)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=30, LSE_LLINE=41, LSE_RLINE=41 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(14[2] 39[14])
    defparam seg2_6__I_0_i1.GSR = "ENABLED";
    FD1S1A seg2_6__I_0_i2 (.D(seg2_6__N_160), .CK(seg1_6__N_154), .Q(seg2_c_1)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=30, LSE_LLINE=41, LSE_RLINE=41 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(14[2] 39[14])
    defparam seg2_6__I_0_i2.GSR = "ENABLED";
    FD1S1A seg2_6__I_0_i3 (.D(seg2_6__N_159), .CK(seg1_6__N_154), .Q(seg2_c_2)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=30, LSE_LLINE=41, LSE_RLINE=41 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(14[2] 39[14])
    defparam seg2_6__I_0_i3.GSR = "ENABLED";
    FD1S1A seg2_6__I_0_i4 (.D(seg2_6__N_158), .CK(seg1_6__N_154), .Q(seg2_c_3)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=30, LSE_LLINE=41, LSE_RLINE=41 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(14[2] 39[14])
    defparam seg2_6__I_0_i4.GSR = "ENABLED";
    FD1S1A seg2_6__I_0_i5 (.D(seg2_6__N_157), .CK(seg1_6__N_154), .Q(seg2_c_4)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=30, LSE_LLINE=41, LSE_RLINE=41 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(14[2] 39[14])
    defparam seg2_6__I_0_i5.GSR = "ENABLED";
    FD1S1A seg2_6__I_0_i6 (.D(seg2_6__N_156), .CK(seg1_6__N_154), .Q(seg2_c_5)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=30, LSE_LLINE=41, LSE_RLINE=41 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(14[2] 39[14])
    defparam seg2_6__I_0_i6.GSR = "ENABLED";
    FD1S1A seg2_6__I_0_i7 (.D(seg2_6__N_155), .CK(seg1_6__N_154), .Q(seg2_c_6)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=30, LSE_LLINE=41, LSE_RLINE=41 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(14[2] 39[14])
    defparam seg2_6__I_0_i7.GSR = "ENABLED";
    FD1S1A seg1_6__I_0_i2 (.D(seg1_6__N_152), .CK(seg1_6__N_154), .Q(seg1_c_3)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=30, LSE_LLINE=41, LSE_RLINE=41 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(14[2] 39[14])
    defparam seg1_6__I_0_i2.GSR = "ENABLED";
    FD1S1A seg1_6__I_0_i3 (.D(seg1_6__N_154), .CK(seg1_6__N_154), .Q(seg1_c)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=30, LSE_LLINE=41, LSE_RLINE=41 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(14[2] 39[14])
    defparam seg1_6__I_0_i3.GSR = "ENABLED";
    FD1S1A seg1_6__I_0_i4 (.D(seg1_6__N_129), .CK(seg1_6__N_154), .Q(n582)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=30, LSE_LLINE=41, LSE_RLINE=41 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(14[2] 39[14])
    defparam seg1_6__I_0_i4.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_69_3_lut_4_lut (.A(key_id[3]), .B(n4338), .C(key_id[5]), 
         .D(key_id[6]), .Z(n4330)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(29[8:30])
    defparam i1_2_lut_rep_69_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut (.A(key_id[17]), .B(n4321), .C(key_id[19]), .D(key_id[18]), 
         .Z(n1278)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(17[8:30])
    defparam i2_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_68_3_lut_4_lut (.A(key_id[9]), .B(n4336), .C(key_id[5]), 
         .D(key_id[7]), .Z(n4329)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(29[8:30])
    defparam i1_2_lut_rep_68_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_then_4_lut (.A(n2409), .B(key_id[7]), .C(key_id[6]), 
         .D(key_id[5]), .Z(n4370)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(16[3] 38[12])
    defparam i1_4_lut_then_4_lut.init = 16'h0001;
    LUT4 i1_4_lut_else_4_lut (.A(n2409), .B(key_id[7]), .C(key_id[6]), 
         .D(key_id[5]), .Z(n4369)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C (D)+!C !(D))))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(16[3] 38[12])
    defparam i1_4_lut_else_4_lut.init = 16'h0114;
    LUT4 i1_2_lut_rep_70_3_lut_4_lut (.A(key_id[8]), .B(n4339), .C(key_id[7]), 
         .D(key_id[9]), .Z(n4331)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(27[8:30])
    defparam i1_2_lut_rep_70_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(key_id[0]), .B(key_id[2]), .Z(n4)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(36[8:30])
    defparam i1_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_rep_71_3_lut_4_lut (.A(key_id[4]), .B(n4341), .C(key_id[6]), 
         .D(key_id[3]), .Z(n4332)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(29[8:30])
    defparam i1_2_lut_rep_71_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_67_3_lut_4_lut (.A(key_id[6]), .B(n4335), .C(key_id[7]), 
         .D(key_id[5]), .Z(n4328)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(29[8:30])
    defparam i1_2_lut_rep_67_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_56_3_lut_4_lut (.A(key_id[11]), .B(n4325), .C(n4357), 
         .D(key_id[10]), .Z(n4317)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(27[8:30])
    defparam i1_2_lut_rep_56_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_73_3_lut_4_lut (.A(key_id[11]), .B(n4342), .C(key_id[9]), 
         .D(key_id[8]), .Z(n4334)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(27[8:30])
    defparam i1_2_lut_rep_73_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_53_3_lut_4_lut (.A(key_id[11]), .B(n4325), .C(n4349), 
         .D(key_id[10]), .Z(n4314)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(27[8:30])
    defparam i1_2_lut_rep_53_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_59_4_lut (.A(key_id[11]), .B(n4325), .C(n4346), 
         .D(key_id[10]), .Z(n4320)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(27[8:30])
    defparam i2_3_lut_rep_59_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_74_3_lut_4_lut (.A(n1423), .B(n4345), .C(key_id[3]), 
         .D(key_id[4]), .Z(n4335)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(34[8:30])
    defparam i1_2_lut_rep_74_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_60_4_lut (.A(key_id[4]), .B(n4324), .C(n1423), .D(key_id[1]), 
         .Z(n4321)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(29[8:30])
    defparam i2_3_lut_rep_60_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(key_id[3]), .B(n4326), .C(n4345), .D(key_id[4]), 
         .Z(n1315)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(32[8:30])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_75_3_lut_4_lut (.A(key_id[10]), .B(n4346), .C(key_id[8]), 
         .D(key_id[11]), .Z(n4336)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(25[8:30])
    defparam i1_2_lut_rep_75_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_2 (.A(key_id[3]), .B(n4326), .C(key_id[4]), 
         .D(n4341), .Z(n1313)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(32[8:30])
    defparam i2_3_lut_4_lut_adj_2.init = 16'hffef;
    LUT4 i2_3_lut_4_lut_adj_3 (.A(key_id[8]), .B(n4327), .C(key_id[11]), 
         .D(n4342), .Z(n1400)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(27[8:30])
    defparam i2_3_lut_4_lut_adj_3.init = 16'hffef;
    LUT4 i1_2_lut_rep_77_3_lut_4_lut (.A(key_id[1]), .B(n4353), .C(key_id[4]), 
         .D(n1423), .Z(n4338)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(34[8:30])
    defparam i1_2_lut_rep_77_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_58_3_lut_4_lut (.A(key_id[8]), .B(n4327), .C(key_id[10]), 
         .D(key_id[11]), .Z(n4319)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(27[8:30])
    defparam i1_2_lut_rep_58_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(n2478), .B(n3652), .C(n2405), .D(n451), .Z(seg1_6__N_154)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(16[3] 38[12])
    defparam i1_4_lut.init = 16'hcdcc;
    LUT4 i1_2_lut_rep_78_3_lut_4_lut (.A(n4349), .B(n4357), .C(key_id[11]), 
         .D(key_id[10]), .Z(n4339)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(27[8:30])
    defparam i1_2_lut_rep_78_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut (.A(n2413), .B(n2411), .C(n454), .Z(n3652)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(16[3] 38[12])
    defparam i2_3_lut.init = 16'h1010;
    LUT4 i1_4_lut_adj_4 (.A(n4281), .B(n4280), .C(n2411), .D(n2413), 
         .Z(n451)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(16[3] 38[12])
    defparam i1_4_lut_adj_4.init = 16'h0ace;
    LUT4 i1_4_lut_adj_5 (.A(n428), .B(n1244), .C(n2478), .D(n431), .Z(n454)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(16[3] 38[12])
    defparam i1_4_lut_adj_5.init = 16'hcfce;
    LUT4 i2_4_lut (.A(key_id[16]), .B(key_id[18]), .C(key_id[17]), .D(key_id[19]), 
         .Z(n428)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(16[3] 38[12])
    defparam i2_4_lut.init = 16'h0012;
    LUT4 i1_4_lut_adj_6 (.A(n4279), .B(n2405), .C(n4371), .D(n4212), 
         .Z(n1244)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(16[3] 38[12])
    defparam i1_4_lut_adj_6.init = 16'h3032;
    LUT4 i1_2_lut_rep_62_3_lut_4_lut (.A(key_id[6]), .B(n4329), .C(key_id[4]), 
         .D(key_id[3]), .Z(n4323)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(29[8:30])
    defparam i1_2_lut_rep_62_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_7 (.A(key_id[18]), .B(key_id[17]), .C(key_id[19]), 
         .D(key_id[16]), .Z(n431)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(16[3] 38[12])
    defparam i2_4_lut_adj_7.init = 16'h0012;
    LUT4 i2_3_lut_4_lut_adj_8 (.A(n4319), .B(n4357), .C(key_id[15]), .D(n4356), 
         .Z(n1284)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(23[8:30])
    defparam i2_3_lut_4_lut_adj_8.init = 16'hffef;
    LUT4 i1_2_lut_rep_81_3_lut_4_lut (.A(key_id[15]), .B(n4356), .C(key_id[10]), 
         .D(n4357), .Z(n4342)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(22[8:30])
    defparam i1_2_lut_rep_81_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut_4_lut (.A(n4315), .B(key_id[18]), .C(key_id[19]), .D(n1421), 
         .Z(n6)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(17[8:30])
    defparam i2_2_lut_4_lut.init = 16'hef00;
    LUT4 i1_2_lut_rep_80_3_lut_4_lut (.A(key_id[17]), .B(n4363), .C(n1423), 
         .D(key_id[1]), .Z(n4341)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(35[8:30])
    defparam i1_2_lut_rep_80_3_lut_4_lut.init = 16'hfffe;
    LUT4 n1363_bdd_1_lut_2_lut_3_lut_4_lut (.A(key_id[17]), .B(n4363), .C(n1423), 
         .D(key_id[1]), .Z(n4259)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(35[8:30])
    defparam n1363_bdd_1_lut_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_rep_95 (.A(key_id[14]), .B(key_id[16]), .Z(n4356)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(20[8:30])
    defparam i1_2_lut_rep_95.init = 16'heeee;
    LUT4 i1_2_lut_rep_88_3_lut (.A(key_id[14]), .B(key_id[16]), .C(key_id[15]), 
         .Z(n4349)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(20[8:30])
    defparam i1_2_lut_rep_88_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_85_3_lut_4_lut (.A(key_id[14]), .B(key_id[16]), .C(n4357), 
         .D(key_id[15]), .Z(n4346)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(20[8:30])
    defparam i1_2_lut_rep_85_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_96 (.A(key_id[12]), .B(key_id[13]), .Z(n4357)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(23[8:30])
    defparam i1_2_lut_rep_96.init = 16'heeee;
    LUT4 i2007_3_lut_4_lut (.A(key_id[12]), .B(key_id[13]), .C(key_id[14]), 
         .D(key_id[15]), .Z(n2411)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(23[8:30])
    defparam i2007_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2003_rep_11_4_lut (.A(key_id[7]), .B(key_id[5]), .C(key_id[6]), 
         .D(key_id[4]), .Z(n4212)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2003_rep_11_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_9 (.A(key_id[9]), .B(n4328), .C(n4339), .D(key_id[8]), 
         .Z(n1370)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(29[8:30])
    defparam i2_3_lut_4_lut_adj_9.init = 16'hfeff;
    LUT4 i1_2_lut_rep_61_3_lut_4_lut (.A(key_id[9]), .B(n4328), .C(key_id[11]), 
         .D(key_id[8]), .Z(n4322)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(29[8:30])
    defparam i1_2_lut_rep_61_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_54_4_lut (.A(n4323), .B(key_id[1]), .C(n1423), .D(key_id[17]), 
         .Z(n4315)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(35[8:30])
    defparam i1_2_lut_rep_54_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_10 (.A(key_id[15]), .B(n4317), .C(key_id[16]), 
         .D(key_id[14]), .Z(n1283)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(20[8:30])
    defparam i2_3_lut_4_lut_adj_10.init = 16'hffef;
    LUT4 i1_2_lut_rep_64_3_lut_4_lut (.A(key_id[7]), .B(n4330), .C(key_id[8]), 
         .D(key_id[9]), .Z(n4325)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(28[8:30])
    defparam i1_2_lut_rep_64_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_11 (.A(key_id[15]), .B(n4317), .C(key_id[14]), 
         .D(key_id[16]), .Z(n1348)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(20[8:30])
    defparam i2_3_lut_4_lut_adj_11.init = 16'hffef;
    LUT4 i3783_2_lut_4_lut (.A(n4314), .B(key_id[13]), .C(key_id[12]), 
         .D(n1400), .Z(n4190)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C+!(D))))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(27[8:30])
    defparam i3783_2_lut_4_lut.init = 16'h10ff;
    LUT4 i2_3_lut_rep_51_4_lut (.A(n4349), .B(n4319), .C(key_id[12]), 
         .D(key_id[13]), .Z(n4312)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(27[8:30])
    defparam i2_3_lut_rep_51_4_lut.init = 16'hfeff;
    LUT4 i2_3_lut_4_lut_adj_12 (.A(key_id[7]), .B(n4330), .C(key_id[9]), 
         .D(n4336), .Z(n1421)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(28[8:30])
    defparam i2_3_lut_4_lut_adj_12.init = 16'hffef;
    LUT4 key_id_8__bdd_4_lut (.A(key_id[8]), .B(key_id[9]), .C(key_id[10]), 
         .D(key_id[11]), .Z(n4281)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam key_id_8__bdd_4_lut.init = 16'h0116;
    LUT4 i2_3_lut_rep_52_4_lut (.A(n4349), .B(n4319), .C(key_id[12]), 
         .D(key_id[13]), .Z(n4313)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(27[8:30])
    defparam i2_3_lut_rep_52_4_lut.init = 16'hffef;
    LUT4 key_id_12__bdd_4_lut (.A(key_id[12]), .B(key_id[13]), .C(key_id[14]), 
         .D(key_id[15]), .Z(n4280)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam key_id_12__bdd_4_lut.init = 16'h0116;
    LUT4 i2_3_lut_rep_50_4_lut (.A(key_id[17]), .B(n4321), .C(key_id[19]), 
         .D(key_id[18]), .Z(n4311)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(17[8:30])
    defparam i2_3_lut_rep_50_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_63_3_lut_4_lut (.A(key_id[5]), .B(n4331), .C(key_id[3]), 
         .D(key_id[6]), .Z(n4324)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(29[8:30])
    defparam i1_2_lut_rep_63_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_13 (.A(key_id[5]), .B(n4331), .C(key_id[6]), 
         .D(n4335), .Z(n1310)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(29[8:30])
    defparam i2_3_lut_4_lut_adj_13.init = 16'hffef;
    LUT4 key_id_0__bdd_4_lut (.A(key_id[0]), .B(key_id[1]), .C(key_id[2]), 
         .D(key_id[3]), .Z(n4279)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam key_id_0__bdd_4_lut.init = 16'h0116;
    LUT4 i2009_4_lut (.A(key_id[11]), .B(key_id[9]), .C(key_id[10]), .D(key_id[8]), 
         .Z(n2413)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2009_4_lut.init = 16'hfffe;
    LUT4 n4261_bdd_2_lut_3_lut_4_lut (.A(key_id[5]), .B(n4331), .C(n4261), 
         .D(key_id[6]), .Z(n4262)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(29[8:30])
    defparam n4261_bdd_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1953_2_lut_rep_57_4_lut (.A(n4322), .B(key_id[10]), .C(n4346), 
         .D(n1313), .Z(n4318)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(27[8:30])
    defparam i1953_2_lut_rep_57_4_lut.init = 16'hfb00;
    LUT4 i1_2_lut_rep_102 (.A(key_id[18]), .B(key_id[19]), .Z(n4363)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(19[8:30])
    defparam i1_2_lut_rep_102.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_14 (.A(key_id[5]), .B(n4331), .C(key_id[3]), 
         .D(key_id[6]), .Z(n4_adj_1)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(29[8:30])
    defparam i1_2_lut_3_lut_4_lut_adj_14.init = 16'hffef;
    LUT4 i1_2_lut_adj_15 (.A(key_id[0]), .B(key_id[2]), .Z(n1423)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(35[8:30])
    defparam i1_2_lut_adj_15.init = 16'heeee;
    LUT4 i2072_4_lut (.A(n2409), .B(key_id[7]), .C(n2277), .D(key_id[6]), 
         .Z(n2478)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2072_4_lut.init = 16'hfffe;
    LUT4 i2001_3_lut_4_lut (.A(key_id[18]), .B(key_id[19]), .C(key_id[16]), 
         .D(key_id[17]), .Z(n2405)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(19[8:30])
    defparam i2001_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_92_3_lut (.A(key_id[18]), .B(key_id[19]), .C(key_id[17]), 
         .Z(n4353)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(19[8:30])
    defparam i1_2_lut_rep_92_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_84_3_lut_4_lut (.A(key_id[18]), .B(key_id[19]), .C(key_id[1]), 
         .D(key_id[17]), .Z(n4345)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(19[8:30])
    defparam i1_2_lut_rep_84_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_66_3_lut_4_lut (.A(key_id[5]), .B(n4332), .C(key_id[9]), 
         .D(key_id[7]), .Z(n4327)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(29[8:30])
    defparam i1_2_lut_rep_66_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1873_2_lut (.A(key_id[5]), .B(key_id[4]), .Z(n2277)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1873_2_lut.init = 16'heeee;
    LUT4 i2005_4_lut (.A(key_id[3]), .B(key_id[1]), .C(key_id[2]), .D(key_id[0]), 
         .Z(n2409)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2005_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_16 (.A(key_id[7]), .B(n4334), .C(key_id[5]), 
         .D(n4332), .Z(n1311)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(30[8:30])
    defparam i2_3_lut_4_lut_adj_16.init = 16'hffef;
    LUT4 i3696_2_lut_3_lut_4_lut (.A(key_id[6]), .B(n4335), .C(n4334), 
         .D(key_id[5]), .Z(n4103)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(29[8:30])
    defparam i3696_2_lut_3_lut_4_lut.init = 16'hfffe;
    PFUMX i3818 (.BLUT(n4369), .ALUT(n4370), .C0(key_id[4]), .Z(n4371));
    LUT4 i1_2_lut_rep_65_3_lut_4_lut (.A(key_id[7]), .B(n4334), .C(key_id[6]), 
         .D(key_id[5]), .Z(n4326)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/segment_led_decoder.vhd(30[8:30])
    defparam i1_2_lut_rep_65_3_lut_4_lut.init = 16'hfffe;
    
endmodule
