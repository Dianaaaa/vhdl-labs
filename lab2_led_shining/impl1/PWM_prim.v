// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Tue Nov 17 20:56:25 2020
//
// Verilog Description of module PWM
//

module PWM (rst_n, clk, key_menu, key_up, key_down, menu_state, 
            pulse_out, display);   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(6[8:11])
    input rst_n;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(8[6:11])
    input clk;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(9[6:9])
    input key_menu;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(10[6:14])
    input key_up;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(11[6:12])
    input key_down;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(12[6:14])
    output menu_state;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(13[6:16])
    output pulse_out;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(14[6:15])
    output display;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(15[6:13])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(9[6:9])
    wire clk0 /* synthesis is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(21[8:12])
    wire key_menu1 /* synthesis is_clock=1, SET_AS_NETWORK=key_menu1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(28[8:17])
    wire clk0__inv /* synthesis is_inv_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(21[8:12])
    
    wire GND_net, rst_n_c, key_menu_c, key_up_c, key_down_c, menu_state_c, 
        pulse_out_c, display_c;
    wire [16:0]cnt1;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(22[8:12])
    
    wire n1491;
    wire [16:0]cnt2;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(23[8:12])
    wire [1:0]cycle_pulse;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(24[8:19])
    wire [1:0]duty_pulse;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(25[8:18])
    wire [16:0]cycle;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(26[8:13])
    
    wire n14, n12, n10, key_up1_ls, key_down1_ls;
    wire [7:0]count0;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(50[10:16])
    
    wire n14_adj_218, clk0_N_177;
    wire [32:0]cnt1_16__N_77;
    
    wire cnt1_16__N_76, n1579, n2473;
    wire [16:0]cnt1_16__N_58;
    wire [16:0]cnt1_16__N_1;
    
    wire direction, cnt2_16__N_166;
    wire [17:0]cnt2_16__N_147;
    
    wire cnt2_16__N_146, n2236, n1904, n2235, n2234, n2233, n2231, 
        n2230, direction_N_180, n895, n894, n893, n892, n891, 
        n890, n1235, pulse_out_N_174, pulse_out_N_173, menu_state_N_170, 
        n2229, n2228, n407, n2227, n508, n507, n509, n510, n511, 
        n512, n513, n514, n515, n516, n517, n518, n519, n520, 
        n2226, n28, n2225, n2224, n2170, n14_adj_219, n2169, n26, 
        n32, n2223, n2222, n2221, n15, n2284, n2220, n2168, 
        n2219, n2167, n2438, n2218, n2166, n2165, n24, n2217, 
        n2216, n2215, n2164, n2163, n2162, n2161, n22, n20, 
        n18, n17, n16, n2462, n2160, n2159, n902, n901, n900, 
        n2158, n899, n898, n897, n2555, clk_c_enable_6, n2554, 
        n1799, n30, n2459, n2157, n2156, n2155, n2154, n2153, 
        n2152, n2151, n2553, n2150, n2149, n896, n907, n908, 
        n2551, n2550, n2148, n2549, n2449, n10_adj_220, n8, n2548, 
        n2547, n2546, clk_c_enable_8, n2545, n2267, n2266, n2265, 
        n2264, n2261, n2544, n2420, n2431, n2283, n2543, n2425, 
        n2542, n6, n2541, n4, n2540, n2539, n2485, n2538, n2492, 
        n2483, n23, clk_c_enable_35, n22_adj_221, n2124, n2418, 
        n2478, n21, n74, n75, n76, n77, n78, n79, n80, n81, 
        n82, n83, n84, n85, n86, n87, n88, n89, n90, n1493, 
        n1495, n1497, n1499, n1501, n1503, n1505, n1507, n1509, 
        n1511, n1513, n105, n2128, n2127, n2131, n2130, n2126, 
        n2263, n2262, n2536, n38, n39, n40, n41, n42, n43, 
        n44, n45, n2129, n2535, n2125, VCC_net;
    
    LUT4 i674_2_lut (.A(n510), .B(n908), .Z(cnt1_16__N_58[13])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[5] 85[12])
    defparam i674_2_lut.init = 16'h8888;
    CCU2D add_113_7 (.A0(duty_pulse[0]), .B0(duty_pulse[1]), .C0(cnt1[8]), 
          .D0(GND_net), .A1(cnt1[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2150), .COUT(n2151), .S0(n515), .S1(n514));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[16:20])
    defparam add_113_7.INIT0 = 16'h7878;
    defparam add_113_7.INIT1 = 16'h5aaa;
    defparam add_113_7.INJECT1_0 = "NO";
    defparam add_113_7.INJECT1_1 = "NO";
    FD1S3AX key_down1_ls_92 (.D(n2555), .CK(clk_c), .Q(key_down1_ls));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(64[5] 67[9])
    defparam key_down1_ls_92.GSR = "DISABLED";
    CCU2D sub_117_add_2_3 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(duty_pulse[0]), 
          .D0(duty_pulse[1]), .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(duty_pulse[0]), 
          .D1(GND_net), .CIN(n2124), .COUT(n2125), .S0(cnt1_16__N_77[4]), 
          .S1(cnt1_16__N_77[5]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[15:20])
    defparam sub_117_add_2_3.INIT0 = 16'hee1e;
    defparam sub_117_add_2_3.INIT1 = 16'hd2d2;
    defparam sub_117_add_2_3.INJECT1_0 = "NO";
    defparam sub_117_add_2_3.INJECT1_1 = "NO";
    LUT4 cnt2_16__I_0_111_i23_2_lut_rep_22 (.A(cnt2[11]), .B(cnt1[11]), 
         .Z(n2542)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam cnt2_16__I_0_111_i23_2_lut_rep_22.init = 16'h6666;
    FD1S3AX pulse_out_96 (.D(pulse_out_N_173), .CK(clk0__inv), .Q(pulse_out_c));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(118[5] 124[9])
    defparam pulse_out_96.GSR = "DISABLED";
    IB key_up_pad (.I(key_up), .O(key_up_c));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(11[6:12])
    LUT4 i679_2_lut_4_lut (.A(n2420), .B(clk_c_enable_35), .C(n2536), 
         .D(n85), .Z(n1513)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam i679_2_lut_4_lut.init = 16'hbf00;
    LUT4 cnt2_16__I_0_111_i14_3_lut_3_lut (.A(cnt2[11]), .B(cnt1[11]), .C(cnt1[7]), 
         .Z(n14)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam cnt2_16__I_0_111_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i715_2_lut_4_lut (.A(n2420), .B(clk_c_enable_35), .C(n2536), 
         .D(n86), .Z(n105)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam i715_2_lut_4_lut.init = 16'hbf00;
    FD1S3AX display_97 (.D(pulse_out_c), .CK(clk0__inv), .Q(display_c));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(118[5] 124[9])
    defparam display_97.GSR = "DISABLED";
    IB key_menu_pad (.I(key_menu), .O(key_menu_c));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(10[6:14])
    FD1S3AX menu_state_98 (.D(menu_state_N_170), .CK(key_menu1), .Q(menu_state_c));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(130[5] 134[9])
    defparam menu_state_98.GSR = "ENABLED";
    FD1S3AX clk0_89 (.D(clk0_N_177), .CK(clk_c), .Q(clk0));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(52[5] 58[10])
    defparam clk0_89.GSR = "DISABLED";
    CCU2D sub_233_add_2_20 (.A0(cnt2_16__N_166), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2170), .S1(cnt2_16__N_146));
    defparam sub_233_add_2_20.INIT0 = 16'h0aaa;
    defparam sub_233_add_2_20.INIT1 = 16'h0000;
    defparam sub_233_add_2_20.INJECT1_0 = "NO";
    defparam sub_233_add_2_20.INJECT1_1 = "NO";
    CCU2D add_113_5 (.A0(cnt1[6]), .B0(duty_pulse[0]), .C0(GND_net), .D0(GND_net), 
          .A1(duty_pulse[1]), .B1(duty_pulse[0]), .C1(cnt1[7]), .D1(GND_net), 
          .CIN(n2149), .COUT(n2150), .S0(n517), .S1(n516));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[16:20])
    defparam add_113_5.INIT0 = 16'h5666;
    defparam add_113_5.INIT1 = 16'hd2d2;
    defparam add_113_5.INJECT1_0 = "NO";
    defparam add_113_5.INJECT1_1 = "NO";
    IB key_down_pad (.I(key_down), .O(key_down_c));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(12[6:14])
    LUT4 i1_2_lut_rep_16 (.A(direction), .B(cnt2_16__N_146), .Z(n2536)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam i1_2_lut_rep_16.init = 16'heeee;
    CCU2D sub_117_add_2_11 (.A0(cycle[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2128), .COUT(n2129), .S0(cnt1_16__N_77[12]), 
          .S1(cnt1_16__N_77[13]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[15:20])
    defparam sub_117_add_2_11.INIT0 = 16'h5555;
    defparam sub_117_add_2_11.INIT1 = 16'h6666;
    defparam sub_117_add_2_11.INJECT1_0 = "NO";
    defparam sub_117_add_2_11.INJECT1_1 = "NO";
    L6MUX21 cnt2_16__I_0_111_i34 (.D0(n30), .D1(n32), .SD(n2483), .Z(pulse_out_N_174));
    LUT4 i1_2_lut_4_lut (.A(n2420), .B(clk_c_enable_35), .C(n2536), .D(n74), 
         .Z(n1491)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hbf00;
    LUT4 cnt2_16__I_0_111_i25_2_lut_rep_23 (.A(cnt2[12]), .B(cnt1[12]), 
         .Z(n2543)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam cnt2_16__I_0_111_i25_2_lut_rep_23.init = 16'h6666;
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(9[6:9])
    LUT4 cnt2_16__I_0_111_i22_3_lut_3_lut (.A(cnt2[12]), .B(cnt1[12]), .C(n14), 
         .Z(n22)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam cnt2_16__I_0_111_i22_3_lut_3_lut.init = 16'hd4d4;
    PFUMX cnt2_16__I_0_111_i30 (.BLUT(n22), .ALUT(n28), .C0(n2478), .Z(n30));
    FD1P3IX duty_pulse_269__i1 (.D(n2283), .SP(clk_c_enable_8), .CD(GND_net), 
            .CK(clk_c), .Q(duty_pulse[1]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(157[3] 168[9])
    defparam duty_pulse_269__i1.GSR = "ENABLED";
    FD1P3IX direction_95 (.D(direction_N_180), .SP(rst_n_c), .CD(n1235), 
            .CK(clk0), .Q(direction));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam direction_95.GSR = "DISABLED";
    LUT4 cnt2_16__I_0_111_i27_2_lut_rep_24 (.A(cnt2[13]), .B(cnt1[13]), 
         .Z(n2544)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam cnt2_16__I_0_111_i27_2_lut_rep_24.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut (.A(direction), .B(cnt2_16__N_146), .C(clk_c_enable_35), 
         .D(n2420), .Z(n1904)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h00e0;
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(8[6:11])
    LUT4 i1132_4_lut (.A(cycle[16]), .B(menu_state_c), .C(n2539), .D(n407), 
         .Z(clk_c_enable_6)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C+(D))))) */ ;
    defparam i1132_4_lut.init = 16'h3130;
    LUT4 i701_2_lut (.A(cycle_pulse[0]), .B(cycle[12]), .Z(cycle[16])) /* synthesis lut_function=(A (B)) */ ;
    defparam i701_2_lut.init = 16'h8888;
    LUT4 cnt1_16__I_0_105_i17_4_lut (.A(n507), .B(cycle[16]), .C(n2535), 
         .D(n908), .Z(cnt1_16__N_1[16])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[5] 85[12])
    defparam cnt1_16__I_0_105_i17_4_lut.init = 16'hcac0;
    LUT4 i9_4_lut (.A(n894), .B(n898), .C(n892), .D(n901), .Z(n22_adj_221)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 cnt1_16__I_0_105_i16_4_lut (.A(n508), .B(cycle[15]), .C(n2535), 
         .D(n908), .Z(cnt1_16__N_1[15])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[5] 85[12])
    defparam cnt1_16__I_0_105_i16_4_lut.init = 16'hcac0;
    LUT4 cnt2_16__I_0_111_i12_3_lut_3_lut (.A(cnt2[6]), .B(cnt1[6]), .C(cnt1[5]), 
         .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam cnt2_16__I_0_111_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 cnt2_16__I_0_111_i29_2_lut_rep_25 (.A(cnt2[14]), .B(cnt1[14]), 
         .Z(n2545)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam cnt2_16__I_0_111_i29_2_lut_rep_25.init = 16'h6666;
    LUT4 i1111_2_lut_3_lut_4_lut (.A(cnt2[14]), .B(cnt1[14]), .C(cnt1[13]), 
         .D(cnt2[13]), .Z(n2473)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam i1111_2_lut_3_lut_4_lut.init = 16'h9009;
    OB display_pad (.I(display_c), .O(display));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(15[6:13])
    LUT4 cnt2_16__I_0_111_i24_3_lut_3_lut (.A(cnt2[14]), .B(cnt1[14]), .C(cnt1[13]), 
         .Z(n24)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam cnt2_16__I_0_111_i24_3_lut_3_lut.init = 16'hd4d4;
    LUT4 cnt2_16__I_0_111_i31_2_lut_rep_26 (.A(cnt2[15]), .B(cnt1[15]), 
         .Z(n2546)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam cnt2_16__I_0_111_i31_2_lut_rep_26.init = 16'h6666;
    OB pulse_out_pad (.I(pulse_out_c), .O(pulse_out));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(14[6:15])
    OB menu_state_pad (.I(menu_state_c), .O(menu_state));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(13[6:16])
    CCU2D count0_268_add_4_9 (.A0(count0[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2236), .S0(n38));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(56[20:26])
    defparam count0_268_add_4_9.INIT0 = 16'hfaaa;
    defparam count0_268_add_4_9.INIT1 = 16'h0000;
    defparam count0_268_add_4_9.INJECT1_0 = "NO";
    defparam count0_268_add_4_9.INJECT1_1 = "NO";
    LUT4 cnt2_16__I_0_111_i26_3_lut_3_lut (.A(cnt2[15]), .B(cnt1[15]), .C(n24), 
         .Z(n26)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam cnt2_16__I_0_111_i26_3_lut_3_lut.init = 16'hd4d4;
    CCU2D count0_268_add_4_7 (.A0(count0[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count0[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2235), .COUT(n2236), .S0(n40), .S1(n39));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(56[20:26])
    defparam count0_268_add_4_7.INIT0 = 16'hfaaa;
    defparam count0_268_add_4_7.INIT1 = 16'hfaaa;
    defparam count0_268_add_4_7.INJECT1_0 = "NO";
    defparam count0_268_add_4_7.INJECT1_1 = "NO";
    CCU2D add_113_3 (.A0(duty_pulse[0]), .B0(duty_pulse[1]), .C0(cnt1[4]), 
          .D0(GND_net), .A1(cnt1[5]), .B1(duty_pulse[0]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2148), .COUT(n2149), .S0(n519), .S1(n518));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[16:20])
    defparam add_113_3.INIT0 = 16'hd2d2;
    defparam add_113_3.INIT1 = 16'h5999;
    defparam add_113_3.INJECT1_0 = "NO";
    defparam add_113_3.INJECT1_1 = "NO";
    LUT4 i1136_2_lut_3_lut (.A(cnt2[15]), .B(cnt1[15]), .C(n2492), .Z(n2478)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam i1136_2_lut_3_lut.init = 16'hf6f6;
    FD1P3IX cycle_pulse_271__i1 (.D(n2284), .SP(clk_c_enable_6), .CD(GND_net), 
            .CK(clk_c), .Q(cycle[12]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(144[3] 155[9])
    defparam cycle_pulse_271__i1.GSR = "ENABLED";
    FD1P3IX cnt2_270__i3 (.D(n87), .SP(clk_c_enable_35), .CD(n1904), .CK(clk_c), 
            .Q(cnt2[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270__i3.GSR = "ENABLED";
    FD1P3IX cnt2_270__i1 (.D(n89), .SP(clk_c_enable_35), .CD(n1904), .CK(clk_c), 
            .Q(cnt2[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270__i1.GSR = "ENABLED";
    LUT4 i879_1_lut (.A(duty_pulse[0]), .Z(n15)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(157[3] 168[9])
    defparam i879_1_lut.init = 16'h5555;
    FD1P3AX cnt1_i0_i3 (.D(cnt1_16__N_1[3]), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt1[3]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(79[5] 86[10])
    defparam cnt1_i0_i3.GSR = "ENABLED";
    FD1P3IX cycle_pulse_271__i0 (.D(n2553), .SP(clk_c_enable_6), .CD(GND_net), 
            .CK(clk_c), .Q(cycle_pulse[0]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(144[3] 155[9])
    defparam cycle_pulse_271__i0.GSR = "ENABLED";
    FD1P3IX cnt2_270__i2 (.D(n88), .SP(clk_c_enable_35), .CD(n1904), .CK(clk_c), 
            .Q(cnt2[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270__i2.GSR = "ENABLED";
    FD1S3AX key_up1_ls_91 (.D(n2541), .CK(clk_c), .Q(key_up1_ls));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(64[5] 67[9])
    defparam key_up1_ls_91.GSR = "DISABLED";
    CCU2D count0_268_add_4_5 (.A0(count0[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count0[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2234), .COUT(n2235), .S0(n42), .S1(n41));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(56[20:26])
    defparam count0_268_add_4_5.INIT0 = 16'hfaaa;
    defparam count0_268_add_4_5.INIT1 = 16'hfaaa;
    defparam count0_268_add_4_5.INJECT1_0 = "NO";
    defparam count0_268_add_4_5.INJECT1_1 = "NO";
    FD1S3IX count0_268__i0 (.D(n45), .CK(clk_c), .CD(n1579), .Q(count0[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(56[20:26])
    defparam count0_268__i0.GSR = "DISABLED";
    FD1P3IX duty_pulse_269__i0 (.D(n15), .SP(clk_c_enable_8), .CD(GND_net), 
            .CK(clk_c), .Q(duty_pulse[0]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(157[3] 168[9])
    defparam duty_pulse_269__i0.GSR = "ENABLED";
    LUT4 cnt2_16__I_0_111_i33_2_lut_rep_27 (.A(cnt2[16]), .B(cnt1[16]), 
         .Z(n2547)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam cnt2_16__I_0_111_i33_2_lut_rep_27.init = 16'h6666;
    LUT4 cnt2_16__I_0_111_i20_3_lut_3_lut (.A(cnt2[16]), .B(cnt1[16]), .C(n10), 
         .Z(n20)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam cnt2_16__I_0_111_i20_3_lut_3_lut.init = 16'hd4d4;
    CCU2D count0_268_add_4_3 (.A0(count0[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count0[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2233), .COUT(n2234), .S0(n44), .S1(n43));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(56[20:26])
    defparam count0_268_add_4_3.INIT0 = 16'hfaaa;
    defparam count0_268_add_4_3.INIT1 = 16'hfaaa;
    defparam count0_268_add_4_3.INJECT1_0 = "NO";
    defparam count0_268_add_4_3.INJECT1_1 = "NO";
    CCU2D count0_268_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count0[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2233), .S1(n45));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(56[20:26])
    defparam count0_268_add_4_1.INIT0 = 16'hF000;
    defparam count0_268_add_4_1.INIT1 = 16'h0555;
    defparam count0_268_add_4_1.INJECT1_0 = "NO";
    defparam count0_268_add_4_1.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(rst_n_c));
    CCU2D cnt2_270_add_4_17 (.A0(direction), .B0(cnt2_16__N_146), .C0(cnt2[15]), 
          .D0(GND_net), .A1(direction), .B1(cnt2_16__N_146), .C1(cnt2[16]), 
          .D1(GND_net), .CIN(n2231), .S0(n75), .S1(n74));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270_add_4_17.INIT0 = 16'h1e1e;
    defparam cnt2_270_add_4_17.INIT1 = 16'h1e1e;
    defparam cnt2_270_add_4_17.INJECT1_0 = "NO";
    defparam cnt2_270_add_4_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(n895), .B(n896), .Z(n14_adj_218)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1P3IX cnt2_270__i0 (.D(n90), .SP(clk_c_enable_35), .CD(n1904), .CK(clk_c), 
            .Q(cnt2[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270__i0.GSR = "ENABLED";
    CCU2D sub_233_add_2_18 (.A0(cnt2[16]), .B0(cnt2_16__N_147[16]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt2_16__N_147[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2169), .COUT(n2170));
    defparam sub_233_add_2_18.INIT0 = 16'h5999;
    defparam sub_233_add_2_18.INIT1 = 16'hf555;
    defparam sub_233_add_2_18.INJECT1_0 = "NO";
    defparam sub_233_add_2_18.INJECT1_1 = "NO";
    CCU2D add_113_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(duty_pulse[0]), .B1(duty_pulse[1]), .C1(cnt1[3]), .D1(GND_net), 
          .COUT(n2148), .S1(n520));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[16:20])
    defparam add_113_1.INIT0 = 16'hF000;
    defparam add_113_1.INIT1 = 16'he1e1;
    defparam add_113_1.INJECT1_0 = "NO";
    defparam add_113_1.INJECT1_1 = "NO";
    LUT4 i10_4_lut (.A(n890), .B(n897), .C(n900), .D(n14_adj_218), .Z(n23)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i287_2_lut_3_lut (.A(direction), .B(cnt2_16__N_146), .C(rst_n_c), 
         .Z(n1235)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam i287_2_lut_3_lut.init = 16'h1010;
    LUT4 cnt1_16__I_0_105_i15_4_lut (.A(n509), .B(cycle[14]), .C(n2535), 
         .D(n908), .Z(cnt1_16__N_1[14])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[5] 85[12])
    defparam cnt1_16__I_0_105_i15_4_lut.init = 16'hcac0;
    CCU2D cnt2_270_add_4_15 (.A0(direction), .B0(cnt2_16__N_146), .C0(cnt2[13]), 
          .D0(GND_net), .A1(direction), .B1(cnt2_16__N_146), .C1(cnt2[14]), 
          .D1(GND_net), .CIN(n2230), .COUT(n2231), .S0(n77), .S1(n76));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270_add_4_15.INIT0 = 16'h1e1e;
    defparam cnt2_270_add_4_15.INIT1 = 16'h1e1e;
    defparam cnt2_270_add_4_15.INJECT1_0 = "NO";
    defparam cnt2_270_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt2_270_add_4_13 (.A0(direction), .B0(cnt2_16__N_146), .C0(cnt2[11]), 
          .D0(GND_net), .A1(direction), .B1(cnt2_16__N_146), .C1(cnt2[12]), 
          .D1(GND_net), .CIN(n2229), .COUT(n2230), .S0(n79), .S1(n78));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270_add_4_13.INIT0 = 16'h1e1e;
    defparam cnt2_270_add_4_13.INIT1 = 16'h1e1e;
    defparam cnt2_270_add_4_13.INJECT1_0 = "NO";
    defparam cnt2_270_add_4_13.INJECT1_1 = "NO";
    LUT4 cnt2_16__I_0_111_i15_2_lut_rep_31 (.A(cnt2[7]), .B(cnt1[7]), .Z(n2551)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam cnt2_16__I_0_111_i15_2_lut_rep_31.init = 16'h6666;
    CCU2D cnt2_270_add_4_11 (.A0(direction), .B0(cnt2_16__N_146), .C0(cnt2[9]), 
          .D0(GND_net), .A1(direction), .B1(cnt2_16__N_146), .C1(cnt2[10]), 
          .D1(GND_net), .CIN(n2228), .COUT(n2229), .S0(n81), .S1(n80));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270_add_4_11.INIT0 = 16'h1e1e;
    defparam cnt2_270_add_4_11.INIT1 = 16'h1e1e;
    defparam cnt2_270_add_4_11.INJECT1_0 = "NO";
    defparam cnt2_270_add_4_11.INJECT1_1 = "NO";
    LUT4 i1097_2_lut_3_lut_4_lut (.A(cnt2[7]), .B(cnt1[7]), .C(cnt1[11]), 
         .D(cnt2[11]), .Z(n2459)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam i1097_2_lut_3_lut_4_lut.init = 16'h9009;
    CCU2D cnt2_270_add_4_9 (.A0(direction), .B0(cnt2_16__N_146), .C0(cnt2[7]), 
          .D0(GND_net), .A1(direction), .B1(cnt2_16__N_146), .C1(cnt2[8]), 
          .D1(GND_net), .CIN(n2227), .COUT(n2228), .S0(n83), .S1(n82));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270_add_4_9.INIT0 = 16'h1e1e;
    defparam cnt2_270_add_4_9.INIT1 = 16'h1e1e;
    defparam cnt2_270_add_4_9.INJECT1_0 = "NO";
    defparam cnt2_270_add_4_9.INJECT1_1 = "NO";
    LUT4 cnt2_16__I_0_111_i10_4_lut (.A(cnt1[3]), .B(cnt1[4]), .C(cnt2[4]), 
         .D(cnt2[3]), .Z(n10)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam cnt2_16__I_0_111_i10_4_lut.init = 16'h0c8e;
    LUT4 i8_4_lut (.A(n899), .B(n902), .C(n891), .D(n893), .Z(n21)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    CCU2D cnt2_270_add_4_7 (.A0(direction), .B0(cnt2_16__N_146), .C0(cnt2[5]), 
          .D0(GND_net), .A1(direction), .B1(cnt2_16__N_146), .C1(cnt2[6]), 
          .D1(GND_net), .CIN(n2226), .COUT(n2227), .S0(n85), .S1(n84));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270_add_4_7.INIT0 = 16'h1e1e;
    defparam cnt2_270_add_4_7.INIT1 = 16'h1e1e;
    defparam cnt2_270_add_4_7.INJECT1_0 = "NO";
    defparam cnt2_270_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt2_270_add_4_5 (.A0(direction), .B0(cnt2_16__N_146), .C0(cnt2[3]), 
          .D0(GND_net), .A1(direction), .B1(cnt2_16__N_146), .C1(cnt2[4]), 
          .D1(GND_net), .CIN(n2225), .COUT(n2226), .S0(n87), .S1(n86));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270_add_4_5.INIT0 = 16'h1e1e;
    defparam cnt2_270_add_4_5.INIT1 = 16'h1e1e;
    defparam cnt2_270_add_4_5.INJECT1_0 = "NO";
    defparam cnt2_270_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt2_270_add_4_3 (.A0(direction), .B0(cnt2_16__N_146), .C0(cnt2[1]), 
          .D0(GND_net), .A1(direction), .B1(cnt2_16__N_146), .C1(cnt2[2]), 
          .D1(GND_net), .CIN(n2224), .COUT(n2225), .S0(n89), .S1(n88));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270_add_4_3.INIT0 = 16'h1e1e;
    defparam cnt2_270_add_4_3.INIT1 = 16'h1e1e;
    defparam cnt2_270_add_4_3.INJECT1_0 = "NO";
    defparam cnt2_270_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt2_270_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt2[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2224), .S1(n90));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270_add_4_1.INIT0 = 16'hF000;
    defparam cnt2_270_add_4_1.INIT1 = 16'h0555;
    defparam cnt2_270_add_4_1.INJECT1_0 = "NO";
    defparam cnt2_270_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_232_add_2_19 (.A0(cnt1_16__N_77[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2223), .S1(cnt1_16__N_76));
    defparam sub_232_add_2_19.INIT0 = 16'h5555;
    defparam sub_232_add_2_19.INIT1 = 16'h0000;
    defparam sub_232_add_2_19.INJECT1_0 = "NO";
    defparam sub_232_add_2_19.INJECT1_1 = "NO";
    LUT4 i624_2_lut_3_lut (.A(direction), .B(cnt2_16__N_146), .C(n2420), 
         .Z(direction_N_180)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam i624_2_lut_3_lut.init = 16'he0e0;
    CCU2D sub_232_add_2_17 (.A0(cnt1_16__N_77[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1_16__N_77[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2222), .COUT(n2223));
    defparam sub_232_add_2_17.INIT0 = 16'hf555;
    defparam sub_232_add_2_17.INIT1 = 16'hf555;
    defparam sub_232_add_2_17.INJECT1_0 = "NO";
    defparam sub_232_add_2_17.INJECT1_1 = "NO";
    LUT4 i1133_4_lut (.A(n2547), .B(n2549), .C(n2548), .D(n17), .Z(n2485)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam i1133_4_lut.init = 16'haaab;
    LUT4 cnt2_16__I_0_111_i19_2_lut_rep_28 (.A(cnt2[9]), .B(cnt1[9]), .Z(n2548)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam cnt2_16__I_0_111_i19_2_lut_rep_28.init = 16'h6666;
    CCU2D sub_233_add_2_16 (.A0(cnt2[14]), .B0(cnt2_16__N_147[14]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt2[15]), .B1(cnt2_16__N_147[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2168), .COUT(n2169));
    defparam sub_233_add_2_16.INIT0 = 16'h5999;
    defparam sub_233_add_2_16.INIT1 = 16'h5999;
    defparam sub_233_add_2_16.INJECT1_0 = "NO";
    defparam sub_233_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_14 (.A0(cnt2[12]), .B0(cnt2_16__N_147[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt2[13]), .B1(cnt2_16__N_147[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2167), .COUT(n2168));
    defparam sub_233_add_2_14.INIT0 = 16'h5999;
    defparam sub_233_add_2_14.INIT1 = 16'h5999;
    defparam sub_233_add_2_14.INJECT1_0 = "NO";
    defparam sub_233_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_232_add_2_15 (.A0(cnt1[16]), .B0(cnt1_16__N_77[16]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1_16__N_77[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2221), .COUT(n2222));
    defparam sub_232_add_2_15.INIT0 = 16'h5999;
    defparam sub_232_add_2_15.INIT1 = 16'hf555;
    defparam sub_232_add_2_15.INJECT1_0 = "NO";
    defparam sub_232_add_2_15.INJECT1_1 = "NO";
    LUT4 i667_2_lut (.A(cycle_pulse[0]), .B(cycle[12]), .Z(cycle[14])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(93[1] 98[10])
    defparam i667_2_lut.init = 16'h2222;
    CCU2D sub_232_add_2_13 (.A0(cnt1[14]), .B0(cnt1_16__N_77[14]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[15]), .B1(cnt1_16__N_77[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2220), .COUT(n2221));
    defparam sub_232_add_2_13.INIT0 = 16'h5999;
    defparam sub_232_add_2_13.INIT1 = 16'h5999;
    defparam sub_232_add_2_13.INJECT1_0 = "NO";
    defparam sub_232_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_232_add_2_11 (.A0(cnt1[12]), .B0(cnt1_16__N_77[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[13]), .B1(cnt1_16__N_77[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2219), .COUT(n2220));
    defparam sub_232_add_2_11.INIT0 = 16'h5999;
    defparam sub_232_add_2_11.INIT1 = 16'h5999;
    defparam sub_232_add_2_11.INJECT1_0 = "NO";
    defparam sub_232_add_2_11.INJECT1_1 = "NO";
    LUT4 menu_state_I_0_1_lut (.A(menu_state_c), .Z(menu_state_N_170)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(133[18:32])
    defparam menu_state_I_0_1_lut.init = 16'h5555;
    CCU2D sub_232_add_2_9 (.A0(cnt1[10]), .B0(cnt1_16__N_77[10]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[11]), .B1(cnt1_16__N_77[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2218), .COUT(n2219));
    defparam sub_232_add_2_9.INIT0 = 16'h5999;
    defparam sub_232_add_2_9.INIT1 = 16'h5999;
    defparam sub_232_add_2_9.INJECT1_0 = "NO";
    defparam sub_232_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_12 (.A0(cnt2[10]), .B0(cnt2_16__N_147[10]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt2[11]), .B1(cnt2_16__N_147[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2166), .COUT(n2167));
    defparam sub_233_add_2_12.INIT0 = 16'h5999;
    defparam sub_233_add_2_12.INIT1 = 16'h5999;
    defparam sub_233_add_2_12.INJECT1_0 = "NO";
    defparam sub_233_add_2_12.INJECT1_1 = "NO";
    LUT4 cnt1_16__I_0_105_i13_4_lut (.A(n511), .B(cycle[12]), .C(n2535), 
         .D(n908), .Z(cnt1_16__N_1[12])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[5] 85[12])
    defparam cnt1_16__I_0_105_i13_4_lut.init = 16'hcac0;
    LUT4 cnt1_16__I_0_105_i12_4_lut (.A(n512), .B(n2554), .C(n2535), .D(n908), 
         .Z(cnt1_16__N_1[11])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[5] 85[12])
    defparam cnt1_16__I_0_105_i12_4_lut.init = 16'hcac0;
    LUT4 cnt1_16__I_0_105_i11_4_lut (.A(n513), .B(cycle[16]), .C(n2535), 
         .D(n908), .Z(cnt1_16__N_1[10])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[5] 85[12])
    defparam cnt1_16__I_0_105_i11_4_lut.init = 16'h3a30;
    CCU2D sub_232_add_2_7 (.A0(cnt1[8]), .B0(cnt1_16__N_77[8]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[9]), .B1(cnt1_16__N_77[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2217), .COUT(n2218));
    defparam sub_232_add_2_7.INIT0 = 16'h5999;
    defparam sub_232_add_2_7.INIT1 = 16'h5999;
    defparam sub_232_add_2_7.INJECT1_0 = "NO";
    defparam sub_232_add_2_7.INJECT1_1 = "NO";
    LUT4 cnt1_16__I_0_105_i10_4_lut (.A(n514), .B(cycle[12]), .C(n2535), 
         .D(n908), .Z(cnt1_16__N_1[9])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[5] 85[12])
    defparam cnt1_16__I_0_105_i10_4_lut.init = 16'h3a30;
    LUT4 i1_2_lut_4_lut_adj_7 (.A(n2420), .B(clk_c_enable_35), .C(n2536), 
         .D(n77), .Z(n1497)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam i1_2_lut_4_lut_adj_7.init = 16'hbf00;
    CCU2D sub_232_add_2_5 (.A0(cnt1[6]), .B0(cnt1_16__N_77[6]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[7]), .B1(cnt1_16__N_77[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2216), .COUT(n2217));
    defparam sub_232_add_2_5.INIT0 = 16'h5999;
    defparam sub_232_add_2_5.INIT1 = 16'h5999;
    defparam sub_232_add_2_5.INJECT1_0 = "NO";
    defparam sub_232_add_2_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_17_2_lut (.A(clk0), .B(n1579), .Z(clk_c_enable_35)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(118[23:31])
    defparam i1_2_lut_rep_17_2_lut.init = 16'h4444;
    LUT4 cnt2_16__I_0_111_i16_3_lut_3_lut (.A(cnt2[9]), .B(cnt1[9]), .C(cnt1[8]), 
         .Z(n16)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam cnt2_16__I_0_111_i16_3_lut_3_lut.init = 16'hd4d4;
    PFUMX cnt2_16__I_0_111_i32 (.BLUT(n18), .ALUT(n20), .C0(n2485), .Z(n32));
    CCU2D sub_233_add_2_10 (.A0(cnt2[8]), .B0(cnt2_16__N_147[8]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt2[9]), .B1(cnt2_16__N_147[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2165), .COUT(n2166));
    defparam sub_233_add_2_10.INIT0 = 16'h5999;
    defparam sub_233_add_2_10.INIT1 = 16'h5999;
    defparam sub_233_add_2_10.INJECT1_0 = "NO";
    defparam sub_233_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_17 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2131), .S0(cnt1_16__N_77[18]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[15:20])
    defparam sub_117_add_2_17.INIT0 = 16'hffff;
    defparam sub_117_add_2_17.INIT1 = 16'h0000;
    defparam sub_117_add_2_17.INJECT1_0 = "NO";
    defparam sub_117_add_2_17.INJECT1_1 = "NO";
    LUT4 cnt1_16__I_0_105_i9_4_lut (.A(n515), .B(n2554), .C(n2535), .D(n908), 
         .Z(cnt1_16__N_1[8])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[5] 85[12])
    defparam cnt1_16__I_0_105_i9_4_lut.init = 16'h3a30;
    LUT4 cnt2_16__I_0_111_i21_2_lut_rep_29 (.A(cnt2[10]), .B(cnt1[10]), 
         .Z(n2549)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam cnt2_16__I_0_111_i21_2_lut_rep_29.init = 16'h6666;
    LUT4 cnt2_16__I_0_111_i18_3_lut_3_lut (.A(cnt2[10]), .B(cnt1[10]), .C(n16), 
         .Z(n18)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam cnt2_16__I_0_111_i18_3_lut_3_lut.init = 16'hd4d4;
    LUT4 cnt2_16__I_0_111_i13_2_lut_rep_30 (.A(cnt2[6]), .B(cnt1[6]), .Z(n2550)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam cnt2_16__I_0_111_i13_2_lut_rep_30.init = 16'h6666;
    CCU2D sub_233_add_2_8 (.A0(cnt2[6]), .B0(cnt2_16__N_147[6]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt2[7]), .B1(cnt2_16__N_147[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2164), .COUT(n2165));
    defparam sub_233_add_2_8.INIT0 = 16'h5999;
    defparam sub_233_add_2_8.INIT1 = 16'h5999;
    defparam sub_233_add_2_8.INJECT1_0 = "NO";
    defparam sub_233_add_2_8.INJECT1_1 = "NO";
    LUT4 cnt1_16__I_0_105_i8_4_lut (.A(n516), .B(cycle[16]), .C(n2535), 
         .D(n908), .Z(cnt1_16__N_1[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[5] 85[12])
    defparam cnt1_16__I_0_105_i8_4_lut.init = 16'hcac0;
    LUT4 cnt1_16__I_0_105_i7_4_lut (.A(n517), .B(cycle[15]), .C(n2535), 
         .D(n908), .Z(cnt1_16__N_1[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[5] 85[12])
    defparam cnt1_16__I_0_105_i7_4_lut.init = 16'hcac0;
    CCU2D sub_117_add_2_9 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2127), .COUT(n2128), .S0(cnt1_16__N_77[10]), 
          .S1(cnt1_16__N_77[11]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[15:20])
    defparam sub_117_add_2_9.INIT0 = 16'h8888;
    defparam sub_117_add_2_9.INIT1 = 16'h1111;
    defparam sub_117_add_2_9.INJECT1_0 = "NO";
    defparam sub_117_add_2_9.INJECT1_1 = "NO";
    LUT4 cnt1_16__I_0_105_i6_4_lut (.A(n518), .B(cycle[14]), .C(n2535), 
         .D(n908), .Z(cnt1_16__N_1[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[5] 85[12])
    defparam cnt1_16__I_0_105_i6_4_lut.init = 16'hcac0;
    CCU2D sub_232_add_2_3 (.A0(cnt1[4]), .B0(cnt1_16__N_77[4]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[5]), .B1(cnt1_16__N_77[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2215), .COUT(n2216));
    defparam sub_232_add_2_3.INIT0 = 16'h5999;
    defparam sub_232_add_2_3.INIT1 = 16'h5999;
    defparam sub_232_add_2_3.INJECT1_0 = "NO";
    defparam sub_232_add_2_3.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut (.A(cnt1_16__N_76), .B(n907), .C(n908), .D(n520), 
         .Z(cnt1_16__N_1[3])) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[8:41])
    defparam i2_3_lut_4_lut.init = 16'hd000;
    CCU2D sub_232_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt1[3]), .B1(cnt1_16__N_77[3]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2215));
    defparam sub_232_add_2_1.INIT0 = 16'h0000;
    defparam sub_232_add_2_1.INIT1 = 16'h5999;
    defparam sub_232_add_2_1.INJECT1_0 = "NO";
    defparam sub_232_add_2_1.INJECT1_1 = "NO";
    LUT4 i1_3_lut_3_lut_2_lut (.A(clk0), .B(n1579), .Z(clk0_N_177)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(118[23:31])
    defparam i1_3_lut_3_lut_2_lut.init = 16'h6666;
    LUT4 cnt1_16__I_0_105_i5_4_lut (.A(n519), .B(n2554), .C(n2535), .D(n908), 
         .Z(cnt1_16__N_1[4])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[5] 85[12])
    defparam cnt1_16__I_0_105_i5_4_lut.init = 16'h3a30;
    LUT4 cnt1_16__I_1_2_lut_rep_15 (.A(cnt1_16__N_76), .B(n907), .Z(n2535)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[8:41])
    defparam cnt1_16__I_1_2_lut_rep_15.init = 16'h2222;
    LUT4 i1134_4_lut (.A(n2547), .B(n2546), .C(n2545), .D(n2462), .Z(n2483)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam i1134_4_lut.init = 16'habaa;
    LUT4 i895_1_lut_rep_33 (.A(cycle_pulse[0]), .Z(n2553)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(144[3] 155[9])
    defparam i895_1_lut_rep_33.init = 16'h5555;
    LUT4 i668_2_lut_2_lut (.A(cycle_pulse[0]), .B(cycle[12]), .Z(cycle[15])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(144[3] 155[9])
    defparam i668_2_lut_2_lut.init = 16'h4444;
    LUT4 i1100_4_lut (.A(n2544), .B(n2543), .C(n2542), .D(n2449), .Z(n2462)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam i1100_4_lut.init = 16'h0001;
    FD1S3IX count0_268__i7 (.D(n38), .CK(clk_c), .CD(n1579), .Q(count0[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(56[20:26])
    defparam count0_268__i7.GSR = "DISABLED";
    LUT4 i709_2_lut_rep_34 (.A(cycle_pulse[0]), .B(cycle[12]), .Z(n2554)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i709_2_lut_rep_34.init = 16'heeee;
    LUT4 i1087_4_lut (.A(n2549), .B(n2548), .C(n17), .D(n2438), .Z(n2449)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam i1087_4_lut.init = 16'h0001;
    LUT4 i1076_4_lut (.A(n2551), .B(n2550), .C(cnt2[5]), .D(cnt1[5]), 
         .Z(n2438)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam i1076_4_lut.init = 16'h1001;
    LUT4 cnt2_16__I_0_111_i17_2_lut (.A(cnt2[8]), .B(cnt1[8]), .Z(n17)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam cnt2_16__I_0_111_i17_2_lut.init = 16'h6666;
    LUT4 pulse_out_I_0_1_lut (.A(pulse_out_N_174), .Z(pulse_out_N_173)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[6] 122[13])
    defparam pulse_out_I_0_1_lut.init = 16'h5555;
    LUT4 i2_3_lut_4_lut_3_lut (.A(cycle_pulse[0]), .B(cycle[12]), .C(n2540), 
         .Z(n2284)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !((C)+!B)) */ ;
    defparam i2_3_lut_4_lut_3_lut.init = 16'h8686;
    LUT4 i1_2_lut_rep_19_3_lut_4_lut (.A(cycle_pulse[0]), .B(cycle[12]), 
         .C(n2555), .D(key_down1_ls), .Z(n2539)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam i1_2_lut_rep_19_3_lut_4_lut.init = 16'h0e00;
    LUT4 i1_2_lut_4_lut_adj_8 (.A(n2420), .B(clk_c_enable_35), .C(n2536), 
         .D(n75), .Z(n1493)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam i1_2_lut_4_lut_adj_8.init = 16'hbf00;
    LUT4 i1_2_lut_4_lut_adj_9 (.A(n2420), .B(clk_c_enable_35), .C(n2536), 
         .D(n78), .Z(n1499)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam i1_2_lut_4_lut_adj_9.init = 16'hbf00;
    LUT4 i1135_4_lut (.A(n2545), .B(n2544), .C(n2543), .D(n2459), .Z(n2492)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam i1135_4_lut.init = 16'hefee;
    LUT4 i699_4_lut (.A(n1799), .B(menu_state_c), .C(n2538), .D(n407), 
         .Z(clk_c_enable_8)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;
    defparam i699_4_lut.init = 16'hc4c0;
    LUT4 i1_2_lut_4_lut_adj_10 (.A(n2420), .B(clk_c_enable_35), .C(n2536), 
         .D(n79), .Z(n1501)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam i1_2_lut_4_lut_adj_10.init = 16'hbf00;
    LUT4 i653_2_lut (.A(duty_pulse[1]), .B(duty_pulse[0]), .Z(n1799)) /* synthesis lut_function=(A (B)) */ ;
    defparam i653_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_4_lut_adj_11 (.A(n2420), .B(clk_c_enable_35), .C(n2536), 
         .D(n80), .Z(n1503)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam i1_2_lut_4_lut_adj_11.init = 16'hbf00;
    LUT4 i1_2_lut_4_lut_adj_12 (.A(n2420), .B(clk_c_enable_35), .C(n2536), 
         .D(n76), .Z(n1495)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam i1_2_lut_4_lut_adj_12.init = 16'hbf00;
    LUT4 i3_4_lut (.A(count0[3]), .B(count0[7]), .C(count0[6]), .D(n2431), 
         .Z(n1579)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0080;
    LUT4 i680_2_lut_4_lut (.A(n2420), .B(clk_c_enable_35), .C(n2536), 
         .D(n84), .Z(n1511)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam i680_2_lut_4_lut.init = 16'hbf00;
    PFUMX cnt1_16__I_0_105_i14 (.BLUT(cnt1_16__N_58[13]), .ALUT(cycle[13]), 
          .C0(n2535), .Z(cnt1_16__N_1[13]));
    LUT4 i683_2_lut_4_lut (.A(n2420), .B(clk_c_enable_35), .C(n2536), 
         .D(n81), .Z(n1505)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam i683_2_lut_4_lut.init = 16'hbf00;
    LUT4 i682_2_lut_4_lut (.A(n2420), .B(clk_c_enable_35), .C(n2536), 
         .D(n82), .Z(n1507)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam i682_2_lut_4_lut.init = 16'hbf00;
    LUT4 i2_3_lut_3_lut_4_lut (.A(key_down1_ls), .B(n2555), .C(duty_pulse[1]), 
         .D(duty_pulse[0]), .Z(n2283)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A (C (D)+!C !(D)))) */ ;
    defparam i2_3_lut_3_lut_4_lut.init = 16'h2dd0;
    LUT4 i2_4_lut (.A(cnt2[10]), .B(n4), .C(n8), .D(cnt2[1]), .Z(n2420)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(cnt2[4]), .B(n2418), .C(n6), .D(cnt2[6]), .Z(n4)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i3_3_lut (.A(cnt2[0]), .B(cnt2[16]), .C(cnt2[2]), .Z(n8)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i3_3_lut.init = 16'hfdfd;
    LUT4 i7_4_lut (.A(cnt2[9]), .B(n14_adj_219), .C(n10_adj_220), .D(cnt2[14]), 
         .Z(n2418)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(cnt2[5]), .B(cnt2[8]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_rep_18_4_lut (.A(key_down1_ls), .B(n2555), .C(duty_pulse[1]), 
         .D(duty_pulse[0]), .Z(n2538)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam i1_3_lut_rep_18_4_lut.init = 16'h2220;
    LUT4 i1068_4_lut (.A(count0[5]), .B(count0[2]), .C(count0[4]), .D(n2425), 
         .Z(n2431)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1068_4_lut.init = 16'hfffe;
    LUT4 i681_2_lut_4_lut (.A(n2420), .B(clk_c_enable_35), .C(n2536), 
         .D(n83), .Z(n1509)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam i681_2_lut_4_lut.init = 16'hbf00;
    LUT4 i1062_2_lut (.A(count0[1]), .B(count0[0]), .Z(n2425)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1062_2_lut.init = 16'heeee;
    CCU2D sub_117_add_2_15 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2130), .COUT(n2131), .S0(cnt1_16__N_77[16]), .S1(cnt1_16__N_77[17]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[15:20])
    defparam sub_117_add_2_15.INIT0 = 16'h7777;
    defparam sub_117_add_2_15.INIT1 = 16'hffff;
    defparam sub_117_add_2_15.INJECT1_0 = "NO";
    defparam sub_117_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_7 (.A0(duty_pulse[0]), .B0(duty_pulse[1]), .C0(n2554), 
          .D0(GND_net), .A1(cycle[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2126), .COUT(n2127), .S0(cnt1_16__N_77[8]), 
          .S1(cnt1_16__N_77[9]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[15:20])
    defparam sub_117_add_2_7.INIT0 = 16'h8878;
    defparam sub_117_add_2_7.INIT1 = 16'haaaa;
    defparam sub_117_add_2_7.INJECT1_0 = "NO";
    defparam sub_117_add_2_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_13 (.A(cnt1[3]), .B(n23), .C(n21), .D(n22_adj_221), 
         .Z(n908)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_13.init = 16'hfffe;
    LUT4 i1127_4_lut_4_lut (.A(n2546), .B(n2473), .C(n26), .D(n12), 
         .Z(n28)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(119[10:19])
    defparam i1127_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i6_4_lut (.A(cnt2[12]), .B(cnt2[3]), .C(cnt2[13]), .D(cnt2[7]), 
         .Z(n14_adj_219)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut_adj_14 (.A(cnt2[15]), .B(cnt2[11]), .Z(n10_adj_220)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam i2_2_lut_adj_14.init = 16'heeee;
    LUT4 i317_2_lut (.A(cycle_pulse[0]), .B(cycle[12]), .Z(cycle[13])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(93[1] 98[10])
    defparam i317_2_lut.init = 16'h9999;
    VHI i1145 (.Z(VCC_net));
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2D sub_117_add_2_13 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cycle[12]), .B1(cycle_pulse[0]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2129), .COUT(n2130), .S0(cnt1_16__N_77[14]), 
          .S1(cnt1_16__N_77[15]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[15:20])
    defparam sub_117_add_2_13.INIT0 = 16'hdddd;
    defparam sub_117_add_2_13.INIT1 = 16'hdddd;
    defparam sub_117_add_2_13.INJECT1_0 = "NO";
    defparam sub_117_add_2_13.INJECT1_1 = "NO";
    INV i1147 (.A(clk0), .Z(clk0__inv));
    CCU2D sub_233_add_2_6 (.A0(cnt2[4]), .B0(cnt2_16__N_147[4]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt2[5]), .B1(cnt2_16__N_147[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2163), .COUT(n2164));
    defparam sub_233_add_2_6.INIT0 = 16'h5999;
    defparam sub_233_add_2_6.INIT1 = 16'h5999;
    defparam sub_233_add_2_6.INJECT1_0 = "NO";
    defparam sub_233_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_4 (.A0(cnt2[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt2[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2162), 
          .COUT(n2163));
    defparam sub_233_add_2_4.INIT0 = 16'h5aaa;
    defparam sub_233_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_233_add_2_4.INJECT1_0 = "NO";
    defparam sub_233_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_2 (.A0(cnt2[0]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt2[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2162));
    defparam sub_233_add_2_2.INIT0 = 16'h5000;
    defparam sub_233_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_233_add_2_2.INJECT1_0 = "NO";
    defparam sub_233_add_2_2.INJECT1_1 = "NO";
    FD1S3IX count0_268__i6 (.D(n39), .CK(clk_c), .CD(n1579), .Q(count0[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(56[20:26])
    defparam count0_268__i6.GSR = "DISABLED";
    FD1S3IX count0_268__i5 (.D(n40), .CK(clk_c), .CD(n1579), .Q(count0[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(56[20:26])
    defparam count0_268__i5.GSR = "DISABLED";
    FD1S3IX count0_268__i4 (.D(n41), .CK(clk_c), .CD(n1579), .Q(count0[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(56[20:26])
    defparam count0_268__i4.GSR = "DISABLED";
    FD1S3IX count0_268__i3 (.D(n42), .CK(clk_c), .CD(n1579), .Q(count0[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(56[20:26])
    defparam count0_268__i3.GSR = "DISABLED";
    FD1S3IX count0_268__i2 (.D(n43), .CK(clk_c), .CD(n1579), .Q(count0[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(56[20:26])
    defparam count0_268__i2.GSR = "DISABLED";
    FD1S3IX count0_268__i1 (.D(n44), .CK(clk_c), .CD(n1579), .Q(count0[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(56[20:26])
    defparam count0_268__i1.GSR = "DISABLED";
    FD1P3AX cnt2_270__i16 (.D(n1491), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt2[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270__i16.GSR = "ENABLED";
    CCU2D add_267_15 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2267), 
          .S0(cnt2_16__N_147[17]), .S1(cnt2_16__N_166));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(103[18:23])
    defparam add_267_15.INIT0 = 16'hffff;
    defparam add_267_15.INIT1 = 16'h0000;
    defparam add_267_15.INJECT1_0 = "NO";
    defparam add_267_15.INJECT1_1 = "NO";
    CCU2D add_267_13 (.A0(cycle[12]), .B0(cycle_pulse[0]), .C0(GND_net), 
          .D0(GND_net), .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2266), .COUT(n2267), .S0(cnt2_16__N_147[15]), 
          .S1(cnt2_16__N_147[16]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(103[18:23])
    defparam add_267_13.INIT0 = 16'hdddd;
    defparam add_267_13.INIT1 = 16'h7777;
    defparam add_267_13.INJECT1_0 = "NO";
    defparam add_267_13.INJECT1_1 = "NO";
    CCU2D add_267_11 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2265), .COUT(n2266), .S0(cnt2_16__N_147[13]), 
          .S1(cnt2_16__N_147[14]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(103[18:23])
    defparam add_267_11.INIT0 = 16'h6666;
    defparam add_267_11.INIT1 = 16'hdddd;
    defparam add_267_11.INJECT1_0 = "NO";
    defparam add_267_11.INJECT1_1 = "NO";
    CCU2D add_267_9 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cycle[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2264), .COUT(n2265), .S0(cnt2_16__N_147[11]), 
          .S1(cnt2_16__N_147[12]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(103[18:23])
    defparam add_267_9.INIT0 = 16'h1111;
    defparam add_267_9.INIT1 = 16'h5555;
    defparam add_267_9.INJECT1_0 = "NO";
    defparam add_267_9.INJECT1_1 = "NO";
    FD1P3AX cnt2_270__i15 (.D(n1493), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt2[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270__i15.GSR = "ENABLED";
    FD1P3AX cnt2_270__i14 (.D(n1495), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt2[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270__i14.GSR = "ENABLED";
    FD1P3AX cnt2_270__i13 (.D(n1497), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt2[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270__i13.GSR = "ENABLED";
    FD1P3AX cnt2_270__i12 (.D(n1499), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt2[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270__i12.GSR = "ENABLED";
    FD1P3AX cnt2_270__i11 (.D(n1501), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt2[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270__i11.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i16 (.D(cnt1_16__N_1[16]), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt1[16]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(79[5] 86[10])
    defparam cnt1_i0_i16.GSR = "ENABLED";
    FD1P3AX cnt2_270__i10 (.D(n1503), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt2[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270__i10.GSR = "ENABLED";
    FD1P3AX cnt2_270__i9 (.D(n1505), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt2[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270__i9.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i15 (.D(cnt1_16__N_1[15]), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt1[15]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(79[5] 86[10])
    defparam cnt1_i0_i15.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i14 (.D(cnt1_16__N_1[14]), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt1[14]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(79[5] 86[10])
    defparam cnt1_i0_i14.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i13 (.D(cnt1_16__N_1[13]), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt1[13]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(79[5] 86[10])
    defparam cnt1_i0_i13.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i12 (.D(cnt1_16__N_1[12]), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt1[12]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(79[5] 86[10])
    defparam cnt1_i0_i12.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i11 (.D(cnt1_16__N_1[11]), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt1[11]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(79[5] 86[10])
    defparam cnt1_i0_i11.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i10 (.D(cnt1_16__N_1[10]), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt1[10]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(79[5] 86[10])
    defparam cnt1_i0_i10.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i9 (.D(cnt1_16__N_1[9]), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt1[9]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(79[5] 86[10])
    defparam cnt1_i0_i9.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i8 (.D(cnt1_16__N_1[8]), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt1[8]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(79[5] 86[10])
    defparam cnt1_i0_i8.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i7 (.D(cnt1_16__N_1[7]), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt1[7]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(79[5] 86[10])
    defparam cnt1_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i6 (.D(cnt1_16__N_1[6]), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt1[6]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(79[5] 86[10])
    defparam cnt1_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i5 (.D(cnt1_16__N_1[5]), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt1[5]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(79[5] 86[10])
    defparam cnt1_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt1_i0_i4 (.D(cnt1_16__N_1[4]), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt1[4]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(79[5] 86[10])
    defparam cnt1_i0_i4.GSR = "ENABLED";
    CCU2D add_267_7 (.A0(cycle[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2263), .COUT(n2264), .S0(cnt2_16__N_147[9]), .S1(cnt2_16__N_147[10]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(103[18:23])
    defparam add_267_7.INIT0 = 16'haaaa;
    defparam add_267_7.INIT1 = 16'h8888;
    defparam add_267_7.INJECT1_0 = "NO";
    defparam add_267_7.INJECT1_1 = "NO";
    FD1P3AX cnt2_270__i8 (.D(n1507), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt2[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270__i8.GSR = "ENABLED";
    CCU2D add_267_5 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2262), .COUT(n2263), .S0(cnt2_16__N_147[7]), 
          .S1(cnt2_16__N_147[8]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(103[18:23])
    defparam add_267_5.INIT0 = 16'h7777;
    defparam add_267_5.INIT1 = 16'heeee;
    defparam add_267_5.INJECT1_0 = "NO";
    defparam add_267_5.INJECT1_1 = "NO";
    FD1P3AX cnt2_270__i7 (.D(n1509), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt2[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270__i7.GSR = "ENABLED";
    FD1P3AX cnt2_270__i6 (.D(n1511), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt2[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270__i6.GSR = "ENABLED";
    FD1P3AX cnt2_270__i5 (.D(n1513), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt2[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270__i5.GSR = "ENABLED";
    FD1P3AX cnt2_270__i4 (.D(n105), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(cnt2[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(99[5] 112[9])
    defparam cnt2_270__i4.GSR = "ENABLED";
    CCU2D add_267_3 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cycle[12]), .B1(cycle_pulse[0]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2261), .COUT(n2262), .S0(cnt2_16__N_147[5]), 
          .S1(cnt2_16__N_147[6]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(103[18:23])
    defparam add_267_3.INIT0 = 16'hdddd;
    defparam add_267_3.INIT1 = 16'hdddd;
    defparam add_267_3.INJECT1_0 = "NO";
    defparam add_267_3.INJECT1_1 = "NO";
    CCU2D add_267_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2261), .S1(cnt2_16__N_147[4]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(103[18:23])
    defparam add_267_1.INIT0 = 16'hF000;
    defparam add_267_1.INIT1 = 16'heeee;
    defparam add_267_1.INJECT1_0 = "NO";
    defparam add_267_1.INJECT1_1 = "NO";
    CycleSampler P3 (.GND_net(GND_net), .clk_c(clk_c), .n2555(n2555), 
            .key_down1_ls(key_down1_ls), .n2540(n2540), .key_down_c(key_down_c));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(46[4:16])
    CCU2D sub_117_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(duty_pulse[0]), .B1(duty_pulse[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2124), .S1(cnt1_16__N_77[3]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[15:20])
    defparam sub_117_add_2_1.INIT0 = 16'hF000;
    defparam sub_117_add_2_1.INIT1 = 16'h1111;
    defparam sub_117_add_2_1.INJECT1_0 = "NO";
    defparam sub_117_add_2_1.INJECT1_1 = "NO";
    CCU2D add_219_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2161), 
          .S0(n907));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[30:40])
    defparam add_219_cout.INIT0 = 16'h0000;
    defparam add_219_cout.INIT1 = 16'h0000;
    defparam add_219_cout.INJECT1_0 = "NO";
    defparam add_219_cout.INJECT1_1 = "NO";
    CCU2D add_219_13 (.A0(cycle[12]), .B0(cycle_pulse[0]), .C0(cnt1[15]), 
          .D0(GND_net), .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(cnt1[16]), 
          .D1(GND_net), .CIN(n2160), .COUT(n2161), .S0(n891), .S1(n890));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[30:40])
    defparam add_219_13.INIT0 = 16'h2d2d;
    defparam add_219_13.INIT1 = 16'h8787;
    defparam add_219_13.INJECT1_0 = "NO";
    defparam add_219_13.INJECT1_1 = "NO";
    CCU2D add_219_11 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(cnt1[13]), 
          .D0(GND_net), .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(cnt1[14]), 
          .D1(GND_net), .CIN(n2159), .COUT(n2160), .S0(n893), .S1(n892));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[30:40])
    defparam add_219_11.INIT0 = 16'h9696;
    defparam add_219_11.INIT1 = 16'h2d2d;
    defparam add_219_11.INJECT1_0 = "NO";
    defparam add_219_11.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_5 (.A0(cycle[12]), .B0(cycle_pulse[0]), .C0(duty_pulse[0]), 
          .D0(GND_net), .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(duty_pulse[1]), 
          .D1(duty_pulse[0]), .CIN(n2125), .COUT(n2126), .S0(cnt1_16__N_77[6]), 
          .S1(cnt1_16__N_77[7]));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[15:20])
    defparam sub_117_add_2_5.INIT0 = 16'hdd2d;
    defparam sub_117_add_2_5.INIT1 = 16'h7787;
    defparam sub_117_add_2_5.INJECT1_0 = "NO";
    defparam sub_117_add_2_5.INJECT1_1 = "NO";
    CCU2D add_219_9 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(cnt1[11]), 
          .D0(GND_net), .A1(cnt1[12]), .B1(cycle[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2158), .COUT(n2159), .S0(n895), .S1(n894));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[30:40])
    defparam add_219_9.INIT0 = 16'he1e1;
    defparam add_219_9.INIT1 = 16'h5999;
    defparam add_219_9.INJECT1_0 = "NO";
    defparam add_219_9.INJECT1_1 = "NO";
    CycleSampler_U1 P1 (.clk_c(clk_c), .GND_net(GND_net), .key_menu1(key_menu1), 
            .key_menu_c(key_menu_c));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(44[4:16])
    CycleSampler_U0 P2 (.key_up1_ls(key_up1_ls), .n407(n407), .GND_net(GND_net), 
            .clk_c(clk_c), .key_up_c(key_up_c), .n2541(n2541));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(45[4:16])
    CCU2D add_219_7 (.A0(cnt1[9]), .B0(cycle[12]), .C0(GND_net), .D0(GND_net), 
          .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(cnt1[10]), .D1(GND_net), 
          .CIN(n2157), .COUT(n2158), .S0(n897), .S1(n896));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[30:40])
    defparam add_219_7.INIT0 = 16'h5666;
    defparam add_219_7.INIT1 = 16'h7878;
    defparam add_219_7.INJECT1_0 = "NO";
    defparam add_219_7.INJECT1_1 = "NO";
    CCU2D add_219_5 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(cnt1[7]), 
          .D0(GND_net), .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(cnt1[8]), 
          .D1(GND_net), .CIN(n2156), .COUT(n2157), .S0(n899), .S1(n898));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[30:40])
    defparam add_219_5.INIT0 = 16'h8787;
    defparam add_219_5.INIT1 = 16'h1e1e;
    defparam add_219_5.INJECT1_0 = "NO";
    defparam add_219_5.INJECT1_1 = "NO";
    CCU2D add_219_3 (.A0(cycle_pulse[0]), .B0(cycle[12]), .C0(cnt1[5]), 
          .D0(GND_net), .A1(cycle[12]), .B1(cycle_pulse[0]), .C1(cnt1[6]), 
          .D1(GND_net), .CIN(n2155), .COUT(n2156), .S0(n901), .S1(n900));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[30:40])
    defparam add_219_3.INIT0 = 16'h2d2d;
    defparam add_219_3.INIT1 = 16'h2d2d;
    defparam add_219_3.INJECT1_0 = "NO";
    defparam add_219_3.INJECT1_1 = "NO";
    CCU2D add_219_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cycle_pulse[0]), .B1(cycle[12]), .C1(cnt1[4]), .D1(GND_net), 
          .COUT(n2155), .S1(n902));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(82[30:40])
    defparam add_219_1.INIT0 = 16'h0000;
    defparam add_219_1.INIT1 = 16'h1e1e;
    defparam add_219_1.INJECT1_0 = "NO";
    defparam add_219_1.INJECT1_1 = "NO";
    CCU2D add_113_15 (.A0(cnt1[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2154), 
          .S0(n507));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[16:20])
    defparam add_113_15.INIT0 = 16'h5aaa;
    defparam add_113_15.INIT1 = 16'h0000;
    defparam add_113_15.INJECT1_0 = "NO";
    defparam add_113_15.INJECT1_1 = "NO";
    CCU2D add_113_13 (.A0(cnt1[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt1[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2153), 
          .COUT(n2154), .S0(n509), .S1(n508));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[16:20])
    defparam add_113_13.INIT0 = 16'h5aaa;
    defparam add_113_13.INIT1 = 16'h5aaa;
    defparam add_113_13.INJECT1_0 = "NO";
    defparam add_113_13.INJECT1_1 = "NO";
    CCU2D add_113_11 (.A0(cnt1[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt1[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2152), 
          .COUT(n2153), .S0(n511), .S1(n510));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[16:20])
    defparam add_113_11.INIT0 = 16'h5aaa;
    defparam add_113_11.INIT1 = 16'h5aaa;
    defparam add_113_11.INJECT1_0 = "NO";
    defparam add_113_11.INJECT1_1 = "NO";
    CCU2D add_113_9 (.A0(cnt1[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt1[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2151), 
          .COUT(n2152), .S0(n513), .S1(n512));   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(84[16:20])
    defparam add_113_9.INIT0 = 16'h5aaa;
    defparam add_113_9.INIT1 = 16'h5aaa;
    defparam add_113_9.INJECT1_0 = "NO";
    defparam add_113_9.INJECT1_1 = "NO";
    
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
// Verilog Description of module CycleSampler
//

module CycleSampler (GND_net, clk_c, n2555, key_down1_ls, n2540, key_down_c);
    input GND_net;
    input clk_c;
    output n2555;
    input key_down1_ls;
    output n2540;
    input key_down_c;
    
    wire keysamplerpulse /* synthesis SET_AS_NETWORK=\P3/keysamplerpulse, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(17[8:23])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(9[6:9])
    
    wire n2171;
    wire [31:0]keysamplerpulsecnt;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(24[11:29])
    
    wire n2172;
    wire [2:0]keystore;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(18[8:16])
    
    wire btnstate_N_183;
    wire [31:0]n233;
    wire [31:0]n133;
    
    wire n2214, n2213, n2212, n2211, n2210, n2209, n2208, n2207, 
        n2206, n2205, n2204, n2203, n2202, n2201, n2200, n2199, 
        n2182, n2181, n2180, n2179, n2178, n2177, n2176, n2175, 
        n2174, n2173;
    
    CCU2D add_868_4 (.A0(keysamplerpulsecnt[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2171), .COUT(n2172));
    defparam add_868_4.INIT0 = 16'h5555;
    defparam add_868_4.INIT1 = 16'h5aaa;
    defparam add_868_4.INJECT1_0 = "NO";
    defparam add_868_4.INJECT1_1 = "NO";
    CCU2D add_868_2 (.A0(keysamplerpulsecnt[8]), .B0(keysamplerpulsecnt[7]), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[9]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .COUT(n2171));
    defparam add_868_2.INIT0 = 16'h7000;
    defparam add_868_2.INIT1 = 16'h5555;
    defparam add_868_2.INJECT1_0 = "NO";
    defparam add_868_2.INJECT1_1 = "NO";
    FD1S3AX keystore_i0 (.D(btnstate_N_183), .CK(keysamplerpulse), .Q(keystore[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=16, LSE_LLINE=46, LSE_RLINE=46 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(39[2] 43[9])
    defparam keystore_i0.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i0 (.D(n133[0]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i0.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_272_add_4_33 (.A0(keysamplerpulsecnt[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2214), .S0(n133[31]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272_add_4_33.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_33.INIT1 = 16'h0000;
    defparam keysamplerpulsecnt_272_add_4_33.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_272_add_4_33.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_272_add_4_31 (.A0(keysamplerpulsecnt[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2213), .COUT(n2214), .S0(n133[29]), 
          .S1(n133[30]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272_add_4_31.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_31.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_31.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_272_add_4_31.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_272_add_4_29 (.A0(keysamplerpulsecnt[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2212), .COUT(n2213), .S0(n133[27]), 
          .S1(n133[28]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272_add_4_29.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_29.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_29.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_272_add_4_29.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_35 (.A(keystore[2]), .B(keystore[1]), .C(keystore[0]), 
         .Z(n2555)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(44[12:55])
    defparam i2_3_lut_rep_35.init = 16'h8080;
    LUT4 i1_2_lut_rep_20_4_lut (.A(keystore[2]), .B(keystore[1]), .C(keystore[0]), 
         .D(key_down1_ls), .Z(n2540)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(44[12:55])
    defparam i1_2_lut_rep_20_4_lut.init = 16'h7f00;
    CCU2D keysamplerpulsecnt_272_add_4_27 (.A0(keysamplerpulsecnt[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2211), .COUT(n2212), .S0(n133[25]), 
          .S1(n133[26]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272_add_4_27.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_27.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_27.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_272_add_4_27.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_272_add_4_25 (.A0(keysamplerpulsecnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2210), .COUT(n2211), .S0(n133[23]), 
          .S1(n133[24]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272_add_4_25.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_25.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_25.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_272_add_4_25.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_272_add_4_23 (.A0(keysamplerpulsecnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2209), .COUT(n2210), .S0(n133[21]), 
          .S1(n133[22]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272_add_4_23.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_23.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_23.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_272_add_4_23.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_272_add_4_21 (.A0(keysamplerpulsecnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2208), .COUT(n2209), .S0(n133[19]), 
          .S1(n133[20]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272_add_4_21.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_21.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_21.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_272_add_4_21.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_272_add_4_19 (.A0(keysamplerpulsecnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2207), .COUT(n2208), .S0(n133[17]), 
          .S1(n133[18]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272_add_4_19.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_19.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_19.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_272_add_4_19.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_272_add_4_17 (.A0(keysamplerpulsecnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2206), .COUT(n2207), .S0(n133[15]), 
          .S1(n133[16]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272_add_4_17.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_17.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_17.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_272_add_4_17.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_272_add_4_15 (.A0(keysamplerpulsecnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2205), .COUT(n2206), .S0(n133[13]), 
          .S1(n133[14]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272_add_4_15.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_15.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_15.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_272_add_4_15.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_272_add_4_13 (.A0(keysamplerpulsecnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2204), .COUT(n2205), .S0(n133[11]), 
          .S1(n133[12]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272_add_4_13.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_13.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_13.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_272_add_4_13.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_272_add_4_11 (.A0(keysamplerpulsecnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2203), .COUT(n2204), .S0(n133[9]), 
          .S1(n133[10]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272_add_4_11.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_11.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_11.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_272_add_4_11.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_272_add_4_9 (.A0(keysamplerpulsecnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2202), .COUT(n2203), .S0(n133[7]), 
          .S1(n133[8]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272_add_4_9.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_9.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_9.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_272_add_4_9.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_272_add_4_7 (.A0(n233[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2201), .COUT(n2202), .S0(n133[5]), .S1(n133[6]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272_add_4_7.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_7.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_7.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_272_add_4_7.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_272_add_4_5 (.A0(n233[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2200), .COUT(n2201), .S0(n133[3]), .S1(n133[4]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272_add_4_5.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_5.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_5.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_272_add_4_5.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_272_add_4_3 (.A0(n233[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2199), .COUT(n2200), .S0(n133[1]), .S1(n133[2]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272_add_4_3.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_3.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_272_add_4_3.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_272_add_4_3.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_272_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2199), .S1(n133[0]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272_add_4_1.INIT0 = 16'hF000;
    defparam keysamplerpulsecnt_272_add_4_1.INIT1 = 16'h0555;
    defparam keysamplerpulsecnt_272_add_4_1.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_272_add_4_1.INJECT1_1 = "NO";
    LUT4 btnstate_I_0_1_lut (.A(key_down_c), .Z(btnstate_N_183)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(42[16:28])
    defparam btnstate_I_0_1_lut.init = 16'h5555;
    CCU2D add_868_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2182), 
          .S0(keysamplerpulse));
    defparam add_868_cout.INIT0 = 16'h0000;
    defparam add_868_cout.INIT1 = 16'h0000;
    defparam add_868_cout.INJECT1_0 = "NO";
    defparam add_868_cout.INJECT1_1 = "NO";
    CCU2D add_868_24 (.A0(keysamplerpulsecnt[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2181), .COUT(n2182));
    defparam add_868_24.INIT0 = 16'h5555;
    defparam add_868_24.INIT1 = 16'hf555;
    defparam add_868_24.INJECT1_0 = "NO";
    defparam add_868_24.INJECT1_1 = "NO";
    CCU2D add_868_22 (.A0(keysamplerpulsecnt[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2180), .COUT(n2181));
    defparam add_868_22.INIT0 = 16'h5555;
    defparam add_868_22.INIT1 = 16'h5555;
    defparam add_868_22.INJECT1_0 = "NO";
    defparam add_868_22.INJECT1_1 = "NO";
    CCU2D add_868_20 (.A0(keysamplerpulsecnt[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2179), .COUT(n2180));
    defparam add_868_20.INIT0 = 16'h5555;
    defparam add_868_20.INIT1 = 16'h5555;
    defparam add_868_20.INJECT1_0 = "NO";
    defparam add_868_20.INJECT1_1 = "NO";
    FD1S3DX keysamplerpulsecnt_272__i31 (.D(n133[31]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i31.GSR = "DISABLED";
    CCU2D add_868_18 (.A0(keysamplerpulsecnt[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2178), .COUT(n2179));
    defparam add_868_18.INIT0 = 16'h5555;
    defparam add_868_18.INIT1 = 16'h5555;
    defparam add_868_18.INJECT1_0 = "NO";
    defparam add_868_18.INJECT1_1 = "NO";
    CCU2D add_868_16 (.A0(keysamplerpulsecnt[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2177), .COUT(n2178));
    defparam add_868_16.INIT0 = 16'h5555;
    defparam add_868_16.INIT1 = 16'h5555;
    defparam add_868_16.INJECT1_0 = "NO";
    defparam add_868_16.INJECT1_1 = "NO";
    FD1S3DX keysamplerpulsecnt_272__i30 (.D(n133[30]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i30.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i29 (.D(n133[29]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i29.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i28 (.D(n133[28]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i28.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i27 (.D(n133[27]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i27.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i26 (.D(n133[26]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i26.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i25 (.D(n133[25]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i25.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i24 (.D(n133[24]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i24.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i23 (.D(n133[23]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i23.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i22 (.D(n133[22]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i22.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i21 (.D(n133[21]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i21.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i20 (.D(n133[20]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i20.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i19 (.D(n133[19]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i19.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i18 (.D(n133[18]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i18.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i17 (.D(n133[17]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i17.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i16 (.D(n133[16]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i16.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i15 (.D(n133[15]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i15.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i14 (.D(n133[14]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i14.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i13 (.D(n133[13]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i13.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i12 (.D(n133[12]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i12.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i11 (.D(n133[11]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i11.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i10 (.D(n133[10]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i10.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i9 (.D(n133[9]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i9.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i8 (.D(n133[8]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i8.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i7 (.D(n133[7]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i7.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i6 (.D(n133[6]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i6.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i5 (.D(n133[5]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i5.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i4 (.D(n133[4]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i4.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i3 (.D(n133[3]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i3.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i2 (.D(n133[2]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i2.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_272__i1 (.D(n133[1]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_272__i1.GSR = "DISABLED";
    CCU2D add_868_14 (.A0(keysamplerpulsecnt[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2176), .COUT(n2177));
    defparam add_868_14.INIT0 = 16'h5555;
    defparam add_868_14.INIT1 = 16'h5555;
    defparam add_868_14.INJECT1_0 = "NO";
    defparam add_868_14.INJECT1_1 = "NO";
    CCU2D add_868_12 (.A0(keysamplerpulsecnt[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2175), .COUT(n2176));
    defparam add_868_12.INIT0 = 16'h5555;
    defparam add_868_12.INIT1 = 16'h5555;
    defparam add_868_12.INJECT1_0 = "NO";
    defparam add_868_12.INJECT1_1 = "NO";
    CCU2D add_868_10 (.A0(keysamplerpulsecnt[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2174), .COUT(n2175));
    defparam add_868_10.INIT0 = 16'h5aaa;
    defparam add_868_10.INIT1 = 16'h5aaa;
    defparam add_868_10.INJECT1_0 = "NO";
    defparam add_868_10.INJECT1_1 = "NO";
    CCU2D add_868_8 (.A0(keysamplerpulsecnt[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2173), .COUT(n2174));
    defparam add_868_8.INIT0 = 16'h5555;
    defparam add_868_8.INIT1 = 16'h5aaa;
    defparam add_868_8.INJECT1_0 = "NO";
    defparam add_868_8.INJECT1_1 = "NO";
    FD1S3AX keystore_i2 (.D(keystore[1]), .CK(keysamplerpulse), .Q(keystore[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=16, LSE_LLINE=46, LSE_RLINE=46 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(39[2] 43[9])
    defparam keystore_i2.GSR = "DISABLED";
    FD1S3AX keystore_i1 (.D(keystore[0]), .CK(keysamplerpulse), .Q(keystore[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=16, LSE_LLINE=46, LSE_RLINE=46 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(39[2] 43[9])
    defparam keystore_i1.GSR = "DISABLED";
    CCU2D add_868_6 (.A0(keysamplerpulsecnt[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2172), .COUT(n2173));
    defparam add_868_6.INIT0 = 16'h5555;
    defparam add_868_6.INIT1 = 16'h5aaa;
    defparam add_868_6.INJECT1_0 = "NO";
    defparam add_868_6.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module CycleSampler_U1
//

module CycleSampler_U1 (clk_c, GND_net, key_menu1, key_menu_c);
    input clk_c;
    input GND_net;
    output key_menu1;
    input key_menu_c;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(9[6:9])
    wire keysamplerpulse /* synthesis SET_AS_NETWORK=\P1/keysamplerpulse, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(17[8:23])
    wire key_menu1 /* synthesis is_clock=1, SET_AS_NETWORK=key_menu1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(28[8:17])
    wire [31:0]n233;
    wire [31:0]n133;
    
    wire n2133, n2134, n2250;
    wire [31:0]keysamplerpulsecnt;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(24[11:29])
    
    wire n2251, n2249, n2255, n2256, n2142, n2143;
    wire [2:0]keystore;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(18[8:16])
    
    wire btnstate_N_183, n2141, n2140, n2132, n2135, n2139, n2147, 
        n2146, n2138, n2254, n2253, n2252, n2260, n2259, n2258, 
        n2257, n2137, n2136, n2145, n2144;
    
    FD1S3DX keysamplerpulsecnt_274__i0 (.D(n133[0]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i0.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_274_add_4_5 (.A0(n233[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2133), .COUT(n2134), .S0(n133[3]), .S1(n133[4]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274_add_4_5.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_5.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_5.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_274_add_4_5.INJECT1_1 = "NO";
    CCU2D add_869_6 (.A0(keysamplerpulsecnt[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2250), .COUT(n2251));
    defparam add_869_6.INIT0 = 16'h5555;
    defparam add_869_6.INIT1 = 16'h5aaa;
    defparam add_869_6.INJECT1_0 = "NO";
    defparam add_869_6.INJECT1_1 = "NO";
    CCU2D add_869_4 (.A0(keysamplerpulsecnt[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2249), .COUT(n2250));
    defparam add_869_4.INIT0 = 16'h5555;
    defparam add_869_4.INIT1 = 16'h5aaa;
    defparam add_869_4.INJECT1_0 = "NO";
    defparam add_869_4.INJECT1_1 = "NO";
    CCU2D add_869_2 (.A0(keysamplerpulsecnt[8]), .B0(keysamplerpulsecnt[7]), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[9]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .COUT(n2249));
    defparam add_869_2.INIT0 = 16'h7000;
    defparam add_869_2.INIT1 = 16'h5555;
    defparam add_869_2.INJECT1_0 = "NO";
    defparam add_869_2.INJECT1_1 = "NO";
    CCU2D add_869_16 (.A0(keysamplerpulsecnt[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2255), .COUT(n2256));
    defparam add_869_16.INIT0 = 16'h5555;
    defparam add_869_16.INIT1 = 16'h5555;
    defparam add_869_16.INJECT1_0 = "NO";
    defparam add_869_16.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_274_add_4_23 (.A0(keysamplerpulsecnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2142), .COUT(n2143), .S0(n133[21]), 
          .S1(n133[22]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274_add_4_23.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_23.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_23.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_274_add_4_23.INJECT1_1 = "NO";
    FD1S3AX keystore_i0 (.D(btnstate_N_183), .CK(keysamplerpulse), .Q(keystore[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=16, LSE_LLINE=44, LSE_RLINE=44 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(39[2] 43[9])
    defparam keystore_i0.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_274_add_4_21 (.A0(keysamplerpulsecnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2141), .COUT(n2142), .S0(n133[19]), 
          .S1(n133[20]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274_add_4_21.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_21.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_21.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_274_add_4_21.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(keystore[2]), .B(keystore[1]), .C(keystore[0]), 
         .Z(key_menu1)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(44[12:55])
    defparam i2_3_lut.init = 16'h8080;
    CCU2D keysamplerpulsecnt_274_add_4_19 (.A0(keysamplerpulsecnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2140), .COUT(n2141), .S0(n133[17]), 
          .S1(n133[18]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274_add_4_19.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_19.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_19.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_274_add_4_19.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_274_add_4_3 (.A0(n233[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2132), .COUT(n2133), .S0(n133[1]), .S1(n133[2]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274_add_4_3.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_3.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_3.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_274_add_4_3.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_274_add_4_7 (.A0(n233[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2134), .COUT(n2135), .S0(n133[5]), .S1(n133[6]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274_add_4_7.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_7.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_7.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_274_add_4_7.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_274_add_4_17 (.A0(keysamplerpulsecnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2139), .COUT(n2140), .S0(n133[15]), 
          .S1(n133[16]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274_add_4_17.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_17.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_17.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_274_add_4_17.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_274_add_4_33 (.A0(keysamplerpulsecnt[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2147), .S0(n133[31]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274_add_4_33.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_33.INIT1 = 16'h0000;
    defparam keysamplerpulsecnt_274_add_4_33.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_274_add_4_33.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_274_add_4_31 (.A0(keysamplerpulsecnt[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2146), .COUT(n2147), .S0(n133[29]), 
          .S1(n133[30]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274_add_4_31.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_31.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_31.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_274_add_4_31.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_274_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2132), .S1(n133[0]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274_add_4_1.INIT0 = 16'hF000;
    defparam keysamplerpulsecnt_274_add_4_1.INIT1 = 16'h0555;
    defparam keysamplerpulsecnt_274_add_4_1.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_274_add_4_1.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_274_add_4_15 (.A0(keysamplerpulsecnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2138), .COUT(n2139), .S0(n133[13]), 
          .S1(n133[14]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274_add_4_15.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_15.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_15.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_274_add_4_15.INJECT1_1 = "NO";
    LUT4 btnstate_I_0_1_lut (.A(key_menu_c), .Z(btnstate_N_183)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(42[16:28])
    defparam btnstate_I_0_1_lut.init = 16'h5555;
    CCU2D add_869_14 (.A0(keysamplerpulsecnt[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2254), .COUT(n2255));
    defparam add_869_14.INIT0 = 16'h5555;
    defparam add_869_14.INIT1 = 16'h5555;
    defparam add_869_14.INJECT1_0 = "NO";
    defparam add_869_14.INJECT1_1 = "NO";
    CCU2D add_869_12 (.A0(keysamplerpulsecnt[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2253), .COUT(n2254));
    defparam add_869_12.INIT0 = 16'h5555;
    defparam add_869_12.INIT1 = 16'h5555;
    defparam add_869_12.INJECT1_0 = "NO";
    defparam add_869_12.INJECT1_1 = "NO";
    CCU2D add_869_10 (.A0(keysamplerpulsecnt[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2252), .COUT(n2253));
    defparam add_869_10.INIT0 = 16'h5aaa;
    defparam add_869_10.INIT1 = 16'h5aaa;
    defparam add_869_10.INJECT1_0 = "NO";
    defparam add_869_10.INJECT1_1 = "NO";
    CCU2D add_869_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2260), 
          .S0(keysamplerpulse));
    defparam add_869_cout.INIT0 = 16'h0000;
    defparam add_869_cout.INIT1 = 16'h0000;
    defparam add_869_cout.INJECT1_0 = "NO";
    defparam add_869_cout.INJECT1_1 = "NO";
    CCU2D add_869_24 (.A0(keysamplerpulsecnt[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2259), .COUT(n2260));
    defparam add_869_24.INIT0 = 16'h5555;
    defparam add_869_24.INIT1 = 16'hf555;
    defparam add_869_24.INJECT1_0 = "NO";
    defparam add_869_24.INJECT1_1 = "NO";
    CCU2D add_869_22 (.A0(keysamplerpulsecnt[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2258), .COUT(n2259));
    defparam add_869_22.INIT0 = 16'h5555;
    defparam add_869_22.INIT1 = 16'h5555;
    defparam add_869_22.INJECT1_0 = "NO";
    defparam add_869_22.INJECT1_1 = "NO";
    CCU2D add_869_20 (.A0(keysamplerpulsecnt[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2257), .COUT(n2258));
    defparam add_869_20.INIT0 = 16'h5555;
    defparam add_869_20.INIT1 = 16'h5555;
    defparam add_869_20.INJECT1_0 = "NO";
    defparam add_869_20.INJECT1_1 = "NO";
    CCU2D add_869_18 (.A0(keysamplerpulsecnt[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2256), .COUT(n2257));
    defparam add_869_18.INIT0 = 16'h5555;
    defparam add_869_18.INIT1 = 16'h5555;
    defparam add_869_18.INJECT1_0 = "NO";
    defparam add_869_18.INJECT1_1 = "NO";
    CCU2D add_869_8 (.A0(keysamplerpulsecnt[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2251), .COUT(n2252));
    defparam add_869_8.INIT0 = 16'h5555;
    defparam add_869_8.INIT1 = 16'h5aaa;
    defparam add_869_8.INJECT1_0 = "NO";
    defparam add_869_8.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_274_add_4_13 (.A0(keysamplerpulsecnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2137), .COUT(n2138), .S0(n133[11]), 
          .S1(n133[12]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274_add_4_13.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_13.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_13.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_274_add_4_13.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_274_add_4_11 (.A0(keysamplerpulsecnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2136), .COUT(n2137), .S0(n133[9]), 
          .S1(n133[10]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274_add_4_11.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_11.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_11.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_274_add_4_11.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_274_add_4_9 (.A0(keysamplerpulsecnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2135), .COUT(n2136), .S0(n133[7]), 
          .S1(n133[8]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274_add_4_9.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_9.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_9.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_274_add_4_9.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_274_add_4_29 (.A0(keysamplerpulsecnt[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2145), .COUT(n2146), .S0(n133[27]), 
          .S1(n133[28]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274_add_4_29.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_29.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_29.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_274_add_4_29.INJECT1_1 = "NO";
    FD1S3AX keystore_i2 (.D(keystore[1]), .CK(keysamplerpulse), .Q(keystore[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=16, LSE_LLINE=44, LSE_RLINE=44 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(39[2] 43[9])
    defparam keystore_i2.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_274_add_4_27 (.A0(keysamplerpulsecnt[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2144), .COUT(n2145), .S0(n133[25]), 
          .S1(n133[26]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274_add_4_27.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_27.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_27.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_274_add_4_27.INJECT1_1 = "NO";
    FD1S3AX keystore_i1 (.D(keystore[0]), .CK(keysamplerpulse), .Q(keystore[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=16, LSE_LLINE=44, LSE_RLINE=44 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(39[2] 43[9])
    defparam keystore_i1.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i31 (.D(n133[31]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i31.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i30 (.D(n133[30]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i30.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i29 (.D(n133[29]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i29.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i28 (.D(n133[28]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i28.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i27 (.D(n133[27]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i27.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i26 (.D(n133[26]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i26.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i25 (.D(n133[25]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i25.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i24 (.D(n133[24]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i24.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i23 (.D(n133[23]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i23.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i22 (.D(n133[22]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i22.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i21 (.D(n133[21]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i21.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i20 (.D(n133[20]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i20.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i19 (.D(n133[19]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i19.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i18 (.D(n133[18]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i18.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i17 (.D(n133[17]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i17.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i16 (.D(n133[16]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i16.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i15 (.D(n133[15]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i15.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i14 (.D(n133[14]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i14.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i13 (.D(n133[13]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i13.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i12 (.D(n133[12]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i12.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i11 (.D(n133[11]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i11.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i10 (.D(n133[10]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i10.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i9 (.D(n133[9]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i9.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i8 (.D(n133[8]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i8.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i7 (.D(n133[7]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i7.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i6 (.D(n133[6]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i6.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i5 (.D(n133[5]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i5.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i4 (.D(n133[4]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i4.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i3 (.D(n133[3]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i3.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i2 (.D(n133[2]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i2.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_274__i1 (.D(n133[1]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274__i1.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_274_add_4_25 (.A0(keysamplerpulsecnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2143), .COUT(n2144), .S0(n133[23]), 
          .S1(n133[24]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_274_add_4_25.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_25.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_274_add_4_25.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_274_add_4_25.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module CycleSampler_U0
//

module CycleSampler_U0 (key_up1_ls, n407, GND_net, clk_c, key_up_c, 
            n2541);
    input key_up1_ls;
    output n407;
    input GND_net;
    input clk_c;
    input key_up_c;
    output n2541;
    
    wire keysamplerpulse /* synthesis SET_AS_NETWORK=\P2/keysamplerpulse, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(17[8:23])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/lab2.vhd(9[6:9])
    wire [2:0]keystore;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(18[8:16])
    
    wire n2248, n2247;
    wire [31:0]keysamplerpulsecnt;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(24[11:29])
    
    wire n2246, btnstate_N_183, n2245, n2244, n2243, n2242, n2241, 
        n2240, n2239, n2238, n2237;
    wire [31:0]n233;
    wire [31:0]n133;
    
    wire n2198, n2197, n2196, n2195, n2194, n2193, n2192, n2191, 
        n2190, n2189, n2188, n2187, n2186, n2185, n2184, n2183;
    
    LUT4 i1_2_lut_4_lut (.A(keystore[2]), .B(keystore[1]), .C(keystore[0]), 
         .D(key_up1_ls), .Z(n407)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(44[12:55])
    defparam i1_2_lut_4_lut.init = 16'h7f00;
    CCU2D add_870_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2248), 
          .S0(keysamplerpulse));
    defparam add_870_cout.INIT0 = 16'h0000;
    defparam add_870_cout.INIT1 = 16'h0000;
    defparam add_870_cout.INJECT1_0 = "NO";
    defparam add_870_cout.INJECT1_1 = "NO";
    CCU2D add_870_24 (.A0(keysamplerpulsecnt[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2247), .COUT(n2248));
    defparam add_870_24.INIT0 = 16'h5555;
    defparam add_870_24.INIT1 = 16'hf555;
    defparam add_870_24.INJECT1_0 = "NO";
    defparam add_870_24.INJECT1_1 = "NO";
    CCU2D add_870_22 (.A0(keysamplerpulsecnt[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2246), .COUT(n2247));
    defparam add_870_22.INIT0 = 16'h5555;
    defparam add_870_22.INIT1 = 16'h5555;
    defparam add_870_22.INJECT1_0 = "NO";
    defparam add_870_22.INJECT1_1 = "NO";
    FD1S3AX keystore_i0 (.D(btnstate_N_183), .CK(keysamplerpulse), .Q(keystore[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=16, LSE_LLINE=45, LSE_RLINE=45 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(39[2] 43[9])
    defparam keystore_i0.GSR = "DISABLED";
    CCU2D add_870_20 (.A0(keysamplerpulsecnt[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2245), .COUT(n2246));
    defparam add_870_20.INIT0 = 16'h5555;
    defparam add_870_20.INIT1 = 16'h5555;
    defparam add_870_20.INJECT1_0 = "NO";
    defparam add_870_20.INJECT1_1 = "NO";
    CCU2D add_870_18 (.A0(keysamplerpulsecnt[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2244), .COUT(n2245));
    defparam add_870_18.INIT0 = 16'h5555;
    defparam add_870_18.INIT1 = 16'h5555;
    defparam add_870_18.INJECT1_0 = "NO";
    defparam add_870_18.INJECT1_1 = "NO";
    CCU2D add_870_16 (.A0(keysamplerpulsecnt[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2243), .COUT(n2244));
    defparam add_870_16.INIT0 = 16'h5555;
    defparam add_870_16.INIT1 = 16'h5555;
    defparam add_870_16.INJECT1_0 = "NO";
    defparam add_870_16.INJECT1_1 = "NO";
    CCU2D add_870_14 (.A0(keysamplerpulsecnt[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2242), .COUT(n2243));
    defparam add_870_14.INIT0 = 16'h5555;
    defparam add_870_14.INIT1 = 16'h5555;
    defparam add_870_14.INJECT1_0 = "NO";
    defparam add_870_14.INJECT1_1 = "NO";
    CCU2D add_870_12 (.A0(keysamplerpulsecnt[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2241), .COUT(n2242));
    defparam add_870_12.INIT0 = 16'h5555;
    defparam add_870_12.INIT1 = 16'h5555;
    defparam add_870_12.INJECT1_0 = "NO";
    defparam add_870_12.INJECT1_1 = "NO";
    CCU2D add_870_10 (.A0(keysamplerpulsecnt[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2240), .COUT(n2241));
    defparam add_870_10.INIT0 = 16'h5aaa;
    defparam add_870_10.INIT1 = 16'h5aaa;
    defparam add_870_10.INJECT1_0 = "NO";
    defparam add_870_10.INJECT1_1 = "NO";
    CCU2D add_870_8 (.A0(keysamplerpulsecnt[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2239), .COUT(n2240));
    defparam add_870_8.INIT0 = 16'h5555;
    defparam add_870_8.INIT1 = 16'h5aaa;
    defparam add_870_8.INJECT1_0 = "NO";
    defparam add_870_8.INJECT1_1 = "NO";
    CCU2D add_870_6 (.A0(keysamplerpulsecnt[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2238), .COUT(n2239));
    defparam add_870_6.INIT0 = 16'h5555;
    defparam add_870_6.INIT1 = 16'h5aaa;
    defparam add_870_6.INJECT1_0 = "NO";
    defparam add_870_6.INJECT1_1 = "NO";
    CCU2D add_870_4 (.A0(keysamplerpulsecnt[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2237), .COUT(n2238));
    defparam add_870_4.INIT0 = 16'h5555;
    defparam add_870_4.INIT1 = 16'h5aaa;
    defparam add_870_4.INJECT1_0 = "NO";
    defparam add_870_4.INJECT1_1 = "NO";
    CCU2D add_870_2 (.A0(keysamplerpulsecnt[8]), .B0(keysamplerpulsecnt[7]), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[9]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .COUT(n2237));
    defparam add_870_2.INIT0 = 16'h7000;
    defparam add_870_2.INIT1 = 16'h5555;
    defparam add_870_2.INJECT1_0 = "NO";
    defparam add_870_2.INJECT1_1 = "NO";
    FD1S3DX keysamplerpulsecnt_273__i0 (.D(n133[0]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i0.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_273_add_4_33 (.A0(keysamplerpulsecnt[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2198), .S0(n133[31]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273_add_4_33.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_33.INIT1 = 16'h0000;
    defparam keysamplerpulsecnt_273_add_4_33.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_273_add_4_33.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_273_add_4_31 (.A0(keysamplerpulsecnt[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2197), .COUT(n2198), .S0(n133[29]), 
          .S1(n133[30]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273_add_4_31.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_31.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_31.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_273_add_4_31.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_273_add_4_29 (.A0(keysamplerpulsecnt[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2196), .COUT(n2197), .S0(n133[27]), 
          .S1(n133[28]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273_add_4_29.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_29.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_29.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_273_add_4_29.INJECT1_1 = "NO";
    LUT4 btnstate_I_0_1_lut (.A(key_up_c), .Z(btnstate_N_183)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(42[16:28])
    defparam btnstate_I_0_1_lut.init = 16'h5555;
    LUT4 i2_3_lut_rep_21 (.A(keystore[2]), .B(keystore[1]), .C(keystore[0]), 
         .Z(n2541)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(44[12:55])
    defparam i2_3_lut_rep_21.init = 16'h8080;
    CCU2D keysamplerpulsecnt_273_add_4_27 (.A0(keysamplerpulsecnt[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2195), .COUT(n2196), .S0(n133[25]), 
          .S1(n133[26]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273_add_4_27.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_27.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_27.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_273_add_4_27.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_273_add_4_25 (.A0(keysamplerpulsecnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2194), .COUT(n2195), .S0(n133[23]), 
          .S1(n133[24]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273_add_4_25.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_25.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_25.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_273_add_4_25.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_273_add_4_23 (.A0(keysamplerpulsecnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2193), .COUT(n2194), .S0(n133[21]), 
          .S1(n133[22]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273_add_4_23.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_23.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_23.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_273_add_4_23.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_273_add_4_21 (.A0(keysamplerpulsecnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2192), .COUT(n2193), .S0(n133[19]), 
          .S1(n133[20]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273_add_4_21.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_21.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_21.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_273_add_4_21.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_273_add_4_19 (.A0(keysamplerpulsecnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2191), .COUT(n2192), .S0(n133[17]), 
          .S1(n133[18]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273_add_4_19.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_19.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_19.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_273_add_4_19.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_273_add_4_17 (.A0(keysamplerpulsecnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2190), .COUT(n2191), .S0(n133[15]), 
          .S1(n133[16]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273_add_4_17.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_17.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_17.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_273_add_4_17.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_273_add_4_15 (.A0(keysamplerpulsecnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2189), .COUT(n2190), .S0(n133[13]), 
          .S1(n133[14]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273_add_4_15.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_15.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_15.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_273_add_4_15.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_273_add_4_13 (.A0(keysamplerpulsecnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2188), .COUT(n2189), .S0(n133[11]), 
          .S1(n133[12]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273_add_4_13.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_13.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_13.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_273_add_4_13.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_273_add_4_11 (.A0(keysamplerpulsecnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2187), .COUT(n2188), .S0(n133[9]), 
          .S1(n133[10]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273_add_4_11.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_11.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_11.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_273_add_4_11.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_273_add_4_9 (.A0(keysamplerpulsecnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2186), .COUT(n2187), .S0(n133[7]), 
          .S1(n133[8]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273_add_4_9.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_9.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_9.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_273_add_4_9.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_273_add_4_7 (.A0(n233[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2185), .COUT(n2186), .S0(n133[5]), .S1(n133[6]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273_add_4_7.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_7.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_7.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_273_add_4_7.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_273_add_4_5 (.A0(n233[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2184), .COUT(n2185), .S0(n133[3]), .S1(n133[4]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273_add_4_5.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_5.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_5.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_273_add_4_5.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_273_add_4_3 (.A0(n233[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2183), .COUT(n2184), .S0(n133[1]), .S1(n133[2]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273_add_4_3.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_3.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_273_add_4_3.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_273_add_4_3.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_273_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2183), .S1(n133[0]));   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273_add_4_1.INIT0 = 16'hF000;
    defparam keysamplerpulsecnt_273_add_4_1.INIT1 = 16'h0555;
    defparam keysamplerpulsecnt_273_add_4_1.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_273_add_4_1.INJECT1_1 = "NO";
    FD1S3DX keysamplerpulsecnt_273__i31 (.D(n133[31]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i31.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i30 (.D(n133[30]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i30.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i29 (.D(n133[29]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i29.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i28 (.D(n133[28]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i28.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i27 (.D(n133[27]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i27.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i26 (.D(n133[26]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i26.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i25 (.D(n133[25]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i25.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i24 (.D(n133[24]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i24.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i23 (.D(n133[23]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i23.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i22 (.D(n133[22]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i22.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i21 (.D(n133[21]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i21.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i20 (.D(n133[20]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i20.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i19 (.D(n133[19]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i19.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i18 (.D(n133[18]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i18.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i17 (.D(n133[17]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i17.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i16 (.D(n133[16]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i16.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i15 (.D(n133[15]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i15.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i14 (.D(n133[14]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i14.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i13 (.D(n133[13]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i13.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i12 (.D(n133[12]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i12.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i11 (.D(n133[11]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i11.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i10 (.D(n133[10]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i10.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i9 (.D(n133[9]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i9.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i8 (.D(n133[8]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i8.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i7 (.D(n133[7]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(keysamplerpulsecnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i7.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i6 (.D(n133[6]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i6.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i5 (.D(n133[5]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i5.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i4 (.D(n133[4]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i4.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i3 (.D(n133[3]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i3.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i2 (.D(n133[2]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i2.GSR = "DISABLED";
    FD1S3DX keysamplerpulsecnt_273__i1 (.D(n133[1]), .CK(clk_c), .CD(keysamplerpulse), 
            .Q(n233[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(27[24:42])
    defparam keysamplerpulsecnt_273__i1.GSR = "DISABLED";
    FD1S3AX keystore_i2 (.D(keystore[1]), .CK(keysamplerpulse), .Q(keystore[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=16, LSE_LLINE=45, LSE_RLINE=45 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(39[2] 43[9])
    defparam keystore_i2.GSR = "DISABLED";
    FD1S3AX keystore_i1 (.D(keystore[0]), .CK(keysamplerpulse), .Q(keystore[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=16, LSE_LLINE=45, LSE_RLINE=45 */ ;   // c:/users/10352/vhdl-labs/lab2_led_shining/key.vhd(39[2] 43[9])
    defparam keystore_i1.GSR = "DISABLED";
    
endmodule
