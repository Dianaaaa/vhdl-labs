// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Thu Nov 19 18:30:13 2020
//
// Verilog Description of module PWM
//

module PWM (rst_n, clk, key_menu, key_up, key_down, menu_state, 
            a_to_g, seg, pulse_out, display);   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(6[8:11])
    input rst_n;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(8[6:11])
    input clk;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(9[6:9])
    input key_menu;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(10[6:14])
    input key_up;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(11[6:12])
    input key_down;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(12[6:14])
    output menu_state;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(13[6:16])
    output [6:0]a_to_g;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(14[3:9])
    output seg;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(15[3:6])
    output pulse_out;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(16[6:15])
    output display;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(17[6:13])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(9[6:9])
    wire clk0 /* synthesis is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(23[8:12])
    wire key_menu1 /* synthesis is_clock=1, SET_AS_NETWORK=key_menu1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(30[8:17])
    wire clk0_N_192 /* synthesis is_inv_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(16[6:15])
    
    wire GND_net, VCC_net, rst_n_c, key_menu_c, key_up_c, key_down_c, 
        n1470, pulse_out_c, display_c;
    wire [16:0]cnt1;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(24[8:12])
    wire [16:0]cnt2;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(25[8:12])
    wire [1:0]cycle_pulse;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(26[8:19])
    wire [1:0]duty_pulse;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(27[8:18])
    wire [16:0]cycle;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(28[8:13])
    
    wire n14, n12, n10, n8, n7, n6;
    wire [31:0]dt;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(29[8:10])
    
    wire key_up1_ls, key_down1_ls;
    wire [7:0]count0;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(52[10:16])
    
    wire n10_adj_234, n1597, clk0_N_193;
    wire [32:0]cnt1_16__N_84;
    
    wire cnt1_16__N_83, n2227, n1594, n1593, n2228, n2229;
    wire [16:0]cnt1_16__N_65;
    wire [16:0]cnt1_16__N_10;
    
    wire n1513, direction, cnt2_16__N_173;
    wire [17:0]cnt2_16__N_154;
    
    wire cnt2_16__N_153, n15, n2505, n6_adj_235, n2230, n2231, direction_N_196, 
        n939, n938, n937, n936, n935, n934, n1280, pulse_out_N_190, 
        pulse_out_N_189, menu_state_c_6;
    wire [6:0]a_to_g_6__N_1;
    
    wire n2232, n2219, n2220, n2221, n436, n2626, n2500, n2206, 
        n2222, n2434, n547, n546, n548, n549, n550, n551, n552, 
        n553, n554, n555, n556, n557, n558, n559, n560, n561, 
        n2625, n2624, n2205, n2496, n1888, n2204, n2203, n2202, 
        n2623, n2201, n16, n15_adj_236, n2306, n2622, n2200, n2199, 
        n2198, n2197, n2196, n2233, n2223, n2234, n32, n2235, 
        n2236, n2195, n2237, n2238, n2239, n2454, n2621, n2486, 
        n2240, n2241, n2242, n2194, n30, n28, n26, n24, n22, 
        n20, n18, n946, n945, n944, n943, n2193, n2192, n942, 
        n941, n2620, n2191, n2190, clk_c_enable_7, n2679, n2189, 
        n2188, n2619, n940, n951, n952, n2481, n2618, n7_adj_237, 
        n1869, n2225, n2226, n2224, n2617, n2549, n2616, n2473, 
        n2615, n2614, n2468, n2613, clk_c_enable_24, n2612, n2530, 
        n6_adj_238, n2551, n2441, n2524, n2611, n2610, n14_adj_239, 
        n2290, n2289, n2288, n2287, n2522, n2609, n24_adj_240, 
        n2518, n2305, n2608, n2607, n2606, n74, n75, n76, n77, 
        n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, 
        n88, n89, n90, n1515, n1517, n1519, n1521, n1523, n1525, 
        n1527, n1529, n1531, n1533, n1535, n2439, n105, n2286, 
        n2285, n2284, n2271, n2270, n2269, n2268, n2266, n22_adj_241, 
        clk_c_enable_37, n2604, n38, n39, n40, n41, n42, n43, 
        n44, n45, n2265, n2264, n2263, n2262, n2261, n2260, 
        n2259, n20_adj_242, n2602, n2432;
    
    VHI i2 (.Z(VCC_net));
    LUT4 cnt2_16__I_0_122_i7_2_lut (.A(cnt2[3]), .B(cnt1[3]), .Z(n7)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i7_2_lut.init = 16'h6666;
    LUT4 cnt2_16__I_0_122_i12_3_lut_3_lut (.A(cnt2[7]), .B(cnt1[7]), .C(cnt1[6]), 
         .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 cnt2_16__I_0_122_i17_2_lut_rep_41 (.A(cnt2[8]), .B(cnt1[8]), .Z(n2624)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i17_2_lut_rep_41.init = 16'h6666;
    FD1S3AX key_down1_ls_99 (.D(n2614), .CK(clk_c), .Q(key_down1_ls));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(66[5] 69[9])
    defparam key_down1_ls_99.GSR = "DISABLED";
    FD1S3AX pulse_out_103 (.D(pulse_out_N_189), .CK(clk0_N_192), .Q(pulse_out_c));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(120[5] 126[9])
    defparam pulse_out_103.GSR = "DISABLED";
    LUT4 cnt2_16__I_0_122_i14_3_lut_3_lut (.A(cnt2[8]), .B(cnt1[8]), .C(n12), 
         .Z(n14)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1162_2_lut_2_lut_3_lut_4_lut (.A(n7_adj_237), .B(n1594), .C(clk0), 
         .D(n2434), .Z(n1593)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1162_2_lut_2_lut_3_lut_4_lut.init = 16'h0004;
    OB a_to_g_pad_1 (.I(n1470), .O(a_to_g[1]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(14[3:9])
    CCU2D sub_249_add_2_6 (.A0(cnt2[4]), .B0(cnt2_16__N_154[4]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt2[5]), .B1(cnt2_16__N_154[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2220), .COUT(n2221));
    defparam sub_249_add_2_6.INIT0 = 16'h5999;
    defparam sub_249_add_2_6.INIT1 = 16'h5999;
    defparam sub_249_add_2_6.INJECT1_0 = "NO";
    defparam sub_249_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_249_add_2_2 (.A0(cnt2[0]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt2[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2219));
    defparam sub_249_add_2_2.INIT0 = 16'h5000;
    defparam sub_249_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_249_add_2_2.INJECT1_0 = "NO";
    defparam sub_249_add_2_2.INJECT1_1 = "NO";
    LUT4 i1147_4_lut_4_lut (.A(n2617), .B(n2500), .C(n22), .D(n8), .Z(n24)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam i1147_4_lut_4_lut.init = 16'hf4b0;
    FD1S3AX display_104 (.D(pulse_out_c), .CK(clk0_N_192), .Q(display_c));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(120[5] 126[9])
    defparam display_104.GSR = "DISABLED";
    FD1S3AX menu_state_105 (.D(a_to_g_6__N_1[5]), .CK(key_menu1), .Q(menu_state_c_6));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(132[5] 142[9])
    defparam menu_state_105.GSR = "ENABLED";
    FD1S3AX clk0_96 (.D(clk0_N_193), .CK(clk_c), .Q(clk0));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(54[5] 60[10])
    defparam clk0_96.GSR = "DISABLED";
    CCU2D sub_249_add_2_8 (.A0(cnt2[6]), .B0(cnt2_16__N_154[6]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt2[7]), .B1(cnt2_16__N_154[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2221), .COUT(n2222));
    defparam sub_249_add_2_8.INIT0 = 16'h5999;
    defparam sub_249_add_2_8.INIT1 = 16'h5999;
    defparam sub_249_add_2_8.INJECT1_0 = "NO";
    defparam sub_249_add_2_8.INJECT1_1 = "NO";
    CCU2D add_333_7 (.A0(cnt1[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt1[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2237), 
          .COUT(n2238), .S0(n556), .S1(n555));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(86[16:20])
    defparam add_333_7.INIT0 = 16'h5aaa;
    defparam add_333_7.INIT1 = 16'h5aaa;
    defparam add_333_7.INJECT1_0 = "NO";
    defparam add_333_7.INJECT1_1 = "NO";
    CCU2D sub_249_add_2_10 (.A0(cnt2[8]), .B0(cnt2_16__N_154[8]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt2[9]), .B1(cnt2_16__N_154[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2222), .COUT(n2223));
    defparam sub_249_add_2_10.INIT0 = 16'h5999;
    defparam sub_249_add_2_10.INIT1 = 16'h5999;
    defparam sub_249_add_2_10.INJECT1_0 = "NO";
    defparam sub_249_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_249_add_2_12 (.A0(cnt2[10]), .B0(cnt2_16__N_154[10]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt2[11]), .B1(cnt2_16__N_154[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2223), .COUT(n2224));
    defparam sub_249_add_2_12.INIT0 = 16'h5999;
    defparam sub_249_add_2_12.INIT1 = 16'h5999;
    defparam sub_249_add_2_12.INJECT1_0 = "NO";
    defparam sub_249_add_2_12.INJECT1_1 = "NO";
    LUT4 cnt2_16__I_0_122_i11_2_lut_rep_26 (.A(cnt2[5]), .B(cnt1[5]), .Z(n2609)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i11_2_lut_rep_26.init = 16'h6666;
    CCU2D sub_249_add_2_14 (.A0(cnt2[12]), .B0(cnt2_16__N_154[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt2[13]), .B1(cnt2_16__N_154[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2224), .COUT(n2225));
    defparam sub_249_add_2_14.INIT0 = 16'h5999;
    defparam sub_249_add_2_14.INIT1 = 16'h5999;
    defparam sub_249_add_2_14.INJECT1_0 = "NO";
    defparam sub_249_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_249_add_2_16 (.A0(cnt2[14]), .B0(cnt2_16__N_154[14]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt2[15]), .B1(cnt2_16__N_154[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2225), .COUT(n2226));
    defparam sub_249_add_2_16.INIT0 = 16'h5999;
    defparam sub_249_add_2_16.INIT1 = 16'h5999;
    defparam sub_249_add_2_16.INJECT1_0 = "NO";
    defparam sub_249_add_2_16.INJECT1_1 = "NO";
    OB a_to_g_pad_0 (.I(menu_state_c_6), .O(a_to_g[0]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(14[3:9])
    LUT4 i1173_2_lut_3_lut (.A(cnt2[16]), .B(cnt1[16]), .C(n2551), .Z(n2518)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam i1173_2_lut_3_lut.init = 16'hf6f6;
    OB a_to_g_pad_2 (.I(VCC_net), .O(a_to_g[2]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(14[3:9])
    LUT4 i1171_2_lut_3_lut (.A(cnt2[16]), .B(cnt1[16]), .C(n2549), .Z(n2524)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam i1171_2_lut_3_lut.init = 16'hf6f6;
    LUT4 cnt2_16__I_0_122_i19_2_lut_rep_42 (.A(cnt2[9]), .B(cnt1[9]), .Z(n2625)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i19_2_lut_rep_42.init = 16'h6666;
    OB a_to_g_pad_3 (.I(VCC_net), .O(a_to_g[3]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(14[3:9])
    FD1P3IX cycle_pulse_287__i1 (.D(n2306), .SP(clk_c_enable_7), .CD(GND_net), 
            .CK(clk_c), .Q(cycle[12]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(152[3] 163[9])
    defparam cycle_pulse_287__i1.GSR = "ENABLED";
    LUT4 cnt2_16__I_0_122_i6_4_lut (.A(cnt1[1]), .B(cnt1[2]), .C(cnt2[2]), 
         .D(cnt2[1]), .Z(n6)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i6_4_lut.init = 16'h0c8e;
    CCU2D sub_249_add_2_18 (.A0(cnt2[16]), .B0(cnt2_16__N_154[16]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt2_16__N_154[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2226), .COUT(n2227));
    defparam sub_249_add_2_18.INIT0 = 16'h5999;
    defparam sub_249_add_2_18.INIT1 = 16'hf555;
    defparam sub_249_add_2_18.INJECT1_0 = "NO";
    defparam sub_249_add_2_18.INJECT1_1 = "NO";
    CCU2D sub_249_add_2_20 (.A0(cnt2_16__N_173), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2227), .S1(cnt2_16__N_153));
    defparam sub_249_add_2_20.INIT0 = 16'h0aaa;
    defparam sub_249_add_2_20.INIT1 = 16'h0000;
    defparam sub_249_add_2_20.INJECT1_0 = "NO";
    defparam sub_249_add_2_20.INJECT1_1 = "NO";
    FD1P3IX cnt2_286__i1 (.D(n89), .SP(clk_c_enable_37), .CD(n1593), .CK(clk_c), 
            .Q(cnt2[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286__i1.GSR = "ENABLED";
    CCU2D add_235_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(cnt1[4]), .D1(GND_net), 
          .COUT(n2228), .S1(n946));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[30:40])
    defparam add_235_1.INIT0 = 16'h0000;
    defparam add_235_1.INIT1 = 16'h1e1e;
    defparam add_235_1.INJECT1_0 = "NO";
    defparam add_235_1.INJECT1_1 = "NO";
    CCU2D add_235_3 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(cnt1[5]), 
          .D0(GND_net), .A1(cycle[12]), .B1(cycle_pulse[0]), .C1(cnt1[6]), 
          .D1(GND_net), .CIN(n2228), .COUT(n2229), .S0(n945), .S1(n944));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[30:40])
    defparam add_235_3.INIT0 = 16'h2d2d;
    defparam add_235_3.INIT1 = 16'h2d2d;
    defparam add_235_3.INJECT1_0 = "NO";
    defparam add_235_3.INJECT1_1 = "NO";
    FD1P3IX cnt2_286__i2 (.D(n88), .SP(clk_c_enable_37), .CD(n1593), .CK(clk_c), 
            .Q(cnt2[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286__i2.GSR = "ENABLED";
    LUT4 cnt2_16__I_0_122_i13_2_lut_rep_27 (.A(cnt2[6]), .B(cnt1[6]), .Z(n2610)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i13_2_lut_rep_27.init = 16'h6666;
    LUT4 cnt1_16__I_0_115_i9_4_lut (.A(n554), .B(n2611), .C(n2602), .D(n952), 
         .Z(cnt1_16__N_10[8])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[5] 87[12])
    defparam cnt1_16__I_0_115_i9_4_lut.init = 16'h3a30;
    FD1P3IX direction_102 (.D(direction_N_196), .SP(rst_n_c), .CD(n1280), 
            .CK(clk0), .Q(direction));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam direction_102.GSR = "DISABLED";
    LUT4 cnt1_16__I_0_115_i8_4_lut (.A(n555), .B(cycle[16]), .C(n2602), 
         .D(n952), .Z(cnt1_16__N_10[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[5] 87[12])
    defparam cnt1_16__I_0_115_i8_4_lut.init = 16'hcac0;
    LUT4 i1151_4_lut (.A(n2622), .B(n2621), .C(n2620), .D(n2486), .Z(n2530)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam i1151_4_lut.init = 16'hefee;
    OB a_to_g_pad_4 (.I(menu_state_c_6), .O(a_to_g[4]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(14[3:9])
    LUT4 i1_2_lut (.A(clk0), .B(n1594), .Z(clk0_N_193)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 cnt2_16__I_0_122_i27_2_lut_rep_34 (.A(cnt2[13]), .B(cnt1[13]), 
         .Z(n2617)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i27_2_lut_rep_34.init = 16'h6666;
    LUT4 i303_2_lut_3_lut (.A(direction), .B(cnt2_16__N_153), .C(rst_n_c), 
         .Z(n1280)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam i303_2_lut_3_lut.init = 16'h1010;
    LUT4 cnt1_16__I_0_115_i17_4_lut (.A(n546), .B(cycle[16]), .C(n2602), 
         .D(n952), .Z(cnt1_16__N_10[16])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[5] 87[12])
    defparam cnt1_16__I_0_115_i17_4_lut.init = 16'hcac0;
    CCU2D add_235_5 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(cnt1[7]), 
          .D0(GND_net), .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(cnt1[8]), 
          .D1(GND_net), .CIN(n2229), .COUT(n2230), .S0(n943), .S1(n942));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[30:40])
    defparam add_235_5.INIT0 = 16'h8787;
    defparam add_235_5.INIT1 = 16'h1e1e;
    defparam add_235_5.INJECT1_0 = "NO";
    defparam add_235_5.INJECT1_1 = "NO";
    CCU2D add_235_7 (.A0(cnt1[9]), .B0(cycle[12]), .C0(GND_net), .D0(GND_net), 
          .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(cnt1[10]), .D1(GND_net), 
          .CIN(n2230), .COUT(n2231), .S0(n941), .S1(n940));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[30:40])
    defparam add_235_7.INIT0 = 16'h5666;
    defparam add_235_7.INIT1 = 16'h7878;
    defparam add_235_7.INJECT1_0 = "NO";
    defparam add_235_7.INJECT1_1 = "NO";
    LUT4 cnt1_16__I_0_115_i7_4_lut (.A(n556), .B(cycle[15]), .C(n2602), 
         .D(n952), .Z(cnt1_16__N_10[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[5] 87[12])
    defparam cnt1_16__I_0_115_i7_4_lut.init = 16'hcac0;
    CCU2D add_235_9 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(cnt1[11]), 
          .D0(GND_net), .A1(cnt1[12]), .B1(cycle[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2231), .COUT(n2232), .S0(n939), .S1(n938));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[30:40])
    defparam add_235_9.INIT0 = 16'he1e1;
    defparam add_235_9.INIT1 = 16'h5999;
    defparam add_235_9.INJECT1_0 = "NO";
    defparam add_235_9.INJECT1_1 = "NO";
    LUT4 cnt1_16__I_0_115_i6_4_lut (.A(n557), .B(cycle[14]), .C(n2602), 
         .D(n952), .Z(cnt1_16__N_10[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[5] 87[12])
    defparam cnt1_16__I_0_115_i6_4_lut.init = 16'hcac0;
    LUT4 i1157_2_lut_rep_22 (.A(clk0), .B(n1594), .Z(clk_c_enable_37)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam i1157_2_lut_rep_22.init = 16'h4444;
    LUT4 cnt2_16__I_0_122_i22_3_lut_3_lut (.A(cnt2[13]), .B(cnt1[13]), .C(n20), 
         .Z(n22)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i22_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1167_4_lut (.A(count0[7]), .B(count0[6]), .C(n2432), .D(count0[3]), 
         .Z(n1594)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(55[13:23])
    defparam i1167_4_lut.init = 16'h0800;
    CCU2D add_235_11 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(cnt1[13]), 
          .D0(GND_net), .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(cnt1[14]), 
          .D1(GND_net), .CIN(n2232), .COUT(n2233), .S0(n937), .S1(n936));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[30:40])
    defparam add_235_11.INIT0 = 16'h9696;
    defparam add_235_11.INIT1 = 16'h2d2d;
    defparam add_235_11.INJECT1_0 = "NO";
    defparam add_235_11.INJECT1_1 = "NO";
    OB a_to_g_pad_5 (.I(menu_state_c_6), .O(a_to_g[5]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(14[3:9])
    LUT4 i1152_2_lut_3_lut (.A(cnt2[13]), .B(cnt1[13]), .C(n2530), .Z(n2505)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam i1152_2_lut_3_lut.init = 16'hf6f6;
    LUT4 cnt2_16__I_0_122_i29_2_lut_rep_35 (.A(cnt2[14]), .B(cnt1[14]), 
         .Z(n2618)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i29_2_lut_rep_35.init = 16'h6666;
    CCU2D add_235_13 (.A0(cycle[12]), .B0(cycle_pulse[0]), .C0(cnt1[15]), 
          .D0(GND_net), .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(cnt1[16]), 
          .D1(GND_net), .CIN(n2233), .COUT(n2234), .S0(n935), .S1(n934));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[30:40])
    defparam add_235_13.INIT0 = 16'h2d2d;
    defparam add_235_13.INIT1 = 16'h8787;
    defparam add_235_13.INJECT1_0 = "NO";
    defparam add_235_13.INJECT1_1 = "NO";
    OB a_to_g_pad_6 (.I(n1470), .O(a_to_g[6]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(14[3:9])
    OB menu_state_pad (.I(menu_state_c_6), .O(menu_state));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(13[6:16])
    LUT4 i4_4_lut (.A(count0[2]), .B(count0[1]), .C(count0[4]), .D(n6_adj_238), 
         .Z(n2432)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1101_2_lut_3_lut_4_lut (.A(cnt2[9]), .B(cnt1[9]), .C(cnt1[5]), 
         .D(cnt2[5]), .Z(n2486)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam i1101_2_lut_3_lut_4_lut.init = 16'h9009;
    CCU2D add_235_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2234), 
          .S0(n951));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[30:40])
    defparam add_235_cout.INIT0 = 16'h0000;
    defparam add_235_cout.INIT1 = 16'h0000;
    defparam add_235_cout.INJECT1_0 = "NO";
    defparam add_235_cout.INJECT1_1 = "NO";
    CCU2D add_333_5 (.A0(cnt1[4]), .B0(dt[4]), .C0(GND_net), .D0(GND_net), 
          .A1(duty_pulse[0]), .B1(dt[4]), .C1(cnt1[5]), .D1(GND_net), 
          .CIN(n2236), .COUT(n2237), .S0(n558), .S1(n557));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(86[16:20])
    defparam add_333_5.INIT0 = 16'h5666;
    defparam add_333_5.INIT1 = 16'h7878;
    defparam add_333_5.INJECT1_0 = "NO";
    defparam add_333_5.INJECT1_1 = "NO";
    LUT4 cnt2_16__I_0_122_i31_2_lut_rep_36 (.A(cnt2[15]), .B(cnt1[15]), 
         .Z(n2619)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i31_2_lut_rep_36.init = 16'h6666;
    CCU2D add_333_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(duty_pulse[0]), .B1(dt[4]), .C1(cnt1[1]), .D1(GND_net), 
          .COUT(n2235), .S1(n561));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(86[16:20])
    defparam add_333_1.INIT0 = 16'hF000;
    defparam add_333_1.INIT1 = 16'hd2d2;
    defparam add_333_1.INJECT1_0 = "NO";
    defparam add_333_1.INJECT1_1 = "NO";
    LUT4 i1170_4_lut (.A(n2619), .B(n2618), .C(n2624), .D(n2473), .Z(n2549)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam i1170_4_lut.init = 16'hefee;
    LUT4 i760_2_lut_rep_28 (.A(cycle_pulse[0]), .B(cycle[12]), .Z(n2611)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i760_2_lut_rep_28.init = 16'heeee;
    LUT4 cnt1_16__I_0_115_i16_4_lut (.A(n547), .B(cycle[15]), .C(n2602), 
         .D(n952), .Z(cnt1_16__N_10[15])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[5] 87[12])
    defparam cnt1_16__I_0_115_i16_4_lut.init = 16'hcac0;
    FD1P3IX cnt2_286__i3 (.D(n87), .SP(clk_c_enable_37), .CD(n1593), .CK(clk_c), 
            .Q(cnt2[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286__i3.GSR = "ENABLED";
    FD1P3IX cnt1_i0_i3 (.D(n559), .SP(clk_c_enable_37), .CD(n1597), .CK(clk_c), 
            .Q(cnt1[3]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(81[5] 88[10])
    defparam cnt1_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt1_i0_i1 (.D(n561), .SP(clk_c_enable_37), .CD(n1597), .CK(clk_c), 
            .Q(cnt1[1]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(81[5] 88[10])
    defparam cnt1_i0_i1.GSR = "ENABLED";
    LUT4 cnt1_16__I_0_115_i15_4_lut (.A(n548), .B(cycle[14]), .C(n2602), 
         .D(n952), .Z(cnt1_16__N_10[14])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[5] 87[12])
    defparam cnt1_16__I_0_115_i15_4_lut.init = 16'hcac0;
    FD1P3IX cycle_pulse_287__i0 (.D(n2613), .SP(clk_c_enable_7), .CD(GND_net), 
            .CK(clk_c), .Q(cycle_pulse[0]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(152[3] 163[9])
    defparam cycle_pulse_287__i0.GSR = "ENABLED";
    FD1P3IX cnt1_i0_i2 (.D(n560), .SP(clk_c_enable_37), .CD(n1597), .CK(clk_c), 
            .Q(cnt1[2]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(81[5] 88[10])
    defparam cnt1_i0_i2.GSR = "ENABLED";
    FD1S3AX key_up1_ls_98 (.D(n2612), .CK(clk_c), .Q(key_up1_ls));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(66[5] 69[9])
    defparam key_up1_ls_98.GSR = "DISABLED";
    LUT4 cnt1_16__I_0_115_i5_4_lut (.A(n558), .B(n2611), .C(n2602), .D(n952), 
         .Z(cnt1_16__N_10[4])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[5] 87[12])
    defparam cnt1_16__I_0_115_i5_4_lut.init = 16'h3a30;
    FD1S3IX count0_284__i0 (.D(n45), .CK(clk_c), .CD(n1594), .Q(count0[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(58[20:26])
    defparam count0_284__i0.GSR = "DISABLED";
    FD1P3IX duty_pulse_285__i0 (.D(n15_adj_236), .SP(clk_c_enable_24), .CD(GND_net), 
            .CK(clk_c), .Q(duty_pulse[0]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(165[3] 176[9])
    defparam duty_pulse_285__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_7 (.A(count0[5]), .B(count0[0]), .Z(n6_adj_238)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_7.init = 16'heeee;
    CCU2D add_333_3 (.A0(cnt1[2]), .B0(dt[4]), .C0(GND_net), .D0(GND_net), 
          .A1(duty_pulse[0]), .B1(dt[4]), .C1(cnt1[3]), .D1(GND_net), 
          .CIN(n2235), .COUT(n2236), .S0(n560), .S1(n559));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(86[16:20])
    defparam add_333_3.INIT0 = 16'h5666;
    defparam add_333_3.INIT1 = 16'hd2d2;
    defparam add_333_3.INJECT1_0 = "NO";
    defparam add_333_3.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(rst_n_c));
    CCU2D sub_249_add_2_4 (.A0(cnt2[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt2[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2219), 
          .COUT(n2220));
    defparam sub_249_add_2_4.INIT0 = 16'h5aaa;
    defparam sub_249_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_249_add_2_4.INJECT1_0 = "NO";
    defparam sub_249_add_2_4.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_8 (.A(n2679), .B(n74), .Z(n1513)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam i1_2_lut_adj_8.init = 16'h8888;
    FD1P3IX cnt2_286__i0 (.D(n90), .SP(clk_c_enable_37), .CD(n1593), .CK(clk_c), 
            .Q(cnt2[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286__i0.GSR = "ENABLED";
    LUT4 i724_2_lut (.A(cnt2[10]), .B(cnt2[2]), .Z(n1888)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i724_2_lut.init = 16'heeee;
    LUT4 i1137_2_lut_3_lut_4_lut (.A(cnt2[15]), .B(cnt1[15]), .C(cnt1[14]), 
         .D(cnt2[14]), .Z(n2522)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam i1137_2_lut_3_lut_4_lut.init = 16'h9009;
    PFUMX cnt1_16__I_0_115_i14 (.BLUT(cnt1_16__N_65[13]), .ALUT(cycle[13]), 
          .C0(n2602), .Z(cnt1_16__N_10[13]));
    LUT4 cnt2_16__I_0_122_i16_3_lut_3_lut (.A(cnt2[15]), .B(cnt1[15]), .C(cnt1[14]), 
         .Z(n16)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i16_3_lut_3_lut.init = 16'hd4d4;
    LUT4 cnt1_16__I_1_2_lut_rep_19 (.A(cnt1_16__N_83), .B(n951), .Z(n2602)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[8:41])
    defparam cnt1_16__I_1_2_lut_rep_19.init = 16'h2222;
    LUT4 i1_2_lut_adj_9 (.A(n2679), .B(n75), .Z(n1515)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam i1_2_lut_adj_9.init = 16'h8888;
    LUT4 cnt2_16__I_0_122_i21_2_lut_rep_37 (.A(cnt2[10]), .B(cnt1[10]), 
         .Z(n2620)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i21_2_lut_rep_37.init = 16'h6666;
    LUT4 cnt1_16__I_0_115_i13_4_lut (.A(n550), .B(cycle[12]), .C(n2602), 
         .D(n952), .Z(cnt1_16__N_10[12])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[5] 87[12])
    defparam cnt1_16__I_0_115_i13_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_adj_10 (.A(n2679), .B(n76), .Z(n1517)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam i1_2_lut_adj_10.init = 16'h8888;
    LUT4 i1_2_lut_adj_11 (.A(n2679), .B(n77), .Z(n1519)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam i1_2_lut_adj_11.init = 16'h8888;
    LUT4 cnt1_16__I_0_115_i12_4_lut (.A(n551), .B(n2611), .C(n2602), .D(n952), 
         .Z(cnt1_16__N_10[11])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[5] 87[12])
    defparam cnt1_16__I_0_115_i12_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_adj_12 (.A(n2679), .B(n78), .Z(n1521)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam i1_2_lut_adj_12.init = 16'h8888;
    LUT4 cnt2_16__I_0_122_i18_3_lut_3_lut (.A(cnt2[10]), .B(cnt1[10]), .C(n10), 
         .Z(n18)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i18_3_lut_3_lut.init = 16'hd4d4;
    CCU2D sub_128_add_2_20 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2206), .S0(cnt1_16__N_84[18]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[15:20])
    defparam sub_128_add_2_20.INIT0 = 16'hffff;
    defparam sub_128_add_2_20.INIT1 = 16'h0000;
    defparam sub_128_add_2_20.INJECT1_0 = "NO";
    defparam sub_128_add_2_20.INJECT1_1 = "NO";
    LUT4 cnt2_16__I_0_122_i23_2_lut_rep_38 (.A(cnt2[11]), .B(cnt1[11]), 
         .Z(n2621)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i23_2_lut_rep_38.init = 16'h6666;
    LUT4 i1_4_lut (.A(n2439), .B(cnt2[6]), .C(n6_adj_235), .D(cnt2[4]), 
         .Z(n2454)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_13 (.A(n2679), .B(n79), .Z(n1523)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam i1_2_lut_adj_13.init = 16'h8888;
    LUT4 i7_4_lut (.A(cnt2[9]), .B(n14_adj_239), .C(n10_adj_234), .D(cnt2[14]), 
         .Z(n2439)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam i7_4_lut.init = 16'hfffe;
    CCU2D sub_128_add_2_18 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2205), .COUT(n2206), .S0(cnt1_16__N_84[16]), .S1(cnt1_16__N_84[17]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[15:20])
    defparam sub_128_add_2_18.INIT0 = 16'h7777;
    defparam sub_128_add_2_18.INIT1 = 16'hffff;
    defparam sub_128_add_2_18.INJECT1_0 = "NO";
    defparam sub_128_add_2_18.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_14 (.A(n2679), .B(n80), .Z(n1525)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam i1_2_lut_adj_14.init = 16'h8888;
    CCU2D sub_128_add_2_16 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cycle[12]), .B1(cycle_pulse[0]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2204), .COUT(n2205), .S0(cnt1_16__N_84[14]), 
          .S1(cnt1_16__N_84[15]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[15:20])
    defparam sub_128_add_2_16.INIT0 = 16'hdddd;
    defparam sub_128_add_2_16.INIT1 = 16'hdddd;
    defparam sub_128_add_2_16.INJECT1_0 = "NO";
    defparam sub_128_add_2_16.INJECT1_1 = "NO";
    L6MUX21 cnt2_16__I_0_122_i34 (.D0(n26), .D1(n32), .SD(n2518), .Z(pulse_out_N_190));
    LUT4 cnt1_16__I_0_115_i11_4_lut (.A(n552), .B(cycle[16]), .C(n2602), 
         .D(n952), .Z(cnt1_16__N_10[10])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[5] 87[12])
    defparam cnt1_16__I_0_115_i11_4_lut.init = 16'h3a30;
    LUT4 cnt2_16__I_0_122_i25_2_lut_rep_39 (.A(cnt2[12]), .B(cnt1[12]), 
         .Z(n2622)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i25_2_lut_rep_39.init = 16'h6666;
    LUT4 i1115_2_lut_3_lut_4_lut (.A(cnt2[12]), .B(cnt1[12]), .C(cnt1[11]), 
         .D(cnt2[11]), .Z(n2500)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam i1115_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i737_2_lut (.A(n81), .B(n2679), .Z(n1527)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam i737_2_lut.init = 16'h8888;
    LUT4 cnt2_16__I_0_122_i20_3_lut_3_lut (.A(cnt2[12]), .B(cnt1[12]), .C(cnt1[11]), 
         .Z(n20)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i20_3_lut_3_lut.init = 16'hd4d4;
    PFUMX cnt2_16__I_0_122_i26 (.BLUT(n18), .ALUT(n24), .C0(n2505), .Z(n26));
    LUT4 i2_2_lut (.A(cnt2[5]), .B(cnt2[8]), .Z(n6_adj_235)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i736_2_lut (.A(n82), .B(n2679), .Z(n1529)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam i736_2_lut.init = 16'h8888;
    FD1P3AX cnt1_i0_i16 (.D(cnt1_16__N_10[16]), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt1[16]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(81[5] 88[10])
    defparam cnt1_i0_i16.GSR = "ENABLED";
    LUT4 cnt2_16__I_0_122_i15_2_lut_rep_40 (.A(cnt2[7]), .B(cnt1[7]), .Z(n2623)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i15_2_lut_rep_40.init = 16'h6666;
    LUT4 i735_2_lut (.A(n83), .B(n2679), .Z(n1531)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam i735_2_lut.init = 16'h8888;
    LUT4 cnt2_16__I_0_122_i10_3_lut_3_lut (.A(cnt2[9]), .B(cnt1[9]), .C(cnt1[5]), 
         .Z(n10)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i734_2_lut (.A(n84), .B(n2679), .Z(n1533)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam i734_2_lut.init = 16'h8888;
    LUT4 i733_2_lut (.A(n85), .B(n2679), .Z(n1535)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam i733_2_lut.init = 16'h8888;
    LUT4 cnt2_16__I_0_122_i9_2_lut_rep_43 (.A(cnt2[4]), .B(cnt1[4]), .Z(n2626)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i9_2_lut_rep_43.init = 16'h6666;
    LUT4 i1088_2_lut_3_lut_4_lut (.A(cnt2[7]), .B(cnt1[7]), .C(cnt1[6]), 
         .D(cnt2[6]), .Z(n2473)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam i1088_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i6_4_lut (.A(cnt2[12]), .B(cnt2[13]), .C(cnt2[3]), .D(cnt2[7]), 
         .Z(n14_adj_239)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 cnt2_16__I_0_122_i8_3_lut_3_lut (.A(cnt2[4]), .B(cnt1[4]), .C(cnt1[3]), 
         .Z(n8)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_2_lut_rep_23_3_lut_4_lut (.A(cycle_pulse[0]), .B(cycle[12]), 
         .C(n2614), .D(key_down1_ls), .Z(n2606)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam i1_2_lut_rep_23_3_lut_4_lut.init = 16'h0e00;
    LUT4 i766_2_lut (.A(n86), .B(n2679), .Z(n105)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam i766_2_lut.init = 16'h8888;
    LUT4 i1_1_lut (.A(menu_state_c_6), .Z(a_to_g_6__N_1[5])) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i2_2_lut_adj_15 (.A(cnt2[15]), .B(cnt2[11]), .Z(n10_adj_234)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam i2_2_lut_adj_15.init = 16'heeee;
    LUT4 i2_3_lut (.A(cnt2[0]), .B(cnt2[1]), .C(cnt2[16]), .Z(n2434)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i2_3_lut.init = 16'hfdfd;
    PFUMX cnt2_16__I_0_122_i32 (.BLUT(n14), .ALUT(n30), .C0(n2524), .Z(n32));
    LUT4 i675_4_lut (.A(n2604), .B(n1888), .C(n2434), .D(n2454), .Z(direction_N_196)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(110[7] 112[11])
    defparam i675_4_lut.init = 16'haaa8;
    LUT4 i2_3_lut_4_lut_3_lut (.A(cycle_pulse[0]), .B(cycle[12]), .C(n2608), 
         .Z(n2306)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !((C)+!B)) */ ;
    defparam i2_3_lut_4_lut_3_lut.init = 16'h8686;
    LUT4 i3_4_lut (.A(cnt1[2]), .B(cnt1[1]), .C(cnt1[3]), .D(n2441), 
         .Z(n952)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1145_4_lut_4_lut (.A(n2616), .B(n2522), .C(n28), .D(n6), .Z(n30)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam i1145_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i12_4_lut (.A(n946), .B(n24_adj_240), .C(n20_adj_242), .D(n944), 
         .Z(n2441)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i11_4_lut (.A(n15), .B(n22_adj_241), .C(n945), .D(n937), .Z(n24_adj_240)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    CCU2D sub_128_add_2_14 (.A0(cycle[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2203), .COUT(n2204), .S0(cnt1_16__N_84[12]), 
          .S1(cnt1_16__N_84[13]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[15:20])
    defparam sub_128_add_2_14.INIT0 = 16'h5555;
    defparam sub_128_add_2_14.INIT1 = 16'h6666;
    defparam sub_128_add_2_14.INJECT1_0 = "NO";
    defparam sub_128_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_128_add_2_12 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2202), .COUT(n2203), .S0(cnt1_16__N_84[10]), 
          .S1(cnt1_16__N_84[11]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[15:20])
    defparam sub_128_add_2_12.INIT0 = 16'h8888;
    defparam sub_128_add_2_12.INIT1 = 16'h1111;
    defparam sub_128_add_2_12.INJECT1_0 = "NO";
    defparam sub_128_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_128_add_2_10 (.A0(duty_pulse[0]), .B0(dt[4]), .C0(n2611), 
          .D0(GND_net), .A1(duty_pulse[0]), .B1(dt[4]), .C1(cycle[12]), 
          .D1(GND_net), .CIN(n2201), .COUT(n2202), .S0(cnt1_16__N_84[8]), 
          .S1(cnt1_16__N_84[9]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[15:20])
    defparam sub_128_add_2_10.INIT0 = 16'h8878;
    defparam sub_128_add_2_10.INIT1 = 16'h8878;
    defparam sub_128_add_2_10.INJECT1_0 = "NO";
    defparam sub_128_add_2_10.INJECT1_1 = "NO";
    CycleSampler P3 (.GND_net(GND_net), .key_down_c(key_down_c), .clk_c(clk_c), 
            .n2614(n2614), .key_down1_ls(key_down1_ls), .n2608(n2608));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(48[4:16])
    CCU2D sub_128_add_2_8 (.A0(cycle[12]), .B0(cycle_pulse[0]), .C0(GND_net), 
          .D0(GND_net), .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2200), .COUT(n2201), .S0(cnt1_16__N_84[6]), 
          .S1(cnt1_16__N_84[7]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[15:20])
    defparam sub_128_add_2_8.INIT0 = 16'hdddd;
    defparam sub_128_add_2_8.INIT1 = 16'h7777;
    defparam sub_128_add_2_8.INJECT1_0 = "NO";
    defparam sub_128_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_128_add_2_6 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(dt[4]), 
          .D0(GND_net), .A1(duty_pulse[0]), .B1(dt[4]), .C1(cycle_pulse[0]), 
          .D1(n2615), .CIN(n2199), .COUT(n2200), .S0(cnt1_16__N_84[4]), 
          .S1(cnt1_16__N_84[5]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[15:20])
    defparam sub_128_add_2_6.INIT0 = 16'hee1e;
    defparam sub_128_add_2_6.INIT1 = 16'h8777;
    defparam sub_128_add_2_6.INJECT1_0 = "NO";
    defparam sub_128_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_128_add_2_4 (.A0(dt[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(duty_pulse[0]), .B1(dt[4]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2198), .COUT(n2199), .S0(cnt1_16__N_84[2]), .S1(cnt1_16__N_84[3]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[15:20])
    defparam sub_128_add_2_4.INIT0 = 16'hf555;
    defparam sub_128_add_2_4.INIT1 = 16'h2ddd;
    defparam sub_128_add_2_4.INJECT1_0 = "NO";
    defparam sub_128_add_2_4.INJECT1_1 = "NO";
    CCU2D add_333_17 (.A0(cnt1[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2242), 
          .S0(n546));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(86[16:20])
    defparam add_333_17.INIT0 = 16'h5aaa;
    defparam add_333_17.INIT1 = 16'h0000;
    defparam add_333_17.INJECT1_0 = "NO";
    defparam add_333_17.INJECT1_1 = "NO";
    CCU2D sub_128_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(duty_pulse[0]), .B1(dt[4]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2198), .S1(cnt1_16__N_84[1]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[15:20])
    defparam sub_128_add_2_2.INIT0 = 16'h0000;
    defparam sub_128_add_2_2.INIT1 = 16'h2ddd;
    defparam sub_128_add_2_2.INJECT1_0 = "NO";
    defparam sub_128_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_248_add_2_22 (.A0(cnt1_16__N_84[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2197), .S1(cnt1_16__N_83));
    defparam sub_248_add_2_22.INIT0 = 16'h5555;
    defparam sub_248_add_2_22.INIT1 = 16'h0000;
    defparam sub_248_add_2_22.INJECT1_0 = "NO";
    defparam sub_248_add_2_22.INJECT1_1 = "NO";
    CCU2D sub_248_add_2_20 (.A0(cnt1_16__N_84[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1_16__N_84[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2196), .COUT(n2197));
    defparam sub_248_add_2_20.INIT0 = 16'hf555;
    defparam sub_248_add_2_20.INIT1 = 16'hf555;
    defparam sub_248_add_2_20.INJECT1_0 = "NO";
    defparam sub_248_add_2_20.INJECT1_1 = "NO";
    CCU2D sub_248_add_2_18 (.A0(cnt1[16]), .B0(cnt1_16__N_84[16]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1_16__N_84[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2195), .COUT(n2196));
    defparam sub_248_add_2_18.INIT0 = 16'h5999;
    defparam sub_248_add_2_18.INIT1 = 16'hf555;
    defparam sub_248_add_2_18.INJECT1_0 = "NO";
    defparam sub_248_add_2_18.INJECT1_1 = "NO";
    CCU2D add_333_15 (.A0(cnt1[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt1[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2241), 
          .COUT(n2242), .S0(n548), .S1(n547));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(86[16:20])
    defparam add_333_15.INIT0 = 16'h5aaa;
    defparam add_333_15.INIT1 = 16'h5aaa;
    defparam add_333_15.INJECT1_0 = "NO";
    defparam add_333_15.INJECT1_1 = "NO";
    CCU2D add_333_13 (.A0(cnt1[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt1[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2240), 
          .COUT(n2241), .S0(n550), .S1(n549));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(86[16:20])
    defparam add_333_13.INIT0 = 16'h5aaa;
    defparam add_333_13.INIT1 = 16'h5aaa;
    defparam add_333_13.INJECT1_0 = "NO";
    defparam add_333_13.INJECT1_1 = "NO";
    LUT4 i7_3_lut (.A(n939), .B(n934), .C(n940), .Z(n20_adj_242)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i7_3_lut.init = 16'hfefe;
    LUT4 i2_2_lut_adj_16 (.A(n935), .B(n943), .Z(n15)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_adj_16.init = 16'heeee;
    CCU2D sub_248_add_2_16 (.A0(cnt1[14]), .B0(cnt1_16__N_84[14]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[15]), .B1(cnt1_16__N_84[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2194), .COUT(n2195));
    defparam sub_248_add_2_16.INIT0 = 16'h5999;
    defparam sub_248_add_2_16.INIT1 = 16'h5999;
    defparam sub_248_add_2_16.INJECT1_0 = "NO";
    defparam sub_248_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_248_add_2_14 (.A0(cnt1[12]), .B0(cnt1_16__N_84[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[13]), .B1(cnt1_16__N_84[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2193), .COUT(n2194));
    defparam sub_248_add_2_14.INIT0 = 16'h5999;
    defparam sub_248_add_2_14.INIT1 = 16'h5999;
    defparam sub_248_add_2_14.INJECT1_0 = "NO";
    defparam sub_248_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_248_add_2_12 (.A0(cnt1[10]), .B0(cnt1_16__N_84[10]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[11]), .B1(cnt1_16__N_84[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2192), .COUT(n2193));
    defparam sub_248_add_2_12.INIT0 = 16'h5999;
    defparam sub_248_add_2_12.INIT1 = 16'h5999;
    defparam sub_248_add_2_12.INJECT1_0 = "NO";
    defparam sub_248_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_248_add_2_10 (.A0(cnt1[8]), .B0(cnt1_16__N_84[8]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[9]), .B1(cnt1_16__N_84[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2191), .COUT(n2192));
    defparam sub_248_add_2_10.INIT0 = 16'h5999;
    defparam sub_248_add_2_10.INIT1 = 16'h5999;
    defparam sub_248_add_2_10.INJECT1_0 = "NO";
    defparam sub_248_add_2_10.INJECT1_1 = "NO";
    CCU2D add_333_11 (.A0(cnt1[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt1[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2239), 
          .COUT(n2240), .S0(n552), .S1(n551));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(86[16:20])
    defparam add_333_11.INIT0 = 16'h5aaa;
    defparam add_333_11.INIT1 = 16'h5aaa;
    defparam add_333_11.INJECT1_0 = "NO";
    defparam add_333_11.INJECT1_1 = "NO";
    CCU2D sub_248_add_2_8 (.A0(cnt1[6]), .B0(cnt1_16__N_84[6]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[7]), .B1(cnt1_16__N_84[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2190), .COUT(n2191));
    defparam sub_248_add_2_8.INIT0 = 16'h5999;
    defparam sub_248_add_2_8.INIT1 = 16'h5999;
    defparam sub_248_add_2_8.INJECT1_0 = "NO";
    defparam sub_248_add_2_8.INJECT1_1 = "NO";
    CCU2D add_333_9 (.A0(duty_pulse[0]), .B0(dt[4]), .C0(cnt1[8]), .D0(GND_net), 
          .A1(duty_pulse[0]), .B1(dt[4]), .C1(cnt1[9]), .D1(GND_net), 
          .CIN(n2238), .COUT(n2239), .S0(n554), .S1(n553));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(86[16:20])
    defparam add_333_9.INIT0 = 16'h7878;
    defparam add_333_9.INIT1 = 16'h7878;
    defparam add_333_9.INJECT1_0 = "NO";
    defparam add_333_9.INJECT1_1 = "NO";
    CCU2D sub_248_add_2_6 (.A0(cnt1[4]), .B0(cnt1_16__N_84[4]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[5]), .B1(cnt1_16__N_84[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2189), .COUT(n2190));
    defparam sub_248_add_2_6.INIT0 = 16'h5999;
    defparam sub_248_add_2_6.INIT1 = 16'h5999;
    defparam sub_248_add_2_6.INJECT1_0 = "NO";
    defparam sub_248_add_2_6.INJECT1_1 = "NO";
    FD1P3AX cnt1_i0_i15 (.D(cnt1_16__N_10[15]), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt1[15]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(81[5] 88[10])
    defparam cnt1_i0_i15.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i14 (.D(cnt1_16__N_10[14]), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt1[14]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(81[5] 88[10])
    defparam cnt1_i0_i14.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i13 (.D(cnt1_16__N_10[13]), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt1[13]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(81[5] 88[10])
    defparam cnt1_i0_i13.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i12 (.D(cnt1_16__N_10[12]), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt1[12]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(81[5] 88[10])
    defparam cnt1_i0_i12.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i11 (.D(cnt1_16__N_10[11]), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt1[11]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(81[5] 88[10])
    defparam cnt1_i0_i11.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i10 (.D(cnt1_16__N_10[10]), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt1[10]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(81[5] 88[10])
    defparam cnt1_i0_i10.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i9 (.D(cnt1_16__N_10[9]), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt1[9]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(81[5] 88[10])
    defparam cnt1_i0_i9.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i8 (.D(cnt1_16__N_10[8]), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt1[8]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(81[5] 88[10])
    defparam cnt1_i0_i8.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i7 (.D(cnt1_16__N_10[7]), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt1[7]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(81[5] 88[10])
    defparam cnt1_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i6 (.D(cnt1_16__N_10[6]), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt1[6]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(81[5] 88[10])
    defparam cnt1_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i5 (.D(cnt1_16__N_10[5]), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt1[5]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(81[5] 88[10])
    defparam cnt1_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i4 (.D(cnt1_16__N_10[4]), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt1[4]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(81[5] 88[10])
    defparam cnt1_i0_i4.GSR = "ENABLED";
    CCU2D sub_248_add_2_4 (.A0(cnt1[2]), .B0(cnt1_16__N_84[2]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[3]), .B1(cnt1_16__N_84[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2188), .COUT(n2189));
    defparam sub_248_add_2_4.INIT0 = 16'h5999;
    defparam sub_248_add_2_4.INIT1 = 16'h5999;
    defparam sub_248_add_2_4.INJECT1_0 = "NO";
    defparam sub_248_add_2_4.INJECT1_1 = "NO";
    FD1S3IX count0_284__i7 (.D(n38), .CK(clk_c), .CD(n1594), .Q(count0[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(58[20:26])
    defparam count0_284__i7.GSR = "DISABLED";
    LUT4 i1159_4_lut (.A(cycle[16]), .B(menu_state_c_6), .C(n2606), .D(n436), 
         .Z(clk_c_enable_7)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C+(D))))) */ ;
    defparam i1159_4_lut.init = 16'h3130;
    LUT4 i9_4_lut (.A(n938), .B(n941), .C(n936), .D(n942), .Z(n22_adj_241)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i750_4_lut (.A(n1869), .B(menu_state_c_6), .C(n2607), .D(n436), 
         .Z(clk_c_enable_24)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;
    defparam i750_4_lut.init = 16'hc4c0;
    LUT4 i705_2_lut (.A(dt[4]), .B(duty_pulse[0]), .Z(n1869)) /* synthesis lut_function=(A (B)) */ ;
    defparam i705_2_lut.init = 16'h8888;
    LUT4 i881_1_lut (.A(duty_pulse[0]), .Z(n15_adj_236)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(165[3] 176[9])
    defparam i881_1_lut.init = 16'h5555;
    FD1P3IX duty_pulse_285__i1 (.D(n2305), .SP(clk_c_enable_24), .CD(GND_net), 
            .CK(clk_c), .Q(dt[4]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(165[3] 176[9])
    defparam duty_pulse_285__i1.GSR = "ENABLED";
    CCU2D sub_248_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt1[1]), .B1(cnt1_16__N_84[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2188));
    defparam sub_248_add_2_2.INIT0 = 16'h0000;
    defparam sub_248_add_2_2.INIT1 = 16'h5999;
    defparam sub_248_add_2_2.INJECT1_0 = "NO";
    defparam sub_248_add_2_2.INJECT1_1 = "NO";
    LUT4 i327_2_lut (.A(cycle_pulse[0]), .B(cycle[12]), .Z(cycle[13])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(95[1] 100[10])
    defparam i327_2_lut.init = 16'h9999;
    LUT4 i328_1_lut_rep_30 (.A(cycle_pulse[0]), .Z(n2613)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(95[1] 100[10])
    defparam i328_1_lut_rep_30.init = 16'h5555;
    LUT4 i1169_2_lut_3_lut_4_lut (.A(cnt1_16__N_83), .B(n951), .C(clk_c_enable_37), 
         .D(n952), .Z(n1597)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A ((D)+!C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[8:41])
    defparam i1169_2_lut_3_lut_4_lut.init = 16'h20f0;
    FD1S3IX count0_284__i6 (.D(n39), .CK(clk_c), .CD(n1594), .Q(count0[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(58[20:26])
    defparam count0_284__i6.GSR = "DISABLED";
    FD1S3IX count0_284__i5 (.D(n40), .CK(clk_c), .CD(n1594), .Q(count0[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(58[20:26])
    defparam count0_284__i5.GSR = "DISABLED";
    FD1S3IX count0_284__i4 (.D(n41), .CK(clk_c), .CD(n1594), .Q(count0[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(58[20:26])
    defparam count0_284__i4.GSR = "DISABLED";
    FD1S3IX count0_284__i3 (.D(n42), .CK(clk_c), .CD(n1594), .Q(count0[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(58[20:26])
    defparam count0_284__i3.GSR = "DISABLED";
    FD1S3IX count0_284__i2 (.D(n43), .CK(clk_c), .CD(n1594), .Q(count0[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(58[20:26])
    defparam count0_284__i2.GSR = "DISABLED";
    FD1S3IX count0_284__i1 (.D(n44), .CK(clk_c), .CD(n1594), .Q(count0[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(58[20:26])
    defparam count0_284__i1.GSR = "DISABLED";
    FD1P3AX cnt2_286__i16 (.D(n1513), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt2[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286__i16.GSR = "ENABLED";
    LUT4 i720_2_lut_2_lut (.A(cycle_pulse[0]), .B(cycle[12]), .Z(cycle[15])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(95[1] 100[10])
    defparam i720_2_lut_2_lut.init = 16'h4444;
    FD1P3AX cnt2_286__i15 (.D(n1515), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt2[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286__i15.GSR = "ENABLED";
    FD1P3AX cnt2_286__i14 (.D(n1517), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt2[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286__i14.GSR = "ENABLED";
    FD1P3AX cnt2_286__i13 (.D(n1519), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt2[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286__i13.GSR = "ENABLED";
    FD1P3AX cnt2_286__i12 (.D(n1521), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt2[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286__i12.GSR = "ENABLED";
    FD1P3AX cnt2_286__i11 (.D(n1523), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt2[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286__i11.GSR = "ENABLED";
    FD1P3AX cnt2_286__i10 (.D(n1525), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt2[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286__i10.GSR = "ENABLED";
    FD1P3AX cnt2_286__i9 (.D(n1527), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt2[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286__i9.GSR = "ENABLED";
    FD1P3AX cnt2_286__i8 (.D(n1529), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt2[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286__i8.GSR = "ENABLED";
    FD1P3AX cnt2_286__i7 (.D(n1531), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt2[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286__i7.GSR = "ENABLED";
    FD1P3AX cnt2_286__i6 (.D(n1533), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt2[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286__i6.GSR = "ENABLED";
    FD1P3AX cnt2_286__i5 (.D(n1535), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt2[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286__i5.GSR = "ENABLED";
    FD1P3AX cnt2_286__i4 (.D(n105), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(cnt2[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286__i4.GSR = "ENABLED";
    LUT4 inv_234_i13_1_lut_rep_32 (.A(cycle[12]), .Z(n2615)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[30:40])
    defparam inv_234_i13_1_lut_rep_32.init = 16'h5555;
    CCU2D add_283_15 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2290), 
          .S0(cnt2_16__N_154[17]), .S1(cnt2_16__N_173));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(105[18:23])
    defparam add_283_15.INIT0 = 16'hffff;
    defparam add_283_15.INIT1 = 16'h0000;
    defparam add_283_15.INJECT1_0 = "NO";
    defparam add_283_15.INJECT1_1 = "NO";
    CCU2D add_283_13 (.A0(cycle[12]), .B0(cycle_pulse[0]), .C0(GND_net), 
          .D0(GND_net), .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2289), .COUT(n2290), .S0(cnt2_16__N_154[15]), 
          .S1(cnt2_16__N_154[16]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(105[18:23])
    defparam add_283_13.INIT0 = 16'hdddd;
    defparam add_283_13.INIT1 = 16'h7777;
    defparam add_283_13.INJECT1_0 = "NO";
    defparam add_283_13.INJECT1_1 = "NO";
    CCU2D add_283_11 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2288), .COUT(n2289), .S0(cnt2_16__N_154[13]), 
          .S1(cnt2_16__N_154[14]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(105[18:23])
    defparam add_283_11.INIT0 = 16'h6666;
    defparam add_283_11.INIT1 = 16'hdddd;
    defparam add_283_11.INJECT1_0 = "NO";
    defparam add_283_11.INJECT1_1 = "NO";
    CCU2D add_283_9 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cycle[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2287), .COUT(n2288), .S0(cnt2_16__N_154[11]), 
          .S1(cnt2_16__N_154[12]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(105[18:23])
    defparam add_283_9.INIT0 = 16'h1111;
    defparam add_283_9.INIT1 = 16'h5555;
    defparam add_283_9.INJECT1_0 = "NO";
    defparam add_283_9.INJECT1_1 = "NO";
    CCU2D add_283_7 (.A0(cycle[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2286), .COUT(n2287), .S0(cnt2_16__N_154[9]), .S1(cnt2_16__N_154[10]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(105[18:23])
    defparam add_283_7.INIT0 = 16'haaaa;
    defparam add_283_7.INIT1 = 16'h8888;
    defparam add_283_7.INJECT1_0 = "NO";
    defparam add_283_7.INJECT1_1 = "NO";
    CCU2D add_283_5 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2285), .COUT(n2286), .S0(cnt2_16__N_154[7]), 
          .S1(cnt2_16__N_154[8]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(105[18:23])
    defparam add_283_5.INIT0 = 16'h7777;
    defparam add_283_5.INIT1 = 16'heeee;
    defparam add_283_5.INJECT1_0 = "NO";
    defparam add_283_5.INJECT1_1 = "NO";
    CCU2D add_283_3 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cycle[12]), .B1(cycle_pulse[0]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2284), .COUT(n2285), .S0(cnt2_16__N_154[5]), 
          .S1(cnt2_16__N_154[6]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(105[18:23])
    defparam add_283_3.INIT0 = 16'hdddd;
    defparam add_283_3.INIT1 = 16'hdddd;
    defparam add_283_3.INJECT1_0 = "NO";
    defparam add_283_3.INJECT1_1 = "NO";
    CCU2D add_283_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2284), .S1(cnt2_16__N_154[4]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(105[18:23])
    defparam add_283_1.INIT0 = 16'hF000;
    defparam add_283_1.INIT1 = 16'heeee;
    defparam add_283_1.INJECT1_0 = "NO";
    defparam add_283_1.INJECT1_1 = "NO";
    LUT4 i727_2_lut (.A(n549), .B(n952), .Z(cnt1_16__N_65[13])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[5] 87[12])
    defparam i727_2_lut.init = 16'h8888;
    CCU2D count0_284_add_4_9 (.A0(count0[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2271), .S0(n38));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(58[20:26])
    defparam count0_284_add_4_9.INIT0 = 16'hfaaa;
    defparam count0_284_add_4_9.INIT1 = 16'h0000;
    defparam count0_284_add_4_9.INJECT1_0 = "NO";
    defparam count0_284_add_4_9.INJECT1_1 = "NO";
    CCU2D count0_284_add_4_7 (.A0(count0[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count0[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2270), .COUT(n2271), .S0(n40), .S1(n39));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(58[20:26])
    defparam count0_284_add_4_7.INIT0 = 16'hfaaa;
    defparam count0_284_add_4_7.INIT1 = 16'hfaaa;
    defparam count0_284_add_4_7.INJECT1_0 = "NO";
    defparam count0_284_add_4_7.INJECT1_1 = "NO";
    CCU2D count0_284_add_4_5 (.A0(count0[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count0[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2269), .COUT(n2270), .S0(n42), .S1(n41));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(58[20:26])
    defparam count0_284_add_4_5.INIT0 = 16'hfaaa;
    defparam count0_284_add_4_5.INIT1 = 16'hfaaa;
    defparam count0_284_add_4_5.INJECT1_0 = "NO";
    defparam count0_284_add_4_5.INJECT1_1 = "NO";
    CCU2D count0_284_add_4_3 (.A0(count0[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count0[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2268), .COUT(n2269), .S0(n44), .S1(n43));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(58[20:26])
    defparam count0_284_add_4_3.INIT0 = 16'hfaaa;
    defparam count0_284_add_4_3.INIT1 = 16'hfaaa;
    defparam count0_284_add_4_3.INJECT1_0 = "NO";
    defparam count0_284_add_4_3.INJECT1_1 = "NO";
    CCU2D count0_284_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count0[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2268), .S1(n45));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(58[20:26])
    defparam count0_284_add_4_1.INIT0 = 16'hF000;
    defparam count0_284_add_4_1.INIT1 = 16'h0555;
    defparam count0_284_add_4_1.INJECT1_0 = "NO";
    defparam count0_284_add_4_1.INJECT1_1 = "NO";
    CCU2D cnt2_286_add_4_17 (.A0(direction), .B0(cnt2_16__N_153), .C0(cnt2[15]), 
          .D0(GND_net), .A1(direction), .B1(cnt2_16__N_153), .C1(cnt2[16]), 
          .D1(GND_net), .CIN(n2266), .S0(n75), .S1(n74));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286_add_4_17.INIT0 = 16'h1e1e;
    defparam cnt2_286_add_4_17.INIT1 = 16'h1e1e;
    defparam cnt2_286_add_4_17.INJECT1_0 = "NO";
    defparam cnt2_286_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt2_286_add_4_15 (.A0(direction), .B0(cnt2_16__N_153), .C0(cnt2[13]), 
          .D0(GND_net), .A1(direction), .B1(cnt2_16__N_153), .C1(cnt2[14]), 
          .D1(GND_net), .CIN(n2265), .COUT(n2266), .S0(n77), .S1(n76));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286_add_4_15.INIT0 = 16'h1e1e;
    defparam cnt2_286_add_4_15.INIT1 = 16'h1e1e;
    defparam cnt2_286_add_4_15.INJECT1_0 = "NO";
    defparam cnt2_286_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt2_286_add_4_13 (.A0(direction), .B0(cnt2_16__N_153), .C0(cnt2[11]), 
          .D0(GND_net), .A1(direction), .B1(cnt2_16__N_153), .C1(cnt2[12]), 
          .D1(GND_net), .CIN(n2264), .COUT(n2265), .S0(n79), .S1(n78));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286_add_4_13.INIT0 = 16'h1e1e;
    defparam cnt2_286_add_4_13.INIT1 = 16'h1e1e;
    defparam cnt2_286_add_4_13.INJECT1_0 = "NO";
    defparam cnt2_286_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt2_286_add_4_11 (.A0(direction), .B0(cnt2_16__N_153), .C0(cnt2[9]), 
          .D0(GND_net), .A1(direction), .B1(cnt2_16__N_153), .C1(cnt2[10]), 
          .D1(GND_net), .CIN(n2263), .COUT(n2264), .S0(n81), .S1(n80));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286_add_4_11.INIT0 = 16'h1e1e;
    defparam cnt2_286_add_4_11.INIT1 = 16'h1e1e;
    defparam cnt2_286_add_4_11.INJECT1_0 = "NO";
    defparam cnt2_286_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt2_286_add_4_9 (.A0(direction), .B0(cnt2_16__N_153), .C0(cnt2[7]), 
          .D0(GND_net), .A1(direction), .B1(cnt2_16__N_153), .C1(cnt2[8]), 
          .D1(GND_net), .CIN(n2262), .COUT(n2263), .S0(n83), .S1(n82));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286_add_4_9.INIT0 = 16'h1e1e;
    defparam cnt2_286_add_4_9.INIT1 = 16'h1e1e;
    defparam cnt2_286_add_4_9.INJECT1_0 = "NO";
    defparam cnt2_286_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt2_286_add_4_7 (.A0(direction), .B0(cnt2_16__N_153), .C0(cnt2[5]), 
          .D0(GND_net), .A1(direction), .B1(cnt2_16__N_153), .C1(cnt2[6]), 
          .D1(GND_net), .CIN(n2261), .COUT(n2262), .S0(n85), .S1(n84));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286_add_4_7.INIT0 = 16'h1e1e;
    defparam cnt2_286_add_4_7.INIT1 = 16'h1e1e;
    defparam cnt2_286_add_4_7.INJECT1_0 = "NO";
    defparam cnt2_286_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt2_286_add_4_5 (.A0(direction), .B0(cnt2_16__N_153), .C0(cnt2[3]), 
          .D0(GND_net), .A1(direction), .B1(cnt2_16__N_153), .C1(cnt2[4]), 
          .D1(GND_net), .CIN(n2260), .COUT(n2261), .S0(n87), .S1(n86));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286_add_4_5.INIT0 = 16'h1e1e;
    defparam cnt2_286_add_4_5.INIT1 = 16'h1e1e;
    defparam cnt2_286_add_4_5.INJECT1_0 = "NO";
    defparam cnt2_286_add_4_5.INJECT1_1 = "NO";
    LUT4 i754_2_lut (.A(cycle_pulse[0]), .B(cycle[12]), .Z(cycle[16])) /* synthesis lut_function=(A (B)) */ ;
    defparam i754_2_lut.init = 16'h8888;
    CCU2D cnt2_286_add_4_3 (.A0(direction), .B0(cnt2_16__N_153), .C0(cnt2[1]), 
          .D0(GND_net), .A1(direction), .B1(cnt2_16__N_153), .C1(cnt2[2]), 
          .D1(GND_net), .CIN(n2259), .COUT(n2260), .S0(n89), .S1(n88));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286_add_4_3.INIT0 = 16'h1e1e;
    defparam cnt2_286_add_4_3.INIT1 = 16'h1e1e;
    defparam cnt2_286_add_4_3.INJECT1_0 = "NO";
    defparam cnt2_286_add_4_3.INJECT1_1 = "NO";
    CycleSampler_U1 P1 (.GND_net(GND_net), .clk_c(clk_c), .key_menu_c(key_menu_c), 
            .key_menu1(key_menu1));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(46[4:16])
    FD1S3AY a_to_g_i2 (.D(menu_state_c_6), .CK(key_menu1), .Q(n1470));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(132[5] 142[9])
    defparam a_to_g_i2.GSR = "ENABLED";
    CCU2D cnt2_286_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt2[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2259), .S1(n90));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam cnt2_286_add_4_1.INIT0 = 16'hF000;
    defparam cnt2_286_add_4_1.INIT1 = 16'h0555;
    defparam cnt2_286_add_4_1.INJECT1_0 = "NO";
    defparam cnt2_286_add_4_1.INJECT1_1 = "NO";
    CycleSampler_U0 P2 (.GND_net(GND_net), .key_up_c(key_up_c), .clk_c(clk_c), 
            .n2612(n2612), .key_up1_ls(key_up1_ls), .n436(n436));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(47[4:16])
    OB seg_pad (.I(GND_net), .O(seg));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(15[3:6])
    OB pulse_out_pad (.I(pulse_out_c), .O(pulse_out));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(16[6:15])
    OB display_pad (.I(display_c), .O(display));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(17[6:13])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(8[6:11])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(9[6:9])
    IB key_menu_pad (.I(key_menu), .O(key_menu_c));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(10[6:14])
    IB key_up_pad (.I(key_up), .O(key_up_c));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(11[6:12])
    IB key_down_pad (.I(key_down), .O(key_down_c));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(12[6:14])
    LUT4 pulse_out_I_0_1_lut (.A(pulse_out_N_190), .Z(pulse_out_N_189)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[6] 124[13])
    defparam pulse_out_I_0_1_lut.init = 16'h5555;
    LUT4 cnt1_16__I_0_115_i10_4_lut_4_lut (.A(cycle[12]), .B(n952), .C(n2602), 
         .D(n553), .Z(cnt1_16__N_10[9])) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[30:40])
    defparam cnt1_16__I_0_115_i10_4_lut_4_lut.init = 16'h5c50;
    LUT4 i1_2_lut_rep_21 (.A(direction), .B(cnt2_16__N_153), .Z(n2604)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam i1_2_lut_rep_21.init = 16'heeee;
    LUT4 i2_3_lut_4_lut (.A(direction), .B(cnt2_16__N_153), .C(n2454), 
         .D(n1888), .Z(n7_adj_237)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(101[5] 114[9])
    defparam i2_3_lut_4_lut.init = 16'hfff1;
    LUT4 cnt2_16__I_0_122_i28_3_lut_3_lut (.A(cnt2[16]), .B(cnt1[16]), .C(n16), 
         .Z(n28)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i28_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_rep_24_4_lut (.A(key_down1_ls), .B(n2614), .C(dt[4]), 
         .D(duty_pulse[0]), .Z(n2607)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam i1_3_lut_rep_24_4_lut.init = 16'h2220;
    LUT4 i1172_4_lut (.A(n2619), .B(n2618), .C(n2617), .D(n2496), .Z(n2551)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam i1172_4_lut.init = 16'hefee;
    LUT4 i719_2_lut_2_lut (.A(cycle[12]), .B(cycle_pulse[0]), .Z(cycle[14])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[30:40])
    defparam i719_2_lut_2_lut.init = 16'h4444;
    LUT4 i4_4_lut_rep_44 (.A(n7_adj_237), .B(n1594), .C(clk0), .D(n2434), 
         .Z(n2679)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i4_4_lut_rep_44.init = 16'hfffb;
    LUT4 i1111_4_lut (.A(n2622), .B(n2621), .C(n2620), .D(n2481), .Z(n2496)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam i1111_4_lut.init = 16'h0100;
    LUT4 i1096_4_lut (.A(n2625), .B(n2624), .C(n2623), .D(n2468), .Z(n2481)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam i1096_4_lut.init = 16'h5455;
    LUT4 i1083_4_lut (.A(n2610), .B(n2609), .C(n2626), .D(n7), .Z(n2468)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam i1083_4_lut.init = 16'h5554;
    INV i1186 (.A(clk0), .Z(clk0_N_192));
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 cnt2_16__I_0_122_i33_2_lut_rep_33 (.A(cnt2[16]), .B(cnt1[16]), 
         .Z(n2616)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(121[10:19])
    defparam cnt2_16__I_0_122_i33_2_lut_rep_33.init = 16'h6666;
    LUT4 i2_3_lut_3_lut_4_lut (.A(key_down1_ls), .B(n2614), .C(dt[4]), 
         .D(duty_pulse[0]), .Z(n2305)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A (C (D)+!C !(D)))) */ ;
    defparam i2_3_lut_3_lut_4_lut.init = 16'h2dd0;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module CycleSampler
//

module CycleSampler (GND_net, key_down_c, clk_c, n2614, key_down1_ls, 
            n2608);
    input GND_net;
    input key_down_c;
    input clk_c;
    output n2614;
    input key_down1_ls;
    output n2608;
    
    wire keysamplerpulse /* synthesis SET_AS_NETWORK=\P3/keysamplerpulse, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(17[8:23])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(9[6:9])
    wire [2:0]keystore;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(18[8:16])
    
    wire btnstate_N_199, n2246;
    wire [31:0]keysamplerpulsecnt;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(24[11:29])
    wire [31:0]n133;
    
    wire n2247, n2245;
    wire [31:0]n233;
    
    wire n2244, n2243, n2283, n2282, n2281, n2280, n2279, n2278, 
        n2277, n2276, n2275, n2274, n2273, n2272, n2258, n2257, 
        n2256, n2255, n2254, n2253, n2252, n2251, n2250, n2249, 
        n2248;
    
    FD1S3AX keystore_i0 (.D(btnstate_N_199), .CK(keysamplerpulse), .Q(keystore[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=16, LSE_LLINE=48, LSE_RLINE=48 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(39[2] 43[9])
    defparam keystore_i0.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_288_add_4_9 (.A0(keysamplerpulsecnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2246), .COUT(n2247), .S0(n133[7]), 
          .S1(n133[8]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288_add_4_9.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_9.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_9.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_288_add_4_9.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_288_add_4_7 (.A0(n233[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2245), .COUT(n2246), .S0(n133[5]), .S1(n133[6]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288_add_4_7.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_7.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_7.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_288_add_4_7.INJECT1_1 = "NO";
    LUT4 btnstate_I_0_1_lut (.A(key_down_c), .Z(btnstate_N_199)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(42[16:28])
    defparam btnstate_I_0_1_lut.init = 16'h5555;
    FD1S3DX keysamplerpulsecnt_288__i0 (.D(n133[0]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i0.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_288_add_4_5 (.A0(n233[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2244), .COUT(n2245), .S0(n133[3]), .S1(n133[4]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288_add_4_5.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_5.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_5.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_288_add_4_5.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_288_add_4_3 (.A0(n233[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2243), .COUT(n2244), .S0(n133[1]), .S1(n133[2]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288_add_4_3.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_3.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_3.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_288_add_4_3.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_288_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2243), .S1(n133[0]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288_add_4_1.INIT0 = 16'hF000;
    defparam keysamplerpulsecnt_288_add_4_1.INIT1 = 16'h0555;
    defparam keysamplerpulsecnt_288_add_4_1.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_288_add_4_1.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_31 (.A(keystore[2]), .B(keystore[1]), .C(keystore[0]), 
         .Z(n2614)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(44[12:55])
    defparam i2_3_lut_rep_31.init = 16'h8080;
    LUT4 i1_2_lut_rep_25_4_lut (.A(keystore[2]), .B(keystore[1]), .C(keystore[0]), 
         .D(key_down1_ls), .Z(n2608)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(44[12:55])
    defparam i1_2_lut_rep_25_4_lut.init = 16'h7f00;
    CCU2D add_870_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2283), 
          .S0(keysamplerpulse));
    defparam add_870_cout.INIT0 = 16'h0000;
    defparam add_870_cout.INIT1 = 16'h0000;
    defparam add_870_cout.INJECT1_0 = "NO";
    defparam add_870_cout.INJECT1_1 = "NO";
    CCU2D add_870_24 (.A0(keysamplerpulsecnt[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2282), .COUT(n2283));
    defparam add_870_24.INIT0 = 16'h5555;
    defparam add_870_24.INIT1 = 16'hf555;
    defparam add_870_24.INJECT1_0 = "NO";
    defparam add_870_24.INJECT1_1 = "NO";
    CCU2D add_870_22 (.A0(keysamplerpulsecnt[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2281), .COUT(n2282));
    defparam add_870_22.INIT0 = 16'h5555;
    defparam add_870_22.INIT1 = 16'h5555;
    defparam add_870_22.INJECT1_0 = "NO";
    defparam add_870_22.INJECT1_1 = "NO";
    CCU2D add_870_20 (.A0(keysamplerpulsecnt[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2280), .COUT(n2281));
    defparam add_870_20.INIT0 = 16'h5555;
    defparam add_870_20.INIT1 = 16'h5555;
    defparam add_870_20.INJECT1_0 = "NO";
    defparam add_870_20.INJECT1_1 = "NO";
    CCU2D add_870_18 (.A0(keysamplerpulsecnt[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2279), .COUT(n2280));
    defparam add_870_18.INIT0 = 16'h5555;
    defparam add_870_18.INIT1 = 16'h5555;
    defparam add_870_18.INJECT1_0 = "NO";
    defparam add_870_18.INJECT1_1 = "NO";
    CCU2D add_870_16 (.A0(keysamplerpulsecnt[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2278), .COUT(n2279));
    defparam add_870_16.INIT0 = 16'h5555;
    defparam add_870_16.INIT1 = 16'h5555;
    defparam add_870_16.INJECT1_0 = "NO";
    defparam add_870_16.INJECT1_1 = "NO";
    CCU2D add_870_14 (.A0(keysamplerpulsecnt[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2277), .COUT(n2278));
    defparam add_870_14.INIT0 = 16'h5555;
    defparam add_870_14.INIT1 = 16'h5555;
    defparam add_870_14.INJECT1_0 = "NO";
    defparam add_870_14.INJECT1_1 = "NO";
    FD1S3DX keysamplerpulsecnt_288__i31 (.D(n133[31]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i31.GSR = "DISABLED";
    CCU2D add_870_12 (.A0(keysamplerpulsecnt[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2276), .COUT(n2277));
    defparam add_870_12.INIT0 = 16'h5555;
    defparam add_870_12.INIT1 = 16'h5555;
    defparam add_870_12.INJECT1_0 = "NO";
    defparam add_870_12.INJECT1_1 = "NO";
    CCU2D add_870_10 (.A0(keysamplerpulsecnt[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2275), .COUT(n2276));
    defparam add_870_10.INIT0 = 16'h5aaa;
    defparam add_870_10.INIT1 = 16'h5aaa;
    defparam add_870_10.INJECT1_0 = "NO";
    defparam add_870_10.INJECT1_1 = "NO";
    FD1S3DX keysamplerpulsecnt_288__i30 (.D(n133[30]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i30.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i29 (.D(n133[29]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i29.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i28 (.D(n133[28]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i28.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i27 (.D(n133[27]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i27.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i26 (.D(n133[26]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i26.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i25 (.D(n133[25]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i25.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i24 (.D(n133[24]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i24.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i23 (.D(n133[23]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i23.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i22 (.D(n133[22]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i22.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i21 (.D(n133[21]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i21.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i20 (.D(n133[20]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i20.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i19 (.D(n133[19]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i19.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i18 (.D(n133[18]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i18.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i17 (.D(n133[17]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i17.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i16 (.D(n133[16]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i16.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i15 (.D(n133[15]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i15.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i14 (.D(n133[14]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i14.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i13 (.D(n133[13]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i13.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i12 (.D(n133[12]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i12.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i11 (.D(n133[11]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i11.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i10 (.D(n133[10]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i10.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i9 (.D(n133[9]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i9.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i8 (.D(n133[8]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i8.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i7 (.D(n133[7]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i7.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i6 (.D(n133[6]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i6.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i5 (.D(n133[5]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i5.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i4 (.D(n133[4]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i4.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i3 (.D(n133[3]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i3.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i2 (.D(n133[2]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i2.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_288__i1 (.D(n133[1]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288__i1.GSR = "DISABLED";
    CCU2D add_870_8 (.A0(keysamplerpulsecnt[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2274), .COUT(n2275));
    defparam add_870_8.INIT0 = 16'h5555;
    defparam add_870_8.INIT1 = 16'h5aaa;
    defparam add_870_8.INJECT1_0 = "NO";
    defparam add_870_8.INJECT1_1 = "NO";
    CCU2D add_870_6 (.A0(keysamplerpulsecnt[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2273), .COUT(n2274));
    defparam add_870_6.INIT0 = 16'h5555;
    defparam add_870_6.INIT1 = 16'h5aaa;
    defparam add_870_6.INJECT1_0 = "NO";
    defparam add_870_6.INJECT1_1 = "NO";
    CCU2D add_870_4 (.A0(keysamplerpulsecnt[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2272), .COUT(n2273));
    defparam add_870_4.INIT0 = 16'h5555;
    defparam add_870_4.INIT1 = 16'h5aaa;
    defparam add_870_4.INJECT1_0 = "NO";
    defparam add_870_4.INJECT1_1 = "NO";
    CCU2D add_870_2 (.A0(keysamplerpulsecnt[8]), .B0(keysamplerpulsecnt[7]), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[9]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .COUT(n2272));
    defparam add_870_2.INIT0 = 16'h7000;
    defparam add_870_2.INIT1 = 16'h5555;
    defparam add_870_2.INJECT1_0 = "NO";
    defparam add_870_2.INJECT1_1 = "NO";
    FD1S3AX keystore_i2 (.D(keystore[1]), .CK(keysamplerpulse), .Q(keystore[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=16, LSE_LLINE=48, LSE_RLINE=48 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(39[2] 43[9])
    defparam keystore_i2.GSR = "DISABLED";
    FD1S3AX keystore_i1 (.D(keystore[0]), .CK(keysamplerpulse), .Q(keystore[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=16, LSE_LLINE=48, LSE_RLINE=48 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(39[2] 43[9])
    defparam keystore_i1.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_288_add_4_33 (.A0(keysamplerpulsecnt[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2258), .S0(n133[31]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288_add_4_33.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_33.INIT1 = 16'h0000;
    defparam keysamplerpulsecnt_288_add_4_33.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_288_add_4_33.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_288_add_4_31 (.A0(keysamplerpulsecnt[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2257), .COUT(n2258), .S0(n133[29]), 
          .S1(n133[30]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288_add_4_31.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_31.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_31.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_288_add_4_31.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_288_add_4_29 (.A0(keysamplerpulsecnt[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2256), .COUT(n2257), .S0(n133[27]), 
          .S1(n133[28]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288_add_4_29.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_29.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_29.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_288_add_4_29.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_288_add_4_27 (.A0(keysamplerpulsecnt[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2255), .COUT(n2256), .S0(n133[25]), 
          .S1(n133[26]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288_add_4_27.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_27.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_27.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_288_add_4_27.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_288_add_4_25 (.A0(keysamplerpulsecnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2254), .COUT(n2255), .S0(n133[23]), 
          .S1(n133[24]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288_add_4_25.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_25.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_25.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_288_add_4_25.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_288_add_4_23 (.A0(keysamplerpulsecnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2253), .COUT(n2254), .S0(n133[21]), 
          .S1(n133[22]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288_add_4_23.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_23.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_23.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_288_add_4_23.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_288_add_4_21 (.A0(keysamplerpulsecnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2252), .COUT(n2253), .S0(n133[19]), 
          .S1(n133[20]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288_add_4_21.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_21.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_21.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_288_add_4_21.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_288_add_4_19 (.A0(keysamplerpulsecnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2251), .COUT(n2252), .S0(n133[17]), 
          .S1(n133[18]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288_add_4_19.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_19.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_19.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_288_add_4_19.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_288_add_4_17 (.A0(keysamplerpulsecnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2250), .COUT(n2251), .S0(n133[15]), 
          .S1(n133[16]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288_add_4_17.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_17.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_17.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_288_add_4_17.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_288_add_4_15 (.A0(keysamplerpulsecnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2249), .COUT(n2250), .S0(n133[13]), 
          .S1(n133[14]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288_add_4_15.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_15.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_15.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_288_add_4_15.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_288_add_4_13 (.A0(keysamplerpulsecnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2248), .COUT(n2249), .S0(n133[11]), 
          .S1(n133[12]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288_add_4_13.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_13.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_13.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_288_add_4_13.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_288_add_4_11 (.A0(keysamplerpulsecnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2247), .COUT(n2248), .S0(n133[9]), 
          .S1(n133[10]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_288_add_4_11.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_11.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_288_add_4_11.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_288_add_4_11.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module CycleSampler_U1
//

module CycleSampler_U1 (GND_net, clk_c, key_menu_c, key_menu1);
    input GND_net;
    input clk_c;
    input key_menu_c;
    output key_menu1;
    
    wire keysamplerpulse /* synthesis SET_AS_NETWORK=\P1/keysamplerpulse, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(17[8:23])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(9[6:9])
    wire key_menu1 /* synthesis is_clock=1, SET_AS_NETWORK=key_menu1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(30[8:17])
    
    wire n2156;
    wire [31:0]n233;
    wire [31:0]n133;
    
    wire n2157, n2164;
    wire [31:0]keysamplerpulsecnt;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(24[11:29])
    
    wire n2165;
    wire [2:0]keystore;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(18[8:16])
    
    wire btnstate_N_199, n2218, n2217, n2216, n2215, n2214, n2213, 
        n2212, n2211, n2210, n2171, n2209, n2208, n2207, n2163, 
        n2162, n2161, n2160, n2159, n2170, n2158, n2169, n2168, 
        n2167, n2166;
    
    CCU2D keysamplerpulsecnt_290_add_4_3 (.A0(n233[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2156), .COUT(n2157), .S0(n133[1]), .S1(n133[2]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290_add_4_3.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_3.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_3.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_290_add_4_3.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_290_add_4_19 (.A0(keysamplerpulsecnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2164), .COUT(n2165), .S0(n133[17]), 
          .S1(n133[18]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290_add_4_19.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_19.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_19.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_290_add_4_19.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_290_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2156), .S1(n133[0]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290_add_4_1.INIT0 = 16'hF000;
    defparam keysamplerpulsecnt_290_add_4_1.INIT1 = 16'h0555;
    defparam keysamplerpulsecnt_290_add_4_1.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_290_add_4_1.INJECT1_1 = "NO";
    FD1S3AX keystore_i0 (.D(btnstate_N_199), .CK(keysamplerpulse), .Q(keystore[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=16, LSE_LLINE=46, LSE_RLINE=46 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(39[2] 43[9])
    defparam keystore_i0.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i0 (.D(n133[0]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i0.GSR = "DISABLED";
    CCU2D add_871_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2218), 
          .S0(keysamplerpulse));
    defparam add_871_cout.INIT0 = 16'h0000;
    defparam add_871_cout.INIT1 = 16'h0000;
    defparam add_871_cout.INJECT1_0 = "NO";
    defparam add_871_cout.INJECT1_1 = "NO";
    CCU2D add_871_24 (.A0(keysamplerpulsecnt[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2217), .COUT(n2218));
    defparam add_871_24.INIT0 = 16'h5555;
    defparam add_871_24.INIT1 = 16'hf555;
    defparam add_871_24.INJECT1_0 = "NO";
    defparam add_871_24.INJECT1_1 = "NO";
    CCU2D add_871_22 (.A0(keysamplerpulsecnt[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2216), .COUT(n2217));
    defparam add_871_22.INIT0 = 16'h5555;
    defparam add_871_22.INIT1 = 16'h5555;
    defparam add_871_22.INJECT1_0 = "NO";
    defparam add_871_22.INJECT1_1 = "NO";
    CCU2D add_871_20 (.A0(keysamplerpulsecnt[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2215), .COUT(n2216));
    defparam add_871_20.INIT0 = 16'h5555;
    defparam add_871_20.INIT1 = 16'h5555;
    defparam add_871_20.INJECT1_0 = "NO";
    defparam add_871_20.INJECT1_1 = "NO";
    CCU2D add_871_18 (.A0(keysamplerpulsecnt[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2214), .COUT(n2215));
    defparam add_871_18.INIT0 = 16'h5555;
    defparam add_871_18.INIT1 = 16'h5555;
    defparam add_871_18.INJECT1_0 = "NO";
    defparam add_871_18.INJECT1_1 = "NO";
    CCU2D add_871_16 (.A0(keysamplerpulsecnt[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2213), .COUT(n2214));
    defparam add_871_16.INIT0 = 16'h5555;
    defparam add_871_16.INIT1 = 16'h5555;
    defparam add_871_16.INJECT1_0 = "NO";
    defparam add_871_16.INJECT1_1 = "NO";
    CCU2D add_871_14 (.A0(keysamplerpulsecnt[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2212), .COUT(n2213));
    defparam add_871_14.INIT0 = 16'h5555;
    defparam add_871_14.INIT1 = 16'h5555;
    defparam add_871_14.INJECT1_0 = "NO";
    defparam add_871_14.INJECT1_1 = "NO";
    CCU2D add_871_12 (.A0(keysamplerpulsecnt[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2211), .COUT(n2212));
    defparam add_871_12.INIT0 = 16'h5555;
    defparam add_871_12.INIT1 = 16'h5555;
    defparam add_871_12.INJECT1_0 = "NO";
    defparam add_871_12.INJECT1_1 = "NO";
    CCU2D add_871_10 (.A0(keysamplerpulsecnt[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2210), .COUT(n2211));
    defparam add_871_10.INIT0 = 16'h5aaa;
    defparam add_871_10.INIT1 = 16'h5aaa;
    defparam add_871_10.INJECT1_0 = "NO";
    defparam add_871_10.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_290_add_4_33 (.A0(keysamplerpulsecnt[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2171), .S0(n133[31]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290_add_4_33.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_33.INIT1 = 16'h0000;
    defparam keysamplerpulsecnt_290_add_4_33.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_290_add_4_33.INJECT1_1 = "NO";
    CCU2D add_871_8 (.A0(keysamplerpulsecnt[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2209), .COUT(n2210));
    defparam add_871_8.INIT0 = 16'h5555;
    defparam add_871_8.INIT1 = 16'h5aaa;
    defparam add_871_8.INJECT1_0 = "NO";
    defparam add_871_8.INJECT1_1 = "NO";
    CCU2D add_871_6 (.A0(keysamplerpulsecnt[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2208), .COUT(n2209));
    defparam add_871_6.INIT0 = 16'h5555;
    defparam add_871_6.INIT1 = 16'h5aaa;
    defparam add_871_6.INJECT1_0 = "NO";
    defparam add_871_6.INJECT1_1 = "NO";
    CCU2D add_871_4 (.A0(keysamplerpulsecnt[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2207), .COUT(n2208));
    defparam add_871_4.INIT0 = 16'h5555;
    defparam add_871_4.INIT1 = 16'h5aaa;
    defparam add_871_4.INJECT1_0 = "NO";
    defparam add_871_4.INJECT1_1 = "NO";
    CCU2D add_871_2 (.A0(keysamplerpulsecnt[8]), .B0(keysamplerpulsecnt[7]), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[9]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .COUT(n2207));
    defparam add_871_2.INIT0 = 16'h7000;
    defparam add_871_2.INIT1 = 16'h5555;
    defparam add_871_2.INJECT1_0 = "NO";
    defparam add_871_2.INJECT1_1 = "NO";
    LUT4 btnstate_I_0_1_lut (.A(key_menu_c), .Z(btnstate_N_199)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(42[16:28])
    defparam btnstate_I_0_1_lut.init = 16'h5555;
    CCU2D keysamplerpulsecnt_290_add_4_17 (.A0(keysamplerpulsecnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2163), .COUT(n2164), .S0(n133[15]), 
          .S1(n133[16]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290_add_4_17.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_17.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_17.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_290_add_4_17.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_290_add_4_15 (.A0(keysamplerpulsecnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2162), .COUT(n2163), .S0(n133[13]), 
          .S1(n133[14]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290_add_4_15.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_15.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_15.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_290_add_4_15.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_290_add_4_13 (.A0(keysamplerpulsecnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2161), .COUT(n2162), .S0(n133[11]), 
          .S1(n133[12]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290_add_4_13.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_13.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_13.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_290_add_4_13.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_290_add_4_11 (.A0(keysamplerpulsecnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2160), .COUT(n2161), .S0(n133[9]), 
          .S1(n133[10]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290_add_4_11.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_11.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_11.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_290_add_4_11.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_290_add_4_9 (.A0(keysamplerpulsecnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2159), .COUT(n2160), .S0(n133[7]), 
          .S1(n133[8]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290_add_4_9.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_9.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_9.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_290_add_4_9.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_290_add_4_31 (.A0(keysamplerpulsecnt[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2170), .COUT(n2171), .S0(n133[29]), 
          .S1(n133[30]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290_add_4_31.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_31.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_31.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_290_add_4_31.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_290_add_4_7 (.A0(n233[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2158), .COUT(n2159), .S0(n133[5]), .S1(n133[6]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290_add_4_7.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_7.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_7.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_290_add_4_7.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_290_add_4_29 (.A0(keysamplerpulsecnt[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2169), .COUT(n2170), .S0(n133[27]), 
          .S1(n133[28]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290_add_4_29.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_29.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_29.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_290_add_4_29.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_290_add_4_27 (.A0(keysamplerpulsecnt[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2168), .COUT(n2169), .S0(n133[25]), 
          .S1(n133[26]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290_add_4_27.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_27.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_27.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_290_add_4_27.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_290_add_4_25 (.A0(keysamplerpulsecnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2167), .COUT(n2168), .S0(n133[23]), 
          .S1(n133[24]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290_add_4_25.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_25.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_25.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_290_add_4_25.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_290_add_4_5 (.A0(n233[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2157), .COUT(n2158), .S0(n133[3]), .S1(n133[4]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290_add_4_5.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_5.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_5.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_290_add_4_5.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_290_add_4_23 (.A0(keysamplerpulsecnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2166), .COUT(n2167), .S0(n133[21]), 
          .S1(n133[22]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290_add_4_23.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_23.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_23.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_290_add_4_23.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_290_add_4_21 (.A0(keysamplerpulsecnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2165), .COUT(n2166), .S0(n133[19]), 
          .S1(n133[20]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290_add_4_21.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_21.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_290_add_4_21.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_290_add_4_21.INJECT1_1 = "NO";
    FD1S3DX keysamplerpulsecnt_290__i31 (.D(n133[31]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i31.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i30 (.D(n133[30]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i30.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i29 (.D(n133[29]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i29.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i28 (.D(n133[28]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i28.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i27 (.D(n133[27]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i27.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i26 (.D(n133[26]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i26.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i25 (.D(n133[25]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i25.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i24 (.D(n133[24]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i24.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i23 (.D(n133[23]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i23.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i22 (.D(n133[22]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i22.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i21 (.D(n133[21]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i21.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i20 (.D(n133[20]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i20.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i19 (.D(n133[19]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i19.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i18 (.D(n133[18]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i18.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i17 (.D(n133[17]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i17.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i16 (.D(n133[16]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i16.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i15 (.D(n133[15]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i15.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i14 (.D(n133[14]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i14.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i13 (.D(n133[13]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i13.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i12 (.D(n133[12]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i12.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i11 (.D(n133[11]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i11.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i10 (.D(n133[10]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i10.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i9 (.D(n133[9]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i9.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i8 (.D(n133[8]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i8.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i7 (.D(n133[7]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i7.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i6 (.D(n133[6]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i6.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i5 (.D(n133[5]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i5.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i4 (.D(n133[4]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i4.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i3 (.D(n133[3]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i3.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i2 (.D(n133[2]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i2.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_290__i1 (.D(n133[1]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_290__i1.GSR = "DISABLED";
    FD1S3AX keystore_i2 (.D(keystore[1]), .CK(keysamplerpulse), .Q(keystore[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=16, LSE_LLINE=46, LSE_RLINE=46 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(39[2] 43[9])
    defparam keystore_i2.GSR = "DISABLED";
    FD1S3AX keystore_i1 (.D(keystore[0]), .CK(keysamplerpulse), .Q(keystore[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=16, LSE_LLINE=46, LSE_RLINE=46 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(39[2] 43[9])
    defparam keystore_i1.GSR = "DISABLED";
    LUT4 i2_3_lut (.A(keystore[2]), .B(keystore[1]), .C(keystore[0]), 
         .Z(key_menu1)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(44[12:55])
    defparam i2_3_lut.init = 16'h8080;
    
endmodule
//
// Verilog Description of module CycleSampler_U0
//

module CycleSampler_U0 (GND_net, key_up_c, clk_c, n2612, key_up1_ls, 
            n436);
    input GND_net;
    input key_up_c;
    input clk_c;
    output n2612;
    input key_up1_ls;
    output n436;
    
    wire keysamplerpulse /* synthesis SET_AS_NETWORK=\P2/keysamplerpulse, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(17[8:23])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(9[6:9])
    
    wire n2154;
    wire [31:0]keysamplerpulsecnt;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(24[11:29])
    
    wire n2155;
    wire [2:0]keystore;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(18[8:16])
    
    wire btnstate_N_199, n2184;
    wire [31:0]n133;
    
    wire n2185, n2148, n2149, n2153;
    wire [31:0]n233;
    
    wire n2152, n2147, n2178, n2179, n2177, n2176, n2183, n2182, 
        n2175, n2146, n2174, n2151, n2150, n2145, n2144, n2173, 
        n2172, n2181, n2180, n2187, n2186;
    
    CCU2D add_872_24 (.A0(keysamplerpulsecnt[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2154), .COUT(n2155));
    defparam add_872_24.INIT0 = 16'h5555;
    defparam add_872_24.INIT1 = 16'hf555;
    defparam add_872_24.INJECT1_0 = "NO";
    defparam add_872_24.INJECT1_1 = "NO";
    CCU2D add_872_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2155), 
          .S0(keysamplerpulse));
    defparam add_872_cout.INIT0 = 16'h0000;
    defparam add_872_cout.INIT1 = 16'h0000;
    defparam add_872_cout.INJECT1_0 = "NO";
    defparam add_872_cout.INJECT1_1 = "NO";
    FD1S3AX keystore_i0 (.D(btnstate_N_199), .CK(keysamplerpulse), .Q(keystore[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=16, LSE_LLINE=47, LSE_RLINE=47 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(39[2] 43[9])
    defparam keystore_i0.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_289_add_4_27 (.A0(keysamplerpulsecnt[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2184), .COUT(n2185), .S0(n133[25]), 
          .S1(n133[26]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289_add_4_27.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_27.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_27.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_289_add_4_27.INJECT1_1 = "NO";
    CCU2D add_872_12 (.A0(keysamplerpulsecnt[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2148), .COUT(n2149));
    defparam add_872_12.INIT0 = 16'h5555;
    defparam add_872_12.INIT1 = 16'h5555;
    defparam add_872_12.INJECT1_0 = "NO";
    defparam add_872_12.INJECT1_1 = "NO";
    CCU2D add_872_22 (.A0(keysamplerpulsecnt[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2153), .COUT(n2154));
    defparam add_872_22.INIT0 = 16'h5555;
    defparam add_872_22.INIT1 = 16'h5555;
    defparam add_872_22.INJECT1_0 = "NO";
    defparam add_872_22.INJECT1_1 = "NO";
    LUT4 btnstate_I_0_1_lut (.A(key_up_c), .Z(btnstate_N_199)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(42[16:28])
    defparam btnstate_I_0_1_lut.init = 16'h5555;
    FD1S3DX keysamplerpulsecnt_289__i0 (.D(n133[0]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i0.GSR = "DISABLED";
    CCU2D add_872_20 (.A0(keysamplerpulsecnt[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2152), .COUT(n2153));
    defparam add_872_20.INIT0 = 16'h5555;
    defparam add_872_20.INIT1 = 16'h5555;
    defparam add_872_20.INJECT1_0 = "NO";
    defparam add_872_20.INJECT1_1 = "NO";
    CCU2D add_872_10 (.A0(keysamplerpulsecnt[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2147), .COUT(n2148));
    defparam add_872_10.INIT0 = 16'h5aaa;
    defparam add_872_10.INIT1 = 16'h5aaa;
    defparam add_872_10.INJECT1_0 = "NO";
    defparam add_872_10.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_289_add_4_15 (.A0(keysamplerpulsecnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2178), .COUT(n2179), .S0(n133[13]), 
          .S1(n133[14]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289_add_4_15.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_15.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_15.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_289_add_4_15.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_289_add_4_13 (.A0(keysamplerpulsecnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2177), .COUT(n2178), .S0(n133[11]), 
          .S1(n133[12]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289_add_4_13.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_13.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_13.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_289_add_4_13.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_289_add_4_11 (.A0(keysamplerpulsecnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2176), .COUT(n2177), .S0(n133[9]), 
          .S1(n133[10]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289_add_4_11.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_11.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_11.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_289_add_4_11.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_289_add_4_25 (.A0(keysamplerpulsecnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2183), .COUT(n2184), .S0(n133[23]), 
          .S1(n133[24]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289_add_4_25.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_25.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_25.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_289_add_4_25.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_289_add_4_23 (.A0(keysamplerpulsecnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2182), .COUT(n2183), .S0(n133[21]), 
          .S1(n133[22]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289_add_4_23.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_23.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_23.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_289_add_4_23.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_289_add_4_9 (.A0(keysamplerpulsecnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2175), .COUT(n2176), .S0(n133[7]), 
          .S1(n133[8]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289_add_4_9.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_9.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_9.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_289_add_4_9.INJECT1_1 = "NO";
    CCU2D add_872_8 (.A0(keysamplerpulsecnt[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2146), .COUT(n2147));
    defparam add_872_8.INIT0 = 16'h5555;
    defparam add_872_8.INIT1 = 16'h5aaa;
    defparam add_872_8.INJECT1_0 = "NO";
    defparam add_872_8.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_289_add_4_7 (.A0(n233[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2174), .COUT(n2175), .S0(n133[5]), .S1(n133[6]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289_add_4_7.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_7.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_7.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_289_add_4_7.INJECT1_1 = "NO";
    CCU2D add_872_18 (.A0(keysamplerpulsecnt[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2151), .COUT(n2152));
    defparam add_872_18.INIT0 = 16'h5555;
    defparam add_872_18.INIT1 = 16'h5555;
    defparam add_872_18.INJECT1_0 = "NO";
    defparam add_872_18.INJECT1_1 = "NO";
    CCU2D add_872_16 (.A0(keysamplerpulsecnt[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2150), .COUT(n2151));
    defparam add_872_16.INIT0 = 16'h5555;
    defparam add_872_16.INIT1 = 16'h5555;
    defparam add_872_16.INJECT1_0 = "NO";
    defparam add_872_16.INJECT1_1 = "NO";
    CCU2D add_872_6 (.A0(keysamplerpulsecnt[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2145), .COUT(n2146));
    defparam add_872_6.INIT0 = 16'h5555;
    defparam add_872_6.INIT1 = 16'h5aaa;
    defparam add_872_6.INJECT1_0 = "NO";
    defparam add_872_6.INJECT1_1 = "NO";
    CCU2D add_872_4 (.A0(keysamplerpulsecnt[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2144), .COUT(n2145));
    defparam add_872_4.INIT0 = 16'h5555;
    defparam add_872_4.INIT1 = 16'h5aaa;
    defparam add_872_4.INJECT1_0 = "NO";
    defparam add_872_4.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_289_add_4_5 (.A0(n233[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2173), .COUT(n2174), .S0(n133[3]), .S1(n133[4]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289_add_4_5.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_5.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_5.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_289_add_4_5.INJECT1_1 = "NO";
    CCU2D add_872_2 (.A0(keysamplerpulsecnt[8]), .B0(keysamplerpulsecnt[7]), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[9]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .COUT(n2144));
    defparam add_872_2.INIT0 = 16'h7000;
    defparam add_872_2.INIT1 = 16'h5555;
    defparam add_872_2.INJECT1_0 = "NO";
    defparam add_872_2.INJECT1_1 = "NO";
    CCU2D add_872_14 (.A0(keysamplerpulsecnt[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2149), .COUT(n2150));
    defparam add_872_14.INIT0 = 16'h5555;
    defparam add_872_14.INIT1 = 16'h5555;
    defparam add_872_14.INJECT1_0 = "NO";
    defparam add_872_14.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_29 (.A(keystore[2]), .B(keystore[1]), .C(keystore[0]), 
         .Z(n2612)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(44[12:55])
    defparam i2_3_lut_rep_29.init = 16'h8080;
    CCU2D keysamplerpulsecnt_289_add_4_3 (.A0(n233[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2172), .COUT(n2173), .S0(n133[1]), .S1(n133[2]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289_add_4_3.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_3.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_3.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_289_add_4_3.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_289_add_4_21 (.A0(keysamplerpulsecnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2181), .COUT(n2182), .S0(n133[19]), 
          .S1(n133[20]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289_add_4_21.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_21.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_21.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_289_add_4_21.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_289_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2172), .S1(n133[0]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289_add_4_1.INIT0 = 16'hF000;
    defparam keysamplerpulsecnt_289_add_4_1.INIT1 = 16'h0555;
    defparam keysamplerpulsecnt_289_add_4_1.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_289_add_4_1.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_289_add_4_19 (.A0(keysamplerpulsecnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2180), .COUT(n2181), .S0(n133[17]), 
          .S1(n133[18]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289_add_4_19.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_19.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_19.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_289_add_4_19.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_289_add_4_17 (.A0(keysamplerpulsecnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2179), .COUT(n2180), .S0(n133[15]), 
          .S1(n133[16]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289_add_4_17.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_17.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_17.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_289_add_4_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut (.A(keystore[2]), .B(keystore[1]), .C(keystore[0]), 
         .D(key_up1_ls), .Z(n436)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(44[12:55])
    defparam i1_2_lut_4_lut.init = 16'h7f00;
    CCU2D keysamplerpulsecnt_289_add_4_33 (.A0(keysamplerpulsecnt[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2187), .S0(n133[31]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289_add_4_33.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_33.INIT1 = 16'h0000;
    defparam keysamplerpulsecnt_289_add_4_33.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_289_add_4_33.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_289_add_4_31 (.A0(keysamplerpulsecnt[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2186), .COUT(n2187), .S0(n133[29]), 
          .S1(n133[30]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289_add_4_31.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_31.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_31.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_289_add_4_31.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_289_add_4_29 (.A0(keysamplerpulsecnt[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2185), .COUT(n2186), .S0(n133[27]), 
          .S1(n133[28]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289_add_4_29.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_29.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_289_add_4_29.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_289_add_4_29.INJECT1_1 = "NO";
    FD1S3DX keysamplerpulsecnt_289__i31 (.D(n133[31]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i31.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i30 (.D(n133[30]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i30.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i29 (.D(n133[29]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i29.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i28 (.D(n133[28]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i28.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i27 (.D(n133[27]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i27.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i26 (.D(n133[26]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i26.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i25 (.D(n133[25]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i25.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i24 (.D(n133[24]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i24.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i23 (.D(n133[23]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i23.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i22 (.D(n133[22]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i22.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i21 (.D(n133[21]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i21.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i20 (.D(n133[20]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i20.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i19 (.D(n133[19]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i19.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i18 (.D(n133[18]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i18.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i17 (.D(n133[17]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i17.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i16 (.D(n133[16]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i16.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i15 (.D(n133[15]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i15.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i14 (.D(n133[14]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i14.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i13 (.D(n133[13]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i13.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i12 (.D(n133[12]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i12.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i11 (.D(n133[11]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i11.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i10 (.D(n133[10]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i10.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i9 (.D(n133[9]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i9.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i8 (.D(n133[8]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i8.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i7 (.D(n133[7]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i7.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i6 (.D(n133[6]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i6.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i5 (.D(n133[5]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i5.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i4 (.D(n133[4]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i4.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i3 (.D(n133[3]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i3.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i2 (.D(n133[2]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i2.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_289__i1 (.D(n133[1]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_289__i1.GSR = "DISABLED";
    FD1S3AX keystore_i2 (.D(keystore[1]), .CK(keysamplerpulse), .Q(keystore[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=16, LSE_LLINE=47, LSE_RLINE=47 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(39[2] 43[9])
    defparam keystore_i2.GSR = "DISABLED";
    FD1S3AX keystore_i1 (.D(keystore[0]), .CK(keysamplerpulse), .Q(keystore[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=16, LSE_LLINE=47, LSE_RLINE=47 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(39[2] 43[9])
    defparam keystore_i1.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

