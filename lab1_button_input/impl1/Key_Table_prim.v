// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Wed Nov 18 21:58:27 2020
//
// Verilog Description of module Key_Table
//

module Key_Table (ROW, COL, button_four, a_to_g, a_to_g2, seg, seg2, 
            clk);   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(4[8:17])
    output [3:0]ROW;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[8:11])
    input [3:0]COL;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(8[8:11])
    input [3:0]button_four;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(9[3:14])
    output [6:0]a_to_g;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:9])
    output [6:0]a_to_g2;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:10])
    output seg;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(13[3:6])
    output seg2;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(14[3:7])
    input clk;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(15[3:6])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(15[3:6])
    wire apa /* synthesis SET_AS_NETWORK=apa, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(24[8:11])
    wire apa_N_6 /* synthesis is_inv_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[8:11])
    
    wire GND_net, VCC_net, ROW_c_3, ROW_c_2, ROW_c_1, ROW_c_0, COL_c_3, 
        COL_c_2, COL_c_1, COL_c_0, button_four_c_3, button_four_c_2, 
        button_four_c_1, button_four_c_0, a_to_g_c_6, a_to_g_c_5, n12, 
        a_to_g2_c_6, a_to_g2_c_5, a_to_g2_c_4, a_to_g2_c_3, a_to_g2_c_2, 
        a_to_g2_c_1, a_to_g2_c_0;
    wire [13:0]clk_cnt;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(20[8:15])
    wire [4:0]LED_get;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(22[8:15])
    wire [2:0]num_cnt;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(23[8:15])
    wire [15:0]key_out;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(25[8:15])
    wire [3:0]BTN_cache;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(26[8:17])
    
    wire apa_N_10, n3443, n4123, key_out_15__N_48, n6, key_out_15__N_53, 
        key_out_15__N_58, key_out_15__N_63, n2200, n6_adj_1, n271, 
        n3732, n1546, n183, n4, n606, n1263, n302, n3486;
    wire [6:0]a_to_g_6__N_11;
    
    wire n3440, n3444, n3439;
    wire [6:0]a_to_g2_6__N_18;
    
    wire n3955, n3777, n7, n3441, n4110, n7_adj_2, n234, n386, 
        n3465, n3, n243, n249, apa_enable_12, n5, n3803, n3954, 
        n262, n4_adj_3, n33, apa_enable_10, n3755, n3953, n199, 
        n3477, n204, n213, n3771, n4109, n4075, n1136, n264, 
        n2328, n229, n177, n3788, n3791, n1266, n1199, n4107, 
        n3991, n3990, n4_adj_4, n2184, n243_adj_5, n2170, n12_adj_6, 
        n3790, n1202, n3445, n1262, n8, n4_adj_7, n3442, n3739, 
        n4_adj_8, n2350, n2348, n4106, n4105, n4074, n3464, n4104, 
        n3883, n2264, n4072, n3741, n3835, n4071, n16, n3817, 
        n4070, n3736, n4069, n4073, n4068, apa_enable_13, n4103, 
        n4102, n4101, n6_adj_9, n3794, n4100, n4099, n4108, n4097, 
        n4096, n4114, n1265, n62, n63, n64, n65, n66, n67, 
        n68, n69, n70, n71, n72, n73, n74, n75, n4095, n4_adj_10, 
        n4125, n1153, n3743, n4124, n4094, n3832, n3805, n4054, 
        n3781, n4122, n26, n27, n28, n29, n30, clk_c_enable_1, 
        n3824, n4121, n4093, n3898, n4120, n3822, n4118, n4092, 
        n4091, n4090, n3879, n3877, n3471, n3875, n4321, n3873, 
        n4089, n3725, n3785, n4088, n4087, apa_enable_5, n3865, 
        n4117, n4085, n4084, n4115, n3808, n4083, n4113, n4082, 
        n3959, n3958, n4081, n3849, n4080, n3845, n3957, n4079, 
        n4112, n4078, n4111, n4077, n3956, n4_adj_11, n13;
    
    VHI i2 (.Z(VCC_net));
    INV i3828 (.A(apa), .Z(apa_N_6));
    FD1P3AX a_to_g2_i1 (.D(a_to_g2_6__N_18[0]), .SP(apa_enable_10), .CK(apa), 
            .Q(a_to_g2_c_0));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam a_to_g2_i1.GSR = "ENABLED";
    FD1P3AX key_out_i0 (.D(COL_c_0), .SP(key_out_15__N_63), .CK(apa), 
            .Q(key_out[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam key_out_i0.GSR = "ENABLED";
    OB ROW_pad_2 (.I(ROW_c_2), .O(ROW[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[8:11])
    FD1S3IX ROW_i2 (.D(n7_adj_2), .CK(apa_N_6), .CD(num_cnt[2]), .Q(ROW_c_1));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(49[2] 56[9])
    defparam ROW_i2.GSR = "ENABLED";
    OB ROW_pad_3 (.I(ROW_c_3), .O(ROW[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[8:11])
    CCU2D clk_cnt_299_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3442), .COUT(n3443), .S0(n68), .S1(n67));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_299_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_299_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_299_add_4_9.INJECT1_1 = "NO";
    PFUMX i3633 (.BLUT(n3956), .ALUT(n3955), .C0(a_to_g2_c_0), .Z(n3957));
    CCU2D clk_cnt_299_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3445), .S0(n62));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_299_add_4_15.INIT1 = 16'h0000;
    defparam clk_cnt_299_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_299_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_299_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3439), .COUT(n3440), .S0(n74), .S1(n73));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_299_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_299_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_299_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_299_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3440), .COUT(n3441), .S0(n72), .S1(n71));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_299_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_299_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_299_add_4_5.INJECT1_1 = "NO";
    FD1S3IX ROW_i1 (.D(n4097), .CK(apa_N_6), .CD(num_cnt[2]), .Q(ROW_c_0));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(49[2] 56[9])
    defparam ROW_i1.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(key_out[0]), .B(n3465), .C(n4_adj_4), .D(n4104), 
         .Z(n3832)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut.init = 16'heccc;
    LUT4 i2_4_lut (.A(n3805), .B(n3803), .C(n4090), .D(n4125), .Z(n3465)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i2_4_lut.init = 16'ha080;
    LUT4 i1_3_lut (.A(n213), .B(key_out[2]), .C(key_out[1]), .Z(n4_adj_4)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_1 (.A(key_out[1]), .B(key_out[0]), .C(key_out[2]), 
         .D(n4104), .Z(n3803)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_adj_1.init = 16'h4800;
    LUT4 i1_4_lut_4_lut (.A(key_out[14]), .B(key_out[15]), .C(key_out[12]), 
         .D(key_out[13]), .Z(n234)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_4_lut.init = 16'h6880;
    LUT4 i1_4_lut_4_lut_adj_2 (.A(key_out[2]), .B(key_out[3]), .C(key_out[0]), 
         .D(key_out[1]), .Z(n271)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_4_lut_adj_2.init = 16'h6880;
    LUT4 i1_4_lut_adj_3 (.A(n204), .B(n4054), .C(n3805), .D(n4090), 
         .Z(n213)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_adj_3.init = 16'heca0;
    FD1P3IX num_cnt__i2 (.D(n3725), .SP(apa_N_10), .CD(n606), .CK(clk_c), 
            .Q(num_cnt[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(31[2] 44[10])
    defparam num_cnt__i2.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_4 (.A(key_out[0]), .B(key_out[1]), .C(n234), 
         .D(n4088), .Z(n264)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_4_lut_adj_4.init = 16'he680;
    LUT4 i2058_2_lut_4_lut (.A(n4078), .B(n2200), .C(key_out[1]), .D(key_out[3]), 
         .Z(n2350)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2058_2_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_4_lut_adj_5 (.A(key_out[12]), .B(key_out[13]), .C(key_out[10]), 
         .D(key_out[11]), .Z(n204)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_4_lut_adj_5.init = 16'h6880;
    LUT4 i1_3_lut_4_lut_4_lut_then_3_lut (.A(n1136), .B(n1546), .C(apa_enable_5), 
         .Z(n4115)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_3_lut_4_lut_4_lut_then_3_lut.init = 16'h0404;
    LUT4 i1_3_lut_4_lut_4_lut_else_3_lut (.A(n1136), .B(n1546), .C(apa_enable_5), 
         .D(n4087), .Z(n4114)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_4_lut_else_3_lut.init = 16'hfe04;
    LUT4 i1_4_lut_adj_6 (.A(key_out[9]), .B(key_out[4]), .C(key_out[5]), 
         .D(key_out[3]), .Z(n3805)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_adj_6.init = 16'h8000;
    FD1P3IX num_cnt__i1 (.D(n3), .SP(apa_N_10), .CD(n606), .CK(clk_c), 
            .Q(num_cnt[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(31[2] 44[10])
    defparam num_cnt__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_30_3_lut_4_lut (.A(key_out[1]), .B(n4089), .C(key_out[9]), 
         .D(n4101), .Z(n4079)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_30_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_31_3_lut_4_lut (.A(key_out[1]), .B(n4089), .C(n4085), 
         .D(n4101), .Z(n4080)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_31_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_then_4_lut (.A(n4103), .B(key_out[4]), .C(key_out[5]), 
         .D(key_out[2]), .Z(n4118)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_then_4_lut.init = 16'h2880;
    LUT4 i1_2_lut_rep_20 (.A(n3785), .B(n3791), .Z(n4069)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_20.init = 16'h8888;
    LUT4 i1_4_lut_else_4_lut (.A(n4103), .B(key_out[4]), .C(key_out[5]), 
         .D(key_out[2]), .Z(n4117)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_else_4_lut.init = 16'h8000;
    LUT4 i1148_2_lut_3_lut (.A(BTN_cache[2]), .B(BTN_cache[1]), .C(BTN_cache[3]), 
         .Z(n183)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i1148_2_lut_3_lut.init = 16'h7070;
    LUT4 i1_2_lut_rep_45 (.A(key_out[9]), .B(key_out[6]), .Z(n4094)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_45.init = 16'h8888;
    FD1P3AX BTN_cache_i0_i0 (.D(button_four_c_0), .SP(apa_enable_5), .CK(apa), 
            .Q(BTN_cache[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam BTN_cache_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_42_3_lut (.A(key_out[9]), .B(key_out[6]), .C(key_out[8]), 
         .Z(n4091)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_42_3_lut.init = 16'h8080;
    LUT4 i3557_2_lut_3_lut_4_lut (.A(n4105), .B(n4078), .C(key_out[8]), 
         .D(n4089), .Z(n3849)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3557_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 n2296_bdd_4_lut_3642 (.A(n4080), .B(n4094), .C(key_out[7]), .D(key_out[8]), 
         .Z(n3956)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;
    defparam n2296_bdd_4_lut_3642.init = 16'h0880;
    LUT4 i1_4_lut_then_4_lut_adj_7 (.A(n3808), .B(key_out[10]), .C(key_out[11]), 
         .D(key_out[7]), .Z(n4121)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_then_4_lut_adj_7.init = 16'h2880;
    LUT4 i1_4_lut_else_4_lut_adj_8 (.A(n3808), .B(key_out[10]), .C(key_out[11]), 
         .D(key_out[7]), .Z(n4120)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_else_4_lut_adj_8.init = 16'h8000;
    LUT4 i1_4_lut_adj_9 (.A(n33), .B(n2348), .C(key_out[8]), .D(n4_adj_8), 
         .Z(n4_adj_3)) /* synthesis lut_function=(A ((C (D))+!B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_adj_9.init = 16'ha222;
    LUT4 i2056_4_lut (.A(a_to_g2_c_2), .B(n5), .C(key_out[7]), .D(n4080), 
         .Z(n2348)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i2056_4_lut.init = 16'heaaa;
    LUT4 i1_4_lut_adj_10 (.A(n3743), .B(key_out[6]), .C(n177), .D(n3788), 
         .Z(n4_adj_8)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_adj_10.init = 16'hc888;
    CCU2D clk_cnt_299_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3444), .COUT(n3445), .S0(n64), .S1(n63));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_299_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_299_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_299_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_299_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3441), .COUT(n3442), .S0(n70), .S1(n69));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_299_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_299_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_299_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_3_lut_adj_11 (.A(key_out[9]), .B(n3741), .C(key_out[7]), .Z(n3743)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_3_lut_adj_11.init = 16'h8080;
    LUT4 n365_bdd_2_lut_3636_3_lut (.A(n2170), .B(n2184), .C(n3957), .Z(n3958)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam n365_bdd_2_lut_3636_3_lut.init = 16'hf7f7;
    CCU2D clk_cnt_299_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3443), .COUT(n3444), .S0(n66), .S1(n65));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_299_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_299_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_299_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_12 (.A(n4122), .B(key_out[9]), .C(n3777), .D(key_out[7]), 
         .Z(n177)) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_adj_12.init = 16'heaaa;
    CCU2D clk_cnt_299_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3439), .S1(n75));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_299_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_299_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_299_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_then_4_lut_adj_13 (.A(key_out[1]), .B(key_out[2]), .C(key_out[14]), 
         .D(key_out[0]), .Z(n4124)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_then_4_lut_adj_13.init = 16'h0880;
    LUT4 i1_2_lut_rep_22_3_lut_4_lut (.A(key_out[9]), .B(n4083), .C(n4103), 
         .D(n4104), .Z(n4071)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_22_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_adj_14 (.A(key_out[9]), .B(key_out[6]), .C(key_out[8]), 
         .Z(n5)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;
    defparam i1_3_lut_adj_14.init = 16'h2828;
    LUT4 i1_4_lut_else_4_lut_adj_15 (.A(key_out[1]), .B(key_out[2]), .C(key_out[14]), 
         .D(key_out[0]), .Z(n4123)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_else_4_lut_adj_15.init = 16'h8000;
    LUT4 i1_2_lut_rep_28_3_lut_4_lut (.A(n4090), .B(n4104), .C(n2200), 
         .D(key_out[9]), .Z(n4077)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_28_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_29_3_lut_4_lut (.A(n4090), .B(n4104), .C(n4101), 
         .D(key_out[9]), .Z(n4078)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_29_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_21_3_lut_4_lut (.A(n4079), .B(n4104), .C(key_out[8]), 
         .D(n4103), .Z(n4070)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_21_3_lut_4_lut.init = 16'h8000;
    LUT4 i2_4_lut_adj_16 (.A(n264), .B(n4103), .C(n4095), .D(n4101), 
         .Z(n3741)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i2_4_lut_adj_16.init = 16'h8000;
    LUT4 i3_4_lut_rep_37 (.A(button_four_c_0), .B(n6_adj_1), .C(n4_adj_7), 
         .D(BTN_cache[0]), .Z(apa_enable_5)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(95[6:29])
    defparam i3_4_lut_rep_37.init = 16'hfdfe;
    LUT4 i1_4_lut_then_4_lut_adj_17 (.A(n4088), .B(key_out[10]), .C(key_out[11]), 
         .D(key_out[4]), .Z(n4112)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_then_4_lut_adj_17.init = 16'h2880;
    PFUMX i3637 (.BLUT(n3959), .ALUT(n3953), .C0(n4082), .Z(a_to_g2_6__N_18[0]));
    LUT4 i2_3_lut_4_lut (.A(n4079), .B(n4104), .C(n2200), .D(n4102), 
         .Z(n3477)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut (.A(n1136), .B(apa_enable_5), .Z(n386)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(95[6:29])
    defparam i1_2_lut.init = 16'hdddd;
    LUT4 i3125_1_lut (.A(LED_get[0]), .Z(n30)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(109[15:22])
    defparam i3125_1_lut.init = 16'h5555;
    LUT4 i2_4_lut_adj_18 (.A(n3464), .B(n4091), .C(n3471), .D(key_out[7]), 
         .Z(n249)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i2_4_lut_adj_18.init = 16'hc800;
    LUT4 i2_4_lut_adj_19 (.A(n4088), .B(n4103), .C(n271), .D(n4101), 
         .Z(n3464)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i2_4_lut_adj_19.init = 16'h8000;
    LUT4 i2_4_lut_adj_20 (.A(n1153), .B(n4095), .C(n4113), .D(n4096), 
         .Z(n3471)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i2_4_lut_adj_20.init = 16'hc800;
    LUT4 i1_4_lut_else_4_lut_adj_21 (.A(n4088), .B(key_out[10]), .C(key_out[11]), 
         .D(key_out[4]), .Z(n4111)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_else_4_lut_adj_21.init = 16'h8000;
    LUT4 n2202_bdd_4_lut_3664 (.A(key_out[1]), .B(key_out[2]), .C(key_out[3]), 
         .D(key_out[0]), .Z(n3990)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;
    defparam n2202_bdd_4_lut_3664.init = 16'h2880;
    LUT4 i1_4_lut_adj_22 (.A(n3781), .B(key_out[8]), .C(n3739), .D(n3824), 
         .Z(n16)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i1_4_lut_adj_22.init = 16'heeea;
    LUT4 i1_4_lut_adj_23 (.A(n3991), .B(n4077), .C(n4084), .D(n4099), 
         .Z(n3781)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_23.init = 16'hc888;
    LUT4 i295_3_lut_4_lut_4_lut (.A(key_out[9]), .B(key_out[6]), .C(key_out[7]), 
         .D(key_out[8]), .Z(n302)) /* synthesis lut_function=(A (B (C (D))+!B !(C))+!A !(B+(C))) */ ;
    defparam i295_3_lut_4_lut_4_lut.init = 16'h8303;
    LUT4 i2_4_lut_adj_24 (.A(key_out[13]), .B(n4071), .C(key_out[6]), 
         .D(n3771), .Z(n3739)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2_4_lut_adj_24.init = 16'h0800;
    LUT4 i3_4_lut (.A(key_out[3]), .B(n4100), .C(key_out[1]), .D(n4075), 
         .Z(n3824)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_rep_34_3_lut_4_lut (.A(key_out[3]), .B(n4100), .C(n4101), 
         .D(key_out[1]), .Z(n4083)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_34_3_lut_4_lut.init = 16'h8000;
    LUT4 i7_4_lut (.A(n13), .B(n1263), .C(n12), .D(n1266), .Z(n3755)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    LUT4 i5_4_lut (.A(n16), .B(n1262), .C(n1202), .D(n1265), .Z(n13)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i5_4_lut.init = 16'h4000;
    LUT4 i4_4_lut (.A(n1199), .B(key_out[9]), .C(n4_adj_11), .D(n3877), 
         .Z(n12)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))) */ ;
    defparam i4_4_lut.init = 16'h80a0;
    LUT4 i1_4_lut_adj_25 (.A(n3486), .B(key_out[1]), .C(n4072), .D(key_out[8]), 
         .Z(n4_adj_11)) /* synthesis lut_function=(A (((D)+!C)+!B)) */ ;
    defparam i1_4_lut_adj_25.init = 16'haa2a;
    LUT4 i3573_2_lut_3_lut_4_lut (.A(n2200), .B(n4081), .C(key_out[4]), 
         .D(n4084), .Z(n3865)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3573_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i3585_4_lut (.A(n4085), .B(n2200), .C(n4084), .D(n4101), .Z(n3877)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3585_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_46 (.A(key_out[3]), .B(key_out[2]), .Z(n4095)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_2_lut_rep_46.init = 16'h8888;
    LUT4 i1_2_lut_adj_26 (.A(num_cnt[0]), .B(num_cnt[1]), .Z(n7_adj_2)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(50[3] 55[12])
    defparam i1_2_lut_adj_26.init = 16'hbbbb;
    LUT4 i2_3_lut (.A(key_out[7]), .B(n3736), .C(key_out[12]), .Z(n3486)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(83[9:27])
    defparam i2_3_lut.init = 16'hbfbf;
    LUT4 n365_bdd_2_lut_3635 (.A(n3954), .B(key_out[7]), .Z(n3955)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam n365_bdd_2_lut_3635.init = 16'hbbbb;
    LUT4 i3_4_lut_adj_27 (.A(n3835), .B(n302), .C(key_out[9]), .D(n2200), 
         .Z(n262)) /* synthesis lut_function=((B+!(C+(D)))+!A) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i3_4_lut_adj_27.init = 16'hdddf;
    LUT4 n3764_bdd_4_lut_3653 (.A(n4094), .B(key_out[8]), .C(n3790), .D(n3741), 
         .Z(n3954)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C)))) */ ;
    defparam n3764_bdd_4_lut_3653.init = 16'h373f;
    LUT4 i3615_3_lut (.A(num_cnt[1]), .B(num_cnt[0]), .C(num_cnt[2]), 
         .Z(key_out_15__N_58)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(68[6:17])
    defparam i3615_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_rep_47 (.A(key_out[1]), .B(key_out[0]), .Z(n4096)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_2_lut_rep_47.init = 16'h8888;
    LUT4 i1_2_lut_adj_28 (.A(num_cnt[0]), .B(num_cnt[1]), .Z(n7)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(50[3] 55[12])
    defparam i1_2_lut_adj_28.init = 16'hdddd;
    LUT4 i1_4_lut_adj_29 (.A(n4110), .B(n3788), .C(n4094), .D(n3777), 
         .Z(n3790)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_adj_29.init = 16'hc888;
    LUT4 i1998_2_lut_rep_32_3_lut_4_lut (.A(n4103), .B(n4102), .C(key_out[9]), 
         .D(n4104), .Z(n4081)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1998_2_lut_rep_32_3_lut_4_lut.init = 16'h8000;
    LUT4 i12_4_lut (.A(n1546), .B(num_cnt[0]), .C(n4082), .D(n4), .Z(apa_enable_10)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D)))) */ ;
    defparam i12_4_lut.init = 16'ha3a0;
    LUT4 i1_2_lut_adj_30 (.A(num_cnt[2]), .B(num_cnt[1]), .Z(n4)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_30.init = 16'h2222;
    LUT4 mux_74_i2_4_lut (.A(n199), .B(BTN_cache[3]), .C(n4082), .D(n4069), 
         .Z(a_to_g2_6__N_18[1])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(95[3] 110[10])
    defparam mux_74_i2_4_lut.init = 16'h353f;
    LUT4 i1937_2_lut_rep_19_2_lut_3_lut_3_lut (.A(apa_enable_5), .B(n3755), 
         .C(n1136), .Z(n4068)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;
    defparam i1937_2_lut_rep_19_2_lut_3_lut_3_lut.init = 16'h3232;
    LUT4 i1_4_lut_adj_31 (.A(a_to_g2_c_1), .B(n2328), .C(n3794), .D(n3832), 
         .Z(n199)) /* synthesis lut_function=(A (C (D))+!A ((C)+!B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_adj_31.init = 16'hf151;
    FD1S3IX num_cnt__i0 (.D(n3883), .CK(clk_c), .CD(n606), .Q(num_cnt[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(31[2] 44[10])
    defparam num_cnt__i0.GSR = "ENABLED";
    FD1P3AX BTN_cache_i0_i3 (.D(button_four_c_3), .SP(apa_enable_5), .CK(apa), 
            .Q(BTN_cache[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam BTN_cache_i0_i3.GSR = "ENABLED";
    LUT4 i3127_2_lut (.A(LED_get[1]), .B(LED_get[0]), .Z(n29)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(109[15:22])
    defparam i3127_2_lut.init = 16'h6666;
    LUT4 i3148_3_lut_4_lut (.A(LED_get[2]), .B(n4107), .C(LED_get[3]), 
         .D(LED_get[4]), .Z(n26)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(109[15:22])
    defparam i3148_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3624_4_lut (.A(clk_cnt[5]), .B(n3879), .C(n2264), .D(n6_adj_9), 
         .Z(clk_c_enable_1)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(39[9:24])
    defparam i3624_4_lut.init = 16'h0040;
    LUT4 i3587_4_lut (.A(clk_cnt[1]), .B(n3875), .C(clk_cnt[2]), .D(clk_cnt[13]), 
         .Z(n3879)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3587_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_32 (.A(clk_cnt[12]), .B(clk_cnt[8]), .Z(n6_adj_9)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_32.init = 16'heeee;
    LUT4 i3583_4_lut (.A(clk_cnt[11]), .B(clk_cnt[0]), .C(clk_cnt[3]), 
         .D(clk_cnt[7]), .Z(n3875)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3583_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_4_lut_adj_33 (.A(key_out[8]), .B(n4071), .C(key_out[13]), 
         .D(key_out[6]), .Z(n3736)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_33.init = 16'h8000;
    LUT4 i2_3_lut_rep_25_4_lut (.A(n4101), .B(n4081), .C(key_out[1]), 
         .D(n2200), .Z(n4074)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_rep_25_4_lut.init = 16'h8000;
    LUT4 i1283_4_lut_4_lut (.A(n4092), .B(n4_adj_3), .C(n4082), .D(n2170), 
         .Z(a_to_g2_6__N_18[2])) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B))) */ ;
    defparam i1283_4_lut_4_lut.init = 16'h535f;
    LUT4 i1_3_lut_rep_43 (.A(BTN_cache[1]), .B(BTN_cache[2]), .C(BTN_cache[3]), 
         .Z(n4092)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_3_lut_rep_43.init = 16'hbfbf;
    LUT4 i1_2_lut_rep_23_3_lut_4_lut (.A(n4101), .B(n4081), .C(n4089), 
         .D(n4105), .Z(n4072)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_23_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_44 (.A(num_cnt[0]), .B(num_cnt[1]), .Z(n4093)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(50[3] 55[12])
    defparam i1_2_lut_rep_44.init = 16'heeee;
    LUT4 i1_2_lut_rep_38_3_lut (.A(num_cnt[0]), .B(num_cnt[1]), .C(num_cnt[2]), 
         .Z(n4087)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(50[3] 55[12])
    defparam i1_2_lut_rep_38_3_lut.init = 16'h1010;
    LUT4 i3629_2_lut_3_lut (.A(num_cnt[0]), .B(num_cnt[1]), .C(num_cnt[2]), 
         .Z(key_out_15__N_48)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(50[3] 55[12])
    defparam i3629_2_lut_3_lut.init = 16'h0101;
    LUT4 i1_2_lut_3_lut_4_lut (.A(num_cnt[0]), .B(num_cnt[1]), .C(apa_N_10), 
         .D(num_cnt[2]), .Z(n606)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(50[3] 55[12])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 BTN_cache_2__bdd_4_lut (.A(BTN_cache[2]), .B(BTN_cache[3]), .C(BTN_cache[0]), 
         .D(BTN_cache[1]), .Z(n1546)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam BTN_cache_2__bdd_4_lut.init = 16'h6880;
    LUT4 n1157_bdd_2_lut_3_lut (.A(BTN_cache[2]), .B(BTN_cache[1]), .C(BTN_cache[3]), 
         .Z(n3953)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam n1157_bdd_2_lut_3_lut.init = 16'h7f7f;
    FD1S3AX clk_cnt_299__i0 (.D(n75), .CK(clk_c), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_34 (.A(key_out[1]), .B(key_out[0]), .C(n4102), 
         .D(n4104), .Z(n3788)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_2_lut_3_lut_4_lut_adj_34.init = 16'h8000;
    LUT4 mux_74_i5_4_lut (.A(n3817), .B(n4092), .C(n4082), .D(n4_adj_10), 
         .Z(a_to_g2_6__N_18[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(95[3] 110[10])
    defparam mux_74_i5_4_lut.init = 16'hc5cf;
    FD1P3AX BTN_cache_i0_i2 (.D(button_four_c_2), .SP(apa_enable_5), .CK(apa), 
            .Q(BTN_cache[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam BTN_cache_i0_i2.GSR = "ENABLED";
    FD1P3AX BTN_cache_i0_i1 (.D(button_four_c_1), .SP(apa_enable_5), .CK(apa), 
            .Q(BTN_cache[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam BTN_cache_i0_i1.GSR = "ENABLED";
    FD1P3AX a_to_g2_i7 (.D(a_to_g2_6__N_18[6]), .SP(apa_enable_10), .CK(apa), 
            .Q(a_to_g2_c_6));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam a_to_g2_i7.GSR = "ENABLED";
    FD1P3AX a_to_g2_i6 (.D(a_to_g2_6__N_18[5]), .SP(apa_enable_13), .CK(apa), 
            .Q(a_to_g2_c_5));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam a_to_g2_i6.GSR = "ENABLED";
    FD1P3AX a_to_g2_i5 (.D(a_to_g2_6__N_18[4]), .SP(apa_enable_10), .CK(apa), 
            .Q(a_to_g2_c_4));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam a_to_g2_i5.GSR = "ENABLED";
    FD1P3AX a_to_g2_i4 (.D(a_to_g2_6__N_18[3]), .SP(apa_enable_10), .CK(apa), 
            .Q(a_to_g2_c_3));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam a_to_g2_i4.GSR = "ENABLED";
    FD1P3AX a_to_g2_i3 (.D(a_to_g2_6__N_18[2]), .SP(apa_enable_10), .CK(apa), 
            .Q(a_to_g2_c_2));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam a_to_g2_i3.GSR = "ENABLED";
    FD1S3IX LED_get_300__i0 (.D(n30), .CK(apa), .CD(n386), .Q(LED_get[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(109[15:22])
    defparam LED_get_300__i0.GSR = "ENABLED";
    OB ROW_pad_1 (.I(ROW_c_1), .O(ROW[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[8:11])
    LUT4 i3598_2_lut_rep_48 (.A(num_cnt[0]), .B(num_cnt[1]), .Z(n4097)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i3598_2_lut_rep_48.init = 16'h7777;
    FD1P3AX a_to_g_i7 (.D(a_to_g_6__N_11[3]), .SP(apa_enable_12), .CK(apa), 
            .Q(a_to_g_c_6));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam a_to_g_i7.GSR = "ENABLED";
    FD1P3AX a_to_g_i6 (.D(n4068), .SP(apa_enable_12), .CK(apa), .Q(a_to_g_c_5));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam a_to_g_i6.GSR = "ENABLED";
    LUT4 i1_4_lut_then_4_lut_adj_35 (.A(n3808), .B(key_out[10]), .C(key_out[11]), 
         .D(key_out[6]), .Z(n4109)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_then_4_lut_adj_35.init = 16'h2880;
    LUT4 i1_4_lut_adj_36 (.A(a_to_g2_c_4), .B(n4069), .C(n249), .D(n262), 
         .Z(n4_adj_10)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_adj_36.init = 16'hc4c0;
    FD1P3AX key_out_i15 (.D(COL_c_3), .SP(key_out_15__N_48), .CK(apa), 
            .Q(key_out[15]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam key_out_i15.GSR = "ENABLED";
    LUT4 i1_4_lut_else_4_lut_adj_37 (.A(n3808), .B(key_out[10]), .C(key_out[11]), 
         .D(key_out[6]), .Z(n4108)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_else_4_lut_adj_37.init = 16'h8000;
    LUT4 i2_3_lut_4_lut_adj_38 (.A(key_out[9]), .B(n4083), .C(n4090), 
         .D(n2200), .Z(n3822)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_38.init = 16'h8000;
    LUT4 i15_2_lut_3_lut (.A(num_cnt[0]), .B(num_cnt[1]), .C(num_cnt[2]), 
         .Z(n3725)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i15_2_lut_3_lut.init = 16'h7878;
    LUT4 i3621_4_lut (.A(clk_cnt[7]), .B(n3873), .C(n12_adj_6), .D(n8), 
         .Z(apa_N_10)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(32[6:20])
    defparam i3621_4_lut.init = 16'h0004;
    LUT4 i3581_4_lut (.A(n2264), .B(clk_cnt[5]), .C(clk_cnt[12]), .D(clk_cnt[8]), 
         .Z(n3873)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3581_4_lut.init = 16'h8000;
    LUT4 i5_4_lut_adj_39 (.A(clk_cnt[1]), .B(clk_cnt[11]), .C(clk_cnt[13]), 
         .D(clk_cnt[0]), .Z(n12_adj_6)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(32[6:20])
    defparam i5_4_lut_adj_39.init = 16'hfffe;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i333_2_lut_rep_50 (.A(key_out[4]), .B(key_out[5]), .Z(n4099)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i333_2_lut_rep_50.init = 16'h6666;
    LUT4 i1_4_lut_adj_40 (.A(n33), .B(n1262), .C(key_out[1]), .D(n3849), 
         .Z(n3791)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_adj_40.init = 16'h8088;
    LUT4 i1884_4_lut (.A(n1263), .B(key_out[2]), .C(n2350), .D(key_out[0]), 
         .Z(n33)) /* synthesis lut_function=(A (((D)+!C)+!B)) */ ;
    defparam i1884_4_lut.init = 16'haa2a;
    LUT4 i3608_2_lut (.A(n2170), .B(n3785), .Z(n3898)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i3608_2_lut.init = 16'h7777;
    LUT4 i2_3_lut_adj_41 (.A(key_out[11]), .B(n3477), .C(key_out[10]), 
         .Z(n1262)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(79[9:27])
    defparam i2_3_lut_adj_41.init = 16'hbfbf;
    LUT4 i1906_2_lut_rep_51 (.A(key_out[2]), .B(key_out[0]), .Z(n4100)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1906_2_lut_rep_51.init = 16'h8888;
    LUT4 i1_2_lut_adj_42 (.A(clk_cnt[3]), .B(clk_cnt[2]), .Z(n8)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(32[6:20])
    defparam i1_2_lut_adj_42.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_3_lut_4_lut_4_lut (.A(apa_enable_5), .B(n4087), 
         .C(n1546), .D(n1136), .Z(apa_enable_13)) /* synthesis lut_function=(A (B)+!A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_3_lut_4_lut_4_lut.init = 16'hccd8;
    LUT4 i1_2_lut_rep_26_3_lut_4_lut (.A(key_out[9]), .B(n4085), .C(n4105), 
         .D(n4101), .Z(n4075)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_26_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_35_3_lut_4_lut (.A(key_out[2]), .B(key_out[0]), .C(key_out[1]), 
         .D(key_out[3]), .Z(n4084)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_35_3_lut_4_lut.init = 16'h8000;
    LUT4 key_out_5__bdd_4_lut (.A(key_out[5]), .B(key_out[9]), .C(key_out[3]), 
         .D(key_out[4]), .Z(n4054)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam key_out_5__bdd_4_lut.init = 16'h6880;
    LUT4 i1_2_lut_rep_40_3_lut (.A(key_out[2]), .B(key_out[0]), .C(key_out[3]), 
         .Z(n4089)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_40_3_lut.init = 16'h8080;
    FD1P3AX key_out_i14 (.D(COL_c_2), .SP(key_out_15__N_48), .CK(apa), 
            .Q(key_out[14]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam key_out_i14.GSR = "ENABLED";
    FD1P3AX key_out_i13 (.D(COL_c_1), .SP(key_out_15__N_48), .CK(apa), 
            .Q(key_out[13]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam key_out_i13.GSR = "ENABLED";
    FD1P3AX key_out_i12 (.D(COL_c_0), .SP(key_out_15__N_48), .CK(apa), 
            .Q(key_out[12]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam key_out_i12.GSR = "ENABLED";
    FD1P3AX key_out_i11 (.D(COL_c_3), .SP(key_out_15__N_53), .CK(apa), 
            .Q(key_out[11]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam key_out_i11.GSR = "ENABLED";
    FD1P3AX key_out_i10 (.D(COL_c_2), .SP(key_out_15__N_53), .CK(apa), 
            .Q(key_out[10]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam key_out_i10.GSR = "ENABLED";
    FD1P3AX key_out_i9 (.D(COL_c_1), .SP(key_out_15__N_53), .CK(apa), 
            .Q(key_out[9]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam key_out_i9.GSR = "ENABLED";
    FD1P3AX key_out_i8 (.D(COL_c_0), .SP(key_out_15__N_53), .CK(apa), 
            .Q(key_out[8]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam key_out_i8.GSR = "ENABLED";
    FD1P3AX key_out_i7 (.D(COL_c_3), .SP(key_out_15__N_58), .CK(apa), 
            .Q(key_out[7]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam key_out_i7.GSR = "ENABLED";
    FD1P3AX key_out_i6 (.D(COL_c_2), .SP(key_out_15__N_58), .CK(apa), 
            .Q(key_out[6]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam key_out_i6.GSR = "ENABLED";
    FD1P3AX key_out_i5 (.D(COL_c_1), .SP(key_out_15__N_58), .CK(apa), 
            .Q(key_out[5]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam key_out_i5.GSR = "ENABLED";
    FD1P3AX key_out_i4 (.D(COL_c_0), .SP(key_out_15__N_58), .CK(apa), 
            .Q(key_out[4]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam key_out_i4.GSR = "ENABLED";
    FD1P3AX key_out_i3 (.D(COL_c_3), .SP(key_out_15__N_63), .CK(apa), 
            .Q(key_out[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam key_out_i3.GSR = "ENABLED";
    FD1P3AX key_out_i2 (.D(COL_c_2), .SP(key_out_15__N_63), .CK(apa), 
            .Q(key_out[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam key_out_i2.GSR = "ENABLED";
    FD1P3AX key_out_i1 (.D(COL_c_1), .SP(key_out_15__N_63), .CK(apa), 
            .Q(key_out[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam key_out_i1.GSR = "ENABLED";
    FD1S3IX ROW_i4 (.D(n4093), .CK(apa_N_6), .CD(num_cnt[2]), .Q(ROW_c_3));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(49[2] 56[9])
    defparam ROW_i4.GSR = "ENABLED";
    FD1S3IX ROW_i3 (.D(n7), .CK(apa_N_6), .CD(num_cnt[2]), .Q(ROW_c_2));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(49[2] 56[9])
    defparam ROW_i3.GSR = "ENABLED";
    FD1S3AX clk_cnt_299__i1 (.D(n74), .CK(clk_c), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299__i1.GSR = "ENABLED";
    OB ROW_pad_0 (.I(ROW_c_0), .O(ROW[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[8:11])
    OB a_to_g_pad_6 (.I(a_to_g_c_6), .O(a_to_g[6]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:9])
    OB a_to_g_pad_5 (.I(a_to_g_c_5), .O(a_to_g[5]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:9])
    OB a_to_g_pad_4 (.I(a_to_g_c_5), .O(a_to_g[4]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:9])
    OB a_to_g_pad_3 (.I(a_to_g_c_6), .O(a_to_g[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:9])
    OB a_to_g_pad_2 (.I(a_to_g_c_6), .O(a_to_g[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:9])
    OB a_to_g_pad_1 (.I(a_to_g_c_6), .O(a_to_g[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:9])
    OB a_to_g_pad_0 (.I(GND_net), .O(a_to_g[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:9])
    OB a_to_g2_pad_6 (.I(a_to_g2_c_6), .O(a_to_g2[6]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:10])
    OB a_to_g2_pad_5 (.I(a_to_g2_c_5), .O(a_to_g2[5]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:10])
    OB a_to_g2_pad_4 (.I(a_to_g2_c_4), .O(a_to_g2[4]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:10])
    OB a_to_g2_pad_3 (.I(a_to_g2_c_3), .O(a_to_g2[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:10])
    OB a_to_g2_pad_2 (.I(a_to_g2_c_2), .O(a_to_g2[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:10])
    OB a_to_g2_pad_1 (.I(a_to_g2_c_1), .O(a_to_g2[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:10])
    OB a_to_g2_pad_0 (.I(a_to_g2_c_0), .O(a_to_g2[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:10])
    OB seg_pad (.I(GND_net), .O(seg));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(13[3:6])
    OB seg2_pad (.I(GND_net), .O(seg2));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(14[3:7])
    IB COL_pad_3 (.I(COL[3]), .O(COL_c_3));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(8[8:11])
    IB COL_pad_2 (.I(COL[2]), .O(COL_c_2));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(8[8:11])
    IB COL_pad_1 (.I(COL[1]), .O(COL_c_1));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(8[8:11])
    IB COL_pad_0 (.I(COL[0]), .O(COL_c_0));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(8[8:11])
    IB button_four_pad_3 (.I(button_four[3]), .O(button_four_c_3));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(9[3:14])
    IB button_four_pad_2 (.I(button_four[2]), .O(button_four_c_2));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(9[3:14])
    IB button_four_pad_1 (.I(button_four[1]), .O(button_four_c_1));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(9[3:14])
    IB button_four_pad_0 (.I(button_four[0]), .O(button_four_c_0));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(9[3:14])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(15[3:6])
    LUT4 i3613_2_lut_3_lut (.A(num_cnt[2]), .B(num_cnt[0]), .C(num_cnt[1]), 
         .Z(key_out_15__N_63)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(70[6:17])
    defparam i3613_2_lut_3_lut.init = 16'h4040;
    LUT4 i3618_2_lut_3_lut (.A(num_cnt[2]), .B(num_cnt[0]), .C(num_cnt[1]), 
         .Z(key_out_15__N_53)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(70[6:17])
    defparam i3618_2_lut_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_rep_52 (.A(key_out[5]), .B(key_out[4]), .Z(n4101)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_2_lut_rep_52.init = 16'h8888;
    LUT4 n364_bdd_2_lut_3667_3_lut (.A(key_out[5]), .B(key_out[4]), .C(n3990), 
         .Z(n3991)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam n364_bdd_2_lut_3667_3_lut.init = 16'h8080;
    LUT4 i1_3_lut_4_lut (.A(key_out[5]), .B(key_out[4]), .C(n4103), .D(n234), 
         .Z(n1153)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_43 (.A(key_out[5]), .B(key_out[4]), .C(key_out[2]), 
         .D(key_out[3]), .Z(n3808)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_2_lut_3_lut_4_lut_adj_43.init = 16'h8000;
    LUT4 i1_2_lut_rep_53 (.A(key_out[13]), .B(key_out[12]), .Z(n4102)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_2_lut_rep_53.init = 16'h8888;
    LUT4 i2_3_lut_adj_44 (.A(key_out[11]), .B(n3477), .C(key_out[10]), 
         .Z(n1263)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(80[9:27])
    defparam i2_3_lut_adj_44.init = 16'hf7f7;
    LUT4 i1_2_lut_rep_36_3_lut_4_lut (.A(key_out[13]), .B(key_out[12]), 
         .C(n4104), .D(n4103), .Z(n4085)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_2_lut_rep_36_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_54 (.A(key_out[11]), .B(key_out[10]), .Z(n4103)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_2_lut_rep_54.init = 16'h8888;
    LUT4 i1_2_lut_rep_41_3_lut_4_lut (.A(key_out[11]), .B(key_out[10]), 
         .C(key_out[12]), .D(key_out[13]), .Z(n4090)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_2_lut_rep_41_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_adj_45 (.A(a_to_g2_c_5), .B(n249), .C(n262), .Z(n243)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_3_lut_adj_45.init = 16'hdcdc;
    LUT4 i1_2_lut_rep_55 (.A(key_out[14]), .B(key_out[15]), .Z(n4104)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_55.init = 16'h8888;
    LUT4 i4_4_lut_adj_46 (.A(n3845), .B(LED_get[4]), .C(LED_get[0]), .D(LED_get[2]), 
         .Z(n1136)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i4_4_lut_adj_46.init = 16'hf7ff;
    LUT4 i1_2_lut_rep_39_3_lut_4_lut (.A(key_out[14]), .B(key_out[15]), 
         .C(key_out[12]), .D(key_out[13]), .Z(n4088)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_39_3_lut_4_lut.init = 16'h8000;
    LUT4 i1876_2_lut_rep_56 (.A(key_out[7]), .B(key_out[6]), .Z(n4105)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1876_2_lut_rep_56.init = 16'h8888;
    LUT4 i3553_2_lut (.A(LED_get[3]), .B(LED_get[1]), .Z(n3845)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3553_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_24_3_lut_4_lut (.A(key_out[9]), .B(n4085), .C(n4084), 
         .D(n2200), .Z(n4073)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_24_3_lut_4_lut.init = 16'h8000;
    LUT4 i1878_4_lut (.A(n1265), .B(key_out[5]), .C(n4073), .D(key_out[4]), 
         .Z(n2170)) /* synthesis lut_function=(A (((D)+!C)+!B)) */ ;
    defparam i1878_4_lut.init = 16'haa2a;
    LUT4 i1892_4_lut (.A(n1199), .B(key_out[3]), .C(n4100), .D(n4074), 
         .Z(n2184)) /* synthesis lut_function=(A (B+!(C (D)))) */ ;
    defparam i1892_4_lut.init = 16'h8aaa;
    LUT4 i1_4_lut_adj_47 (.A(n1202), .B(key_out[2]), .C(n2350), .D(key_out[0]), 
         .Z(n3785)) /* synthesis lut_function=(A (B+!(C (D)))) */ ;
    defparam i1_4_lut_adj_47.init = 16'h8aaa;
    LUT4 i2_4_lut_adj_48 (.A(key_out[13]), .B(n4070), .C(key_out[6]), 
         .D(n3771), .Z(n1199)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(77[9:27])
    defparam i2_4_lut_adj_48.init = 16'hbfff;
    LUT4 i1908_2_lut_3_lut (.A(key_out[7]), .B(key_out[6]), .C(key_out[8]), 
         .Z(n2200)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1908_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut (.A(n2170), .B(n2184), .C(n3791), .Z(n3732)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h8080;
    FD1P3AX a_to_g2_i2 (.D(a_to_g2_6__N_18[1]), .SP(apa_enable_13), .CK(apa), 
            .Q(a_to_g2_c_1));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(62[2] 112[9])
    defparam a_to_g2_i2.GSR = "ENABLED";
    LUT4 i2_3_lut_adj_49 (.A(key_out[7]), .B(n3736), .C(key_out[12]), 
         .Z(n1202)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(78[9:27])
    defparam i2_3_lut_adj_49.init = 16'hf7f7;
    LUT4 i1952_2_lut_3_lut_rep_57 (.A(key_out[7]), .B(key_out[6]), .C(key_out[8]), 
         .Z(n4106)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1952_2_lut_3_lut_rep_57.init = 16'hf8f8;
    LUT4 mux_74_i4_4_lut (.A(n229), .B(n183), .C(n4082), .D(n3732), 
         .Z(a_to_g2_6__N_18[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(95[3] 110[10])
    defparam mux_74_i4_4_lut.init = 16'hc5cf;
    LUT4 i1_4_lut_adj_50 (.A(a_to_g2_c_3), .B(n2328), .C(n3794), .D(n3832), 
         .Z(n229)) /* synthesis lut_function=(A (C (D))+!A ((C)+!B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_4_lut_adj_50.init = 16'hf151;
    LUT4 i2_3_lut_adj_51 (.A(key_out[15]), .B(n3822), .C(key_out[14]), 
         .Z(n1265)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(76[9:27])
    defparam i2_3_lut_adj_51.init = 16'hf7f7;
    LUT4 i2_4_lut_adj_52 (.A(key_out[5]), .B(n1266), .C(n3865), .D(n2184), 
         .Z(n3817)) /* synthesis lut_function=(A (B (D))+!A !((C+!(D))+!B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i2_4_lut_adj_52.init = 16'h8c00;
    LUT4 i2_3_lut_adj_53 (.A(key_out[15]), .B(n3822), .C(key_out[14]), 
         .Z(n1266)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(75[9:27])
    defparam i2_3_lut_adj_53.init = 16'hbfbf;
    LUT4 i3_4_lut_4_lut (.A(key_out[7]), .B(key_out[6]), .C(key_out[8]), 
         .D(n6), .Z(n2328)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (C (D)))) */ ;
    defparam i3_4_lut_4_lut.init = 16'he800;
    LUT4 i2_2_lut_3_lut_3_lut_4_lut_4_lut (.A(apa_enable_5), .B(n16), .C(n3755), 
         .D(n1136), .Z(a_to_g_6__N_11[3])) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+!(D))))) */ ;
    defparam i2_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h0302;
    VLO i1 (.Z(GND_net));
    LUT4 i3130_2_lut_rep_58 (.A(LED_get[1]), .B(LED_get[0]), .Z(n4107)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(109[15:22])
    defparam i3130_2_lut_rep_58.init = 16'h8888;
    LUT4 i238_2_lut (.A(num_cnt[0]), .B(num_cnt[1]), .Z(n3)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(36[16:23])
    defparam i238_2_lut.init = 16'h6666;
    LUT4 i2_4_lut_adj_54 (.A(button_four_c_2), .B(button_four_c_1), .C(BTN_cache[2]), 
         .D(BTN_cache[1]), .Z(n6_adj_1)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(95[6:29])
    defparam i2_4_lut_adj_54.init = 16'h7bde;
    LUT4 i3134_2_lut_3_lut (.A(LED_get[1]), .B(LED_get[0]), .C(LED_get[2]), 
         .Z(n28)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(109[15:22])
    defparam i3134_2_lut_3_lut.init = 16'h7878;
    LUT4 i3141_2_lut_3_lut_4_lut (.A(LED_get[1]), .B(LED_get[0]), .C(LED_get[3]), 
         .D(LED_get[2]), .Z(n27)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(109[15:22])
    defparam i3141_2_lut_3_lut_4_lut.init = 16'h78f0;
    TSALL TSALL_INST (.TSALL(GND_net));
    FD1S3AX clk_cnt_299__i2 (.D(n73), .CK(clk_c), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299__i2.GSR = "ENABLED";
    FD1S3AX clk_cnt_299__i3 (.D(n72), .CK(clk_c), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299__i3.GSR = "ENABLED";
    FD1S3AX clk_cnt_299__i4 (.D(n71), .CK(clk_c), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299__i4.GSR = "ENABLED";
    FD1S3AX clk_cnt_299__i5 (.D(n70), .CK(clk_c), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299__i5.GSR = "ENABLED";
    FD1S3AX clk_cnt_299__i6 (.D(n69), .CK(clk_c), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299__i6.GSR = "ENABLED";
    FD1S3AX clk_cnt_299__i7 (.D(n68), .CK(clk_c), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299__i7.GSR = "ENABLED";
    FD1S3AX clk_cnt_299__i8 (.D(n67), .CK(clk_c), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299__i8.GSR = "ENABLED";
    FD1S3AX clk_cnt_299__i9 (.D(n66), .CK(clk_c), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299__i9.GSR = "ENABLED";
    FD1S3AX clk_cnt_299__i10 (.D(n65), .CK(clk_c), .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299__i10.GSR = "ENABLED";
    FD1S3AX clk_cnt_299__i11 (.D(n64), .CK(clk_c), .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299__i11.GSR = "ENABLED";
    FD1S3AX clk_cnt_299__i12 (.D(n63), .CK(clk_c), .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299__i12.GSR = "ENABLED";
    FD1S3AX clk_cnt_299__i13 (.D(n62), .CK(clk_c), .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(43[14:21])
    defparam clk_cnt_299__i13.GSR = "ENABLED";
    FD1S3IX LED_get_300__i1 (.D(n29), .CK(apa), .CD(n386), .Q(LED_get[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(109[15:22])
    defparam LED_get_300__i1.GSR = "ENABLED";
    FD1S3IX LED_get_300__i2 (.D(n28), .CK(apa), .CD(n386), .Q(LED_get[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(109[15:22])
    defparam LED_get_300__i2.GSR = "ENABLED";
    FD1S3IX LED_get_300__i3 (.D(n27), .CK(apa), .CD(n386), .Q(LED_get[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(109[15:22])
    defparam LED_get_300__i3.GSR = "ENABLED";
    FD1S3IX LED_get_300__i4 (.D(n26), .CK(apa), .CD(n386), .Q(LED_get[4]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(109[15:22])
    defparam LED_get_300__i4.GSR = "ENABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1_2_lut_3_lut_adj_55 (.A(key_out[8]), .B(key_out[7]), .C(key_out[6]), 
         .Z(n3794)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_2_lut_3_lut_adj_55.init = 16'h8080;
    LUT4 n365_bdd_2_lut_3641_3_lut (.A(n3785), .B(n3791), .C(n3958), .Z(n3959)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam n365_bdd_2_lut_3641_3_lut.init = 16'hf7f7;
    LUT4 m1_lut (.Z(n4321)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    FD1P3IX apa_89 (.D(n4321), .SP(clk_c_enable_1), .CD(apa_N_10), .CK(clk_c), 
            .Q(apa)) /* synthesis lse_init_val=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(31[2] 44[10])
    defparam apa_89.GSR = "ENABLED";
    LUT4 button_four_3__I_0_i4_2_lut (.A(button_four_c_3), .B(BTN_cache[3]), 
         .Z(n4_adj_7)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(95[6:29])
    defparam button_four_3__I_0_i4_2_lut.init = 16'h6666;
    LUT4 i3593_2_lut (.A(num_cnt[0]), .B(apa_N_10), .Z(n3883)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(31[2] 44[10])
    defparam i3593_2_lut.init = 16'h6666;
    PFUMX i3714 (.BLUT(n4123), .ALUT(n4124), .C0(key_out[15]), .Z(n4125));
    LUT4 i3543_2_lut_3_lut_4_lut (.A(n4101), .B(n4084), .C(n4106), .D(n4085), 
         .Z(n3835)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3543_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n4101), .B(n4084), .C(n4085), .D(key_out[9]), 
         .Z(n6)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h8000;
    PFUMX i3712 (.BLUT(n4120), .ALUT(n4121), .C0(key_out[9]), .Z(n4122));
    LUT4 mux_74_i7_4_lut (.A(n243_adj_5), .B(n183), .C(n4082), .D(n3732), 
         .Z(a_to_g2_6__N_18[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(95[3] 110[10])
    defparam mux_74_i7_4_lut.init = 16'hc5cf;
    PFUMX i3710 (.BLUT(n4117), .ALUT(n4118), .C0(key_out[3]), .Z(n3777));
    LUT4 i3605_2_lut_rep_33_2_lut (.A(apa_enable_5), .B(n1136), .Z(n4082)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i3605_2_lut_rep_33_2_lut.init = 16'h1111;
    PFUMX i3708 (.BLUT(n4114), .ALUT(n4115), .C0(n3755), .Z(apa_enable_12));
    LUT4 i1_3_lut_adj_56 (.A(a_to_g2_c_6), .B(n249), .C(n262), .Z(n243_adj_5)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[4] 92[13])
    defparam i1_3_lut_adj_56.init = 16'hdcdc;
    LUT4 i3_4_lut_adj_57 (.A(clk_cnt[10]), .B(clk_cnt[4]), .C(clk_cnt[9]), 
         .D(clk_cnt[6]), .Z(n2264)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_57.init = 16'h8000;
    PFUMX i3706 (.BLUT(n4111), .ALUT(n4112), .C0(key_out[5]), .Z(n4113));
    PFUMX i3704 (.BLUT(n4108), .ALUT(n4109), .C0(key_out[9]), .Z(n4110));
    LUT4 i1_2_lut_adj_58 (.A(key_out[7]), .B(key_out[12]), .Z(n3771)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_58.init = 16'h8888;
    LUT4 i3610_4_lut (.A(n3898), .B(n3817), .C(n243), .D(n4082), .Z(a_to_g2_6__N_18[5])) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i3610_4_lut.init = 16'hffbf;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

