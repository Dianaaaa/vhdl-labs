// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Mon Nov 02 18:32:27 2020
//
// Verilog Description of module Key_Table
//

module Key_Table (ROW, COL, button_four, a_to_g, led_four, seg, 
            clk);   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(4[8:17])
    output [3:0]ROW;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[8:11])
    input [3:0]COL;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(8[8:11])
    input [3:0]button_four;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(9[3:14])
    output [6:0]a_to_g;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:9])
    output [3:0]led_four;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:11])
    output seg;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(12[3:6])
    input clk;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(13[3:6])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(13[3:6])
    wire apa /* synthesis SET_AS_NETWORK=apa, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(22[8:11])
    wire apa_N_6 /* synthesis is_inv_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[8:11])
    
    wire GND_net, VCC_net, ROW_c_3, ROW_c_2, ROW_c_1, ROW_c_0, COL_c_3, 
        COL_c_2, COL_c_1, COL_c_0, button_four_c_3, button_four_c_2, 
        button_four_c_1, button_four_c_0, a_to_g_c_6, a_to_g_c_5, a_to_g_c_4, 
        a_to_g_c_3, a_to_g_c_2, a_to_g_c_1, a_to_g_c_0, led_four_c_3, 
        led_four_c_2, led_four_c_1, led_four_c_0;
    wire [13:0]clk_cnt;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(18[8:15])
    wire [4:0]LED_get;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(20[8:15])
    wire [2:0]num_cnt;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(21[8:15])
    wire [15:0]key_out;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(23[8:15])
    wire [3:0]BTN_cache;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(24[8:17])
    
    wire apa_N_10, n71, n12, n2162, n2285, n2037, key_out_15__N_45, 
        n14, key_out_15__N_50, n6, key_out_15__N_55, key_out_15__N_60, 
        a_to_g_6__N_78, n2050, n1998, n1761;
    wire [6:0]a_to_g_6__N_71;
    
    wire n2204, n359, n1844, n4, n2203, n68, n706, apa_enable_8, 
        n319, n1945, n1162, n2147, n2, n2061, n2140, n2070, 
        n2161, n1198, n2076, n2072, n2022, n2284, n1762, n2283, 
        n1160, n1764, clk_c_enable_1, n2089, n2280, n718, n4_adj_1, 
        n2279, n2278, n1306, n1771, n1763, n2123, n4_adj_2, n4_adj_3, 
        n1990, n2064, n2016, n2277, n1994, n1759, n1791, n2023, 
        n2056, n12_adj_4, n4_adj_5, n2276, n6_adj_6, n2275, n2120, 
        n2057, n727, n1188, n10, n2054, n2014, n2053, n18, n2006, 
        n1760, n40, n2038, n2042, n34, n2274, n26, n2273, n23, 
        n2040, n1984, n2044, n1765, n2272, n2041, n2271, n2270, 
        n2269, n1959, n1947, n8, n2268, apa_enable_5, n9, n2026, 
        n689, n6_adj_7, n2438, n2266, n2265, n2264, n1941, n26_adj_8, 
        n27, n28, n29, n30, n2263, n2084, n12_adj_9, n2262, 
        n2261, n10_adj_10, n2260, n2259, n2258, n2257, n2256, 
        n4_adj_11, n62, n63, n64, n65, n66, n67, n68_adj_12, 
        n69, n70, n71_adj_13, n72, n73, n74, n75, n2255, n1999;
    
    VHI i2 (.Z(VCC_net));
    INV i2068 (.A(apa), .Z(apa_N_6));
    CCU2D clk_cnt_148_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1759), .COUT(n1760), .S0(n74), .S1(n73));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_148_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_148_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_148_add_4_3.INJECT1_1 = "NO";
    FD1P3AX led_four_i0_i1 (.D(BTN_cache[0]), .SP(apa_enable_8), .CK(apa), 
            .Q(led_four_c_0));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam led_four_i0_i1.GSR = "ENABLED";
    FD1P3AX a_to_g_i0_i1 (.D(a_to_g_6__N_71[0]), .SP(a_to_g_6__N_78), .CK(apa), 
            .Q(a_to_g_c_0));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam a_to_g_i0_i1.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(key_out[15]), .B(key_out[13]), .C(key_out[14]), 
         .D(key_out[12]), .Z(n2006)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(72[4] 90[13])
    defparam i1_4_lut.init = 16'h8000;
    LUT4 i3_4_lut (.A(n2147), .B(n2261), .C(key_out[1]), .D(n2040), 
         .Z(n2042)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i1_2_lut (.A(n689), .B(apa_enable_5), .Z(n319)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(93[6:29])
    defparam i1_2_lut.init = 16'hdddd;
    LUT4 i1528_1_lut (.A(LED_get[0]), .Z(n30)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(100[15:22])
    defparam i1528_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_43 (.A(key_out[10]), .B(key_out[3]), .Z(n2271)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_43.init = 16'h8888;
    LUT4 i2_3_lut (.A(key_out[4]), .B(n2023), .C(key_out[3]), .Z(n727)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(85[9:27])
    defparam i2_3_lut.init = 16'hf7f7;
    LUT4 i1_2_lut_3_lut (.A(key_out[10]), .B(key_out[3]), .C(key_out[6]), 
         .Z(n2053)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h8080;
    OB ROW_pad_2 (.I(ROW_c_2), .O(ROW[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[8:11])
    LUT4 i1_2_lut_rep_44 (.A(key_out[3]), .B(key_out[2]), .Z(n2272)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam i1_2_lut_rep_44.init = 16'h8888;
    LUT4 i1852_2_lut_rep_28 (.A(n2041), .B(key_out[5]), .Z(n2256)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1852_2_lut_rep_28.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_1 (.A(key_out[3]), .B(key_out[2]), .C(key_out[11]), 
         .Z(n4_adj_5)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam i1_2_lut_3_lut_adj_1.init = 16'h8080;
    LUT4 i956_3_lut_4_lut (.A(n2041), .B(key_out[5]), .C(key_out[6]), 
         .D(n706), .Z(n1160)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i956_3_lut_4_lut.init = 16'hf700;
    LUT4 i1_2_lut_rep_45 (.A(num_cnt[1]), .B(num_cnt[0]), .Z(n2273)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_45.init = 16'heeee;
    LUT4 seg_c_bdd_2_lut_1946 (.A(n2203), .B(key_out[4]), .Z(n2204)) /* synthesis lut_function=(A (B)) */ ;
    defparam seg_c_bdd_2_lut_1946.init = 16'h8888;
    LUT4 n2036_bdd_4_lut_1945 (.A(n2265), .B(key_out[11]), .C(key_out[7]), 
         .D(n2264), .Z(n2203)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A (B+!(C (D))))) */ ;
    defparam n2036_bdd_4_lut_1945.init = 16'h3808;
    LUT4 i2_3_lut_4_lut (.A(num_cnt[1]), .B(num_cnt[0]), .C(apa_N_10), 
         .D(num_cnt[2]), .Z(n359)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_4_lut_adj_2 (.A(n1947), .B(n2056), .C(n2255), .D(n4_adj_1), 
         .Z(a_to_g_6__N_71[5])) /* synthesis lut_function=(A+!(B (C (D))+!B (C))) */ ;
    defparam i1_4_lut_adj_2.init = 16'hafef;
    LUT4 m1_lut (.Z(n2438)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    OB ROW_pad_3 (.I(ROW_c_3), .O(ROW[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[8:11])
    LUT4 i1881_4_lut (.A(n2084), .B(clk_cnt[11]), .C(n18), .D(n12), 
         .Z(clk_c_enable_1)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(37[9:24])
    defparam i1881_4_lut.init = 16'h0008;
    LUT4 i1872_4_lut (.A(clk_cnt[0]), .B(clk_cnt[1]), .C(clk_cnt[2]), 
         .D(clk_cnt[7]), .Z(n2084)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1872_4_lut.init = 16'h8000;
    LUT4 i7_4_lut (.A(n1791), .B(clk_cnt[5]), .C(clk_cnt[8]), .D(clk_cnt[3]), 
         .Z(n18)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i7_4_lut.init = 16'hfdff;
    LUT4 i28_2_lut (.A(key_out[7]), .B(key_out[9]), .Z(n12_adj_9)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i28_2_lut.init = 16'h6666;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1_2_lut_adj_3 (.A(key_out[12]), .B(key_out[11]), .Z(n4_adj_1)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(76[9:27])
    defparam i1_2_lut_adj_3.init = 16'hbbbb;
    LUT4 i1_2_lut_adj_4 (.A(clk_cnt[12]), .B(clk_cnt[13]), .Z(n12)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_4.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_adj_5 (.A(num_cnt[1]), .B(num_cnt[0]), .C(num_cnt[2]), 
         .Z(a_to_g_6__N_78)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_5.init = 16'h1010;
    LUT4 i1895_2_lut_3_lut (.A(num_cnt[1]), .B(num_cnt[0]), .C(num_cnt[2]), 
         .Z(key_out_15__N_45)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i1895_2_lut_3_lut.init = 16'h0101;
    LUT4 i1000_2_lut_rep_46 (.A(key_out[9]), .B(key_out[0]), .Z(n2274)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1000_2_lut_rep_46.init = 16'h8888;
    FD1S3IX num_cnt__i0 (.D(n2089), .CK(clk_c), .CD(n359), .Q(num_cnt[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(29[2] 42[10])
    defparam num_cnt__i0.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_29 (.A(key_out[6]), .B(n2041), .C(key_out[5]), .Z(n2257)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(83[9:27])
    defparam i2_3_lut_rep_29.init = 16'hf7f7;
    FD1P3AX BTN_cache_i0_i0 (.D(button_four_c_0), .SP(apa_enable_5), .CK(apa), 
            .Q(BTN_cache[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam BTN_cache_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_6 (.A(n1188), .B(n10_adj_10), .C(n1162), .D(n1771), 
         .Z(n1947)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i1_4_lut_adj_6.init = 16'hffdf;
    FD1S3IX LED_get_149__i0 (.D(n30), .CK(apa), .CD(n319), .Q(LED_get[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(100[15:22])
    defparam LED_get_149__i0.GSR = "ENABLED";
    LUT4 i2_3_lut_adj_7 (.A(key_out[15]), .B(n1306), .C(key_out[0]), .Z(n1771)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut_adj_7.init = 16'h4040;
    LUT4 i1_2_lut_rep_34_3_lut_4_lut (.A(key_out[9]), .B(key_out[0]), .C(key_out[4]), 
         .D(key_out[8]), .Z(n2262)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_34_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_36_3_lut (.A(key_out[9]), .B(key_out[0]), .C(key_out[8]), 
         .Z(n2264)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_36_3_lut.init = 16'h8080;
    LUT4 i2_3_lut_adj_8 (.A(key_out[15]), .B(n1306), .C(key_out[0]), .Z(n706)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(88[9:27])
    defparam i2_3_lut_adj_8.init = 16'hf7f7;
    LUT4 i1901_2_lut_rep_47 (.A(num_cnt[1]), .B(num_cnt[0]), .Z(n2275)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(29[2] 42[10])
    defparam i1901_2_lut_rep_47.init = 16'hdddd;
    LUT4 i1_2_lut_3_lut_adj_9 (.A(num_cnt[1]), .B(num_cnt[0]), .C(num_cnt[2]), 
         .Z(key_out_15__N_55)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(29[2] 42[10])
    defparam i1_2_lut_3_lut_adj_9.init = 16'h0202;
    LUT4 i1898_2_lut_rep_48 (.A(num_cnt[1]), .B(num_cnt[0]), .Z(n2276)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(29[2] 42[10])
    defparam i1898_2_lut_rep_48.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_adj_10 (.A(num_cnt[1]), .B(num_cnt[0]), .C(num_cnt[2]), 
         .Z(key_out_15__N_50)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(29[2] 42[10])
    defparam i1_2_lut_3_lut_adj_10.init = 16'h0404;
    LUT4 i1533_2_lut_rep_49 (.A(LED_get[1]), .B(LED_get[0]), .Z(n2277)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(100[15:22])
    defparam i1533_2_lut_rep_49.init = 16'h8888;
    LUT4 i1551_3_lut_4_lut (.A(LED_get[2]), .B(n2277), .C(LED_get[3]), 
         .D(LED_get[4]), .Z(n26_adj_8)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(100[15:22])
    defparam i1551_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2_3_lut_adj_11 (.A(n1198), .B(n2057), .C(n1947), .Z(a_to_g_6__N_71[4])) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i2_3_lut_adj_11.init = 16'hfdfd;
    LUT4 i1_3_lut (.A(key_out[11]), .B(n2056), .C(key_out[12]), .Z(n2057)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;
    defparam i1_3_lut.init = 16'h4848;
    LUT4 i1537_2_lut_3_lut (.A(LED_get[1]), .B(LED_get[0]), .C(LED_get[2]), 
         .Z(n28)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(100[15:22])
    defparam i1537_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_4_lut_adj_12 (.A(n1188), .B(n2269), .C(key_out[1]), .D(n34), 
         .Z(a_to_g_6__N_71[3])) /* synthesis lut_function=((B (C (D)))+!A) */ ;
    defparam i1_4_lut_adj_12.init = 16'hd555;
    LUT4 i1544_2_lut_3_lut_4_lut (.A(LED_get[1]), .B(LED_get[0]), .C(LED_get[3]), 
         .D(LED_get[2]), .Z(n27)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(100[15:22])
    defparam i1544_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i2_3_lut_4_lut_adj_13 (.A(key_out[8]), .B(key_out[9]), .C(key_out[7]), 
         .D(n1999), .Z(n1306)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam i2_3_lut_4_lut_adj_13.init = 16'h8000;
    LUT4 i1914_4_lut (.A(n2123), .B(n2061), .C(n1198), .D(n718), .Z(a_to_g_6__N_71[0])) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i1914_4_lut.init = 16'hbfff;
    PFUMX i69 (.BLUT(n2038), .ALUT(n2044), .C0(key_out[10]), .Z(n40));
    LUT4 i1892_2_lut_rep_50 (.A(num_cnt[1]), .B(num_cnt[0]), .Z(n2278)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(29[2] 42[10])
    defparam i1892_2_lut_rep_50.init = 16'h7777;
    LUT4 i1_2_lut_3_lut_adj_14 (.A(num_cnt[1]), .B(num_cnt[0]), .C(num_cnt[2]), 
         .Z(key_out_15__N_60)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(29[2] 42[10])
    defparam i1_2_lut_3_lut_adj_14.init = 16'h0808;
    LUT4 i15_2_lut_3_lut (.A(num_cnt[1]), .B(num_cnt[0]), .C(num_cnt[2]), 
         .Z(n1941)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(29[2] 42[10])
    defparam i15_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_rep_51 (.A(key_out[5]), .B(key_out[4]), .Z(n2279)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam i1_2_lut_rep_51.init = 16'h8888;
    LUT4 i1_4_lut_adj_15 (.A(n1994), .B(key_out[11]), .C(n8), .D(key_out[5]), 
         .Z(n34)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_15.init = 16'heaaa;
    LUT4 i1_2_lut_3_lut_4_lut (.A(key_out[5]), .B(key_out[4]), .C(key_out[0]), 
         .D(key_out[9]), .Z(n6_adj_6)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_38_3_lut_4_lut (.A(key_out[5]), .B(key_out[4]), .C(key_out[6]), 
         .D(key_out[7]), .Z(n2266)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam i1_2_lut_rep_38_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_52 (.A(key_out[8]), .B(key_out[0]), .Z(n2280)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam i1_2_lut_rep_52.init = 16'h8888;
    LUT4 i2_3_lut_rep_31_4_lut (.A(key_out[8]), .B(key_out[0]), .C(n1999), 
         .D(key_out[15]), .Z(n2259)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam i2_3_lut_rep_31_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_16 (.A(n40), .B(n2268), .C(n2054), .D(n4_adj_5), 
         .Z(n1994)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_16.init = 16'hc8c0;
    CCU2D clk_cnt_148_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1764), .COUT(n1765), .S0(n64), .S1(n63));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_148_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_148_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_148_add_4_13.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_17 (.A(n23), .B(n2270), .C(n26), .D(key_out[10]), 
         .Z(n8)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_17.init = 16'hc800;
    CCU2D clk_cnt_148_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1763), .COUT(n1764), .S0(n66), .S1(n65));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_148_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_148_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_148_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_148_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1759), .S1(n75));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_148_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_148_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_148_add_4_1.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_18 (.A(key_out[2]), .B(n2204), .C(key_out[5]), .D(n2053), 
         .Z(n2054)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_18.init = 16'h8000;
    LUT4 i1_2_lut_rep_37_3_lut (.A(key_out[8]), .B(key_out[0]), .C(key_out[9]), 
         .Z(n2265)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam i1_2_lut_rep_37_3_lut.init = 16'h8080;
    CCU2D clk_cnt_148_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1762), .COUT(n1763), .S0(n68_adj_12), 
          .S1(n67));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_148_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_148_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_148_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_else_4_lut (.A(n2006), .B(key_out[8]), .C(key_out[9]), 
         .D(key_out[11]), .Z(n2283)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(72[4] 90[13])
    defparam i1_4_lut_else_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_19 (.A(clk_cnt[2]), .B(clk_cnt[13]), .Z(n9)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(30[6:20])
    defparam i1_2_lut_adj_19.init = 16'heeee;
    LUT4 i970_3_lut_rep_27_4_lut (.A(key_out[14]), .B(key_out[13]), .C(n2042), 
         .D(n727), .Z(n2255)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(74[9:27])
    defparam i970_3_lut_rep_27_4_lut.init = 16'hbf00;
    LUT4 i1907_2_lut_2_lut_3_lut (.A(n2257), .B(n10), .C(n1959), .Z(a_to_g_6__N_71[1])) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i1907_2_lut_2_lut_3_lut.init = 16'hdfdf;
    LUT4 i2_4_lut (.A(key_out[3]), .B(n2262), .C(n2076), .D(key_out[14]), 
         .Z(n23)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_20 (.A(key_out[13]), .B(n2040), .C(n2037), .D(key_out[14]), 
         .Z(n26)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_20.init = 16'ha088;
    LUT4 i2_4_lut_adj_21 (.A(n2265), .B(key_out[2]), .C(key_out[4]), .D(key_out[3]), 
         .Z(n2037)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;
    defparam i2_4_lut_adj_21.init = 16'h0880;
    LUT4 i1875_2_lut (.A(key_out[2]), .B(key_out[13]), .Z(n2076)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1875_2_lut.init = 16'h6666;
    LUT4 key_out_14__bdd_4_lut (.A(key_out[14]), .B(key_out[15]), .C(key_out[12]), 
         .D(key_out[13]), .Z(n2161)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam key_out_14__bdd_4_lut.init = 16'h6880;
    LUT4 i1014_3_lut_rep_30_4_lut_3_lut (.A(key_out[14]), .B(key_out[13]), 
         .C(n2042), .Z(n2258)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(75[9:27])
    defparam i1014_3_lut_rep_30_4_lut_3_lut.init = 16'h9f9f;
    LUT4 i1_4_lut_adj_22 (.A(n2050), .B(n4_adj_11), .C(key_out[1]), .D(key_out[2]), 
         .Z(n2061)) /* synthesis lut_function=(((C (D)+!C !(D))+!B)+!A) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(86[9:27])
    defparam i1_4_lut_adj_22.init = 16'hf77f;
    LUT4 i958_3_lut_4_lut (.A(key_out[14]), .B(key_out[13]), .C(n2042), 
         .D(n706), .Z(n1162)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(75[9:27])
    defparam i958_3_lut_4_lut.init = 16'hdf00;
    LUT4 i2_4_lut_adj_23 (.A(n2057), .B(n1160), .C(key_out[7]), .D(n2070), 
         .Z(n1959)) /* synthesis lut_function=(!(A+!(B (C+!(D))))) */ ;
    defparam i2_4_lut_adj_23.init = 16'h4044;
    PFUMX i1974 (.BLUT(n2283), .ALUT(n2284), .C0(key_out[10]), .Z(n2285));
    LUT4 i1530_2_lut (.A(LED_get[1]), .B(LED_get[0]), .Z(n29)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(100[15:22])
    defparam i1530_2_lut.init = 16'h6666;
    LUT4 i1860_2_lut_4_lut (.A(n2280), .B(key_out[15]), .C(n1999), .D(key_out[9]), 
         .Z(n2070)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam i1860_2_lut_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_4_lut_adj_24 (.A(n2262), .B(key_out[7]), .C(n2016), 
         .D(key_out[15]), .Z(n2056)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_24.init = 16'h8000;
    LUT4 i6_4_lut (.A(clk_cnt[3]), .B(clk_cnt[1]), .C(clk_cnt[0]), .D(clk_cnt[7]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(30[6:20])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i1909_4_lut (.A(n2056), .B(n10), .C(key_out[11]), .D(key_out[12]), 
         .Z(n2120)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;
    defparam i1909_4_lut.init = 16'hcecc;
    LUT4 i1_2_lut_rep_35_3_lut_4_lut (.A(key_out[7]), .B(key_out[6]), .C(key_out[12]), 
         .D(key_out[15]), .Z(n2263)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_35_3_lut_4_lut.init = 16'h8000;
    LUT4 i1911_3_lut (.A(n2120), .B(n2258), .C(n10_adj_10), .Z(a_to_g_6__N_71[6])) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i1911_3_lut.init = 16'hfbfb;
    LUT4 i2_3_lut_4_lut_adj_25 (.A(n2262), .B(key_out[7]), .C(key_out[6]), 
         .D(key_out[5]), .Z(n2044)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_25.init = 16'h0080;
    LUT4 i1904_3_lut_4_lut_4_lut (.A(n2255), .B(n1160), .C(n10), .D(n2257), 
         .Z(a_to_g_6__N_71[2])) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1904_3_lut_4_lut_4_lut.init = 16'hf7ff;
    FD1P3IX apa_77 (.D(n2438), .SP(clk_c_enable_1), .CD(apa_N_10), .CK(clk_c), 
            .Q(apa)) /* synthesis lse_init_val=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(29[2] 42[10])
    defparam apa_77.GSR = "ENABLED";
    CCU2D clk_cnt_148_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1765), .S0(n62));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_148_add_4_15.INIT1 = 16'h0000;
    defparam clk_cnt_148_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_148_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_148_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1761), .COUT(n1762), .S0(n70), .S1(n69));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_148_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_148_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_148_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut (.A(key_out[2]), .B(key_out[1]), .C(key_out[3]), 
         .D(key_out[0]), .Z(n68)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(72[4] 90[13])
    defparam i1_4_lut_4_lut.init = 16'h6880;
    LUT4 i1912_2_lut_4_lut_4_lut (.A(n2042), .B(key_out[14]), .C(key_out[13]), 
         .D(n1959), .Z(n2123)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D)))+!A (D))) */ ;
    defparam i1912_2_lut_4_lut_4_lut.init = 16'h28ff;
    LUT4 i1_4_lut_then_4_lut (.A(n2006), .B(key_out[8]), .C(key_out[9]), 
         .D(key_out[11]), .Z(n2284)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(72[4] 90[13])
    defparam i1_4_lut_then_4_lut.init = 16'h2880;
    LUT4 i3_4_lut_adj_26 (.A(clk_cnt[10]), .B(clk_cnt[4]), .C(clk_cnt[9]), 
         .D(clk_cnt[6]), .Z(n1791)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_26.init = 16'h8000;
    LUT4 i3_4_lut_adj_27 (.A(key_out[2]), .B(n2261), .C(n1984), .D(n2264), 
         .Z(n2023)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam i3_4_lut_adj_27.init = 16'h8000;
    LUT4 i2_4_lut_adj_28 (.A(button_four_c_2), .B(button_four_c_3), .C(BTN_cache[2]), 
         .D(BTN_cache[3]), .Z(n6_adj_7)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(93[6:29])
    defparam i2_4_lut_adj_28.init = 16'h7bde;
    LUT4 button_four_3__I_0_i2_2_lut (.A(button_four_c_1), .B(BTN_cache[1]), 
         .Z(n2)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(93[6:29])
    defparam button_four_3__I_0_i2_2_lut.init = 16'h6666;
    LUT4 i4_4_lut (.A(n2272), .B(n2260), .C(n2263), .D(n6_adj_6), .Z(n2014)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_29 (.A(LED_get[0]), .B(LED_get[2]), .C(n2064), .D(LED_get[3]), 
         .Z(n689)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i1_4_lut_adj_29.init = 16'hbfff;
    LUT4 i1854_2_lut (.A(LED_get[1]), .B(LED_get[4]), .Z(n2064)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1854_2_lut.init = 16'h8888;
    FD1P3AX key_out_i0 (.D(COL_c_0), .SP(key_out_15__N_60), .CK(apa), 
            .Q(key_out[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam key_out_i0.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_30 (.A(key_out[11]), .B(key_out[4]), .C(key_out[12]), 
         .D(n2016), .Z(n1999)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam i3_4_lut_adj_30.init = 16'h8000;
    LUT4 i3_4_lut_adj_31 (.A(key_out[7]), .B(n2269), .C(n1984), .D(n2040), 
         .Z(n2041)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_31.init = 16'h8000;
    LUT4 i1887_2_lut_2_lut (.A(apa_enable_5), .B(n689), .Z(apa_enable_8)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1887_2_lut_2_lut.init = 16'h1111;
    LUT4 i1_2_lut_adj_32 (.A(key_out[10]), .B(key_out[8]), .Z(n4_adj_3)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_32.init = 16'hbbbb;
    LUT4 i2_3_lut_adj_33 (.A(n2014), .B(key_out[10]), .C(key_out[8]), 
         .Z(n718)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i2_3_lut_adj_33.init = 16'hf7f7;
    LUT4 i1_4_lut_adj_34 (.A(key_out[2]), .B(n2053), .C(key_out[1]), .D(n1990), 
         .Z(n2016)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam i1_4_lut_adj_34.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_35 (.A(key_out[11]), .B(n2268), .C(key_out[10]), 
         .D(key_out[1]), .Z(n1984)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam i1_2_lut_3_lut_4_lut_adj_35.init = 16'h8000;
    LUT4 i1_4_lut_adj_36 (.A(n1188), .B(key_out[11]), .C(n6), .D(n2263), 
         .Z(n10)) /* synthesis lut_function=((B (C (D)))+!A) */ ;
    defparam i1_4_lut_adj_36.init = 16'hd555;
    LUT4 i2_4_lut_adj_37 (.A(n12_adj_4), .B(n1990), .C(n2022), .D(n2050), 
         .Z(n6)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i2_4_lut_adj_37.init = 16'hc8c0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_38 (.A(key_out[11]), .B(n2268), .C(n2263), 
         .D(key_out[5]), .Z(n4_adj_11)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam i1_2_lut_3_lut_4_lut_adj_38.init = 16'h8000;
    LUT4 i41_2_lut (.A(key_out[1]), .B(key_out[2]), .Z(n12_adj_4)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i41_2_lut.init = 16'h6666;
    LUT4 i2_4_lut_adj_39 (.A(n2264), .B(key_out[1]), .C(n2272), .D(n2072), 
         .Z(n2022)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_39.init = 16'h8000;
    LUT4 i15_2_lut (.A(num_cnt[0]), .B(num_cnt[1]), .Z(n1945)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i15_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_40 (.A(key_out[6]), .B(n2259), .C(n2256), .D(n12_adj_9), 
         .Z(n10_adj_10)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_40.init = 16'hdc50;
    CCU2D clk_cnt_148_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1760), .COUT(n1761), .S0(n72), .S1(n71_adj_13));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_148_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_148_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_148_add_4_5.INJECT1_1 = "NO";
    LUT4 key_out_7__bdd_4_lut_1917 (.A(key_out[7]), .B(key_out[4]), .C(key_out[6]), 
         .D(key_out[5]), .Z(n2162)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam key_out_7__bdd_4_lut_1917.init = 16'h6880;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i1874_2_lut (.A(key_out[4]), .B(key_out[10]), .Z(n2072)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1874_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut_adj_41 (.A(n2270), .B(n2279), .C(n2280), 
         .D(key_out[9]), .Z(n2038)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(72[4] 90[13])
    defparam i1_2_lut_3_lut_4_lut_adj_41.init = 16'h8000;
    LUT4 i3_4_lut_rep_39 (.A(button_four_c_0), .B(n6_adj_7), .C(n2), .D(BTN_cache[0]), 
         .Z(apa_enable_5)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(93[6:29])
    defparam i3_4_lut_rep_39.init = 16'hfdfe;
    LUT4 i1_2_lut_rep_40 (.A(key_out[14]), .B(key_out[13]), .Z(n2268)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam i1_2_lut_rep_40.init = 16'h8888;
    LUT4 i984_4_lut (.A(n718), .B(n2266), .C(n2026), .D(n4), .Z(n1188)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i984_4_lut.init = 16'ha8a0;
    FD1S3AX clk_cnt_148__i0 (.D(n75), .CK(clk_c), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_42 (.A(key_out[14]), .B(key_out[13]), .C(key_out[5]), 
         .Z(n1990)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam i1_2_lut_3_lut_adj_42.init = 16'h8080;
    FD1S3AX clk_cnt_148__i13 (.D(n62), .CK(clk_c), .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148__i13.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_43 (.A(key_out[10]), .B(n4_adj_2), .C(n2140), .D(key_out[11]), 
         .Z(n2026)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(72[4] 90[13])
    defparam i2_4_lut_adj_43.init = 16'h8000;
    OB ROW_pad_1 (.I(ROW_c_1), .O(ROW[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[8:11])
    LUT4 i1_4_lut_adj_44 (.A(n71), .B(n2272), .C(key_out[1]), .D(key_out[0]), 
         .Z(n4)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(72[4] 90[13])
    defparam i1_4_lut_adj_44.init = 16'h8000;
    LUT4 i1_4_lut_adj_45 (.A(n1998), .B(n2006), .C(n68), .D(n2266), 
         .Z(n4_adj_2)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(72[4] 90[13])
    defparam i1_4_lut_adj_45.init = 16'hc888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_46 (.A(key_out[8]), .B(n2274), .C(n2272), 
         .D(key_out[4]), .Z(n2040)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_46.init = 16'h8000;
    LUT4 i2_4_lut_adj_47 (.A(n727), .B(n2257), .C(n2014), .D(n4_adj_3), 
         .Z(n1198)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;
    defparam i2_4_lut_adj_47.init = 16'h8808;
    FD1S3AX clk_cnt_148__i12 (.D(n63), .CK(clk_c), .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148__i12.GSR = "ENABLED";
    FD1S3AX clk_cnt_148__i11 (.D(n64), .CK(clk_c), .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148__i11.GSR = "ENABLED";
    FD1S3AX clk_cnt_148__i10 (.D(n65), .CK(clk_c), .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148__i10.GSR = "ENABLED";
    FD1S3AX clk_cnt_148__i9 (.D(n66), .CK(clk_c), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148__i9.GSR = "ENABLED";
    FD1S3AX clk_cnt_148__i8 (.D(n67), .CK(clk_c), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148__i8.GSR = "ENABLED";
    FD1S3AX clk_cnt_148__i7 (.D(n68_adj_12), .CK(clk_c), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148__i7.GSR = "ENABLED";
    FD1S3AX clk_cnt_148__i6 (.D(n69), .CK(clk_c), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148__i6.GSR = "ENABLED";
    FD1S3AX clk_cnt_148__i5 (.D(n70), .CK(clk_c), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148__i5.GSR = "ENABLED";
    FD1S3AX clk_cnt_148__i4 (.D(n71_adj_13), .CK(clk_c), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148__i4.GSR = "ENABLED";
    FD1S3AX clk_cnt_148__i3 (.D(n72), .CK(clk_c), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148__i3.GSR = "ENABLED";
    FD1S3AX clk_cnt_148__i2 (.D(n73), .CK(clk_c), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148__i2.GSR = "ENABLED";
    FD1S3AX clk_cnt_148__i1 (.D(n74), .CK(clk_c), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(41[14:21])
    defparam clk_cnt_148__i1.GSR = "ENABLED";
    FD1S3IX LED_get_149__i4 (.D(n26_adj_8), .CK(apa), .CD(n319), .Q(LED_get[4]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(100[15:22])
    defparam LED_get_149__i4.GSR = "ENABLED";
    FD1S3IX LED_get_149__i3 (.D(n27), .CK(apa), .CD(n319), .Q(LED_get[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(100[15:22])
    defparam LED_get_149__i3.GSR = "ENABLED";
    FD1S3IX LED_get_149__i2 (.D(n28), .CK(apa), .CD(n319), .Q(LED_get[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(100[15:22])
    defparam LED_get_149__i2.GSR = "ENABLED";
    FD1S3IX LED_get_149__i1 (.D(n29), .CK(apa), .CD(n319), .Q(LED_get[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(100[15:22])
    defparam LED_get_149__i1.GSR = "ENABLED";
    FD1P3AX BTN_cache_i0_i3 (.D(button_four_c_3), .SP(apa_enable_5), .CK(apa), 
            .Q(BTN_cache[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam BTN_cache_i0_i3.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_48 (.A(n2162), .B(n2272), .C(key_out[1]), .D(key_out[0]), 
         .Z(n1998)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(72[4] 90[13])
    defparam i1_4_lut_adj_48.init = 16'h8000;
    LUT4 i1_4_lut_adj_49 (.A(n2161), .B(n2285), .C(n2147), .D(n2140), 
         .Z(n71)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(72[4] 90[13])
    defparam i1_4_lut_adj_49.init = 16'heccc;
    FD1P3AX BTN_cache_i0_i2 (.D(button_four_c_2), .SP(apa_enable_5), .CK(apa), 
            .Q(BTN_cache[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam BTN_cache_i0_i2.GSR = "ENABLED";
    FD1P3AX BTN_cache_i0_i1 (.D(button_four_c_1), .SP(apa_enable_5), .CK(apa), 
            .Q(BTN_cache[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam BTN_cache_i0_i1.GSR = "ENABLED";
    FD1P3IX num_cnt__i2 (.D(n1941), .SP(apa_N_10), .CD(n359), .CK(clk_c), 
            .Q(num_cnt[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(29[2] 42[10])
    defparam num_cnt__i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_32_3_lut_4_lut (.A(key_out[14]), .B(key_out[13]), 
         .C(key_out[1]), .D(key_out[11]), .Z(n2260)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam i1_2_lut_rep_32_3_lut_4_lut.init = 16'h8000;
    FD1P3IX num_cnt__i1 (.D(n1945), .SP(apa_N_10), .CD(n359), .CK(clk_c), 
            .Q(num_cnt[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(29[2] 42[10])
    defparam num_cnt__i1.GSR = "ENABLED";
    FD1P3AX a_to_g_i0_i7 (.D(a_to_g_6__N_71[6]), .SP(a_to_g_6__N_78), .CK(apa), 
            .Q(a_to_g_c_6));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam a_to_g_i0_i7.GSR = "ENABLED";
    FD1P3AX a_to_g_i0_i6 (.D(a_to_g_6__N_71[5]), .SP(a_to_g_6__N_78), .CK(apa), 
            .Q(a_to_g_c_5));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam a_to_g_i0_i6.GSR = "ENABLED";
    FD1P3AX a_to_g_i0_i5 (.D(a_to_g_6__N_71[4]), .SP(a_to_g_6__N_78), .CK(apa), 
            .Q(a_to_g_c_4));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam a_to_g_i0_i5.GSR = "ENABLED";
    FD1P3AX a_to_g_i0_i4 (.D(a_to_g_6__N_71[3]), .SP(a_to_g_6__N_78), .CK(apa), 
            .Q(a_to_g_c_3));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam a_to_g_i0_i4.GSR = "ENABLED";
    FD1P3AX a_to_g_i0_i3 (.D(a_to_g_6__N_71[2]), .SP(a_to_g_6__N_78), .CK(apa), 
            .Q(a_to_g_c_2));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam a_to_g_i0_i3.GSR = "ENABLED";
    FD1P3AX a_to_g_i0_i2 (.D(a_to_g_6__N_71[1]), .SP(a_to_g_6__N_78), .CK(apa), 
            .Q(a_to_g_c_1));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam a_to_g_i0_i2.GSR = "ENABLED";
    FD1P3AX led_four_i0_i4 (.D(BTN_cache[3]), .SP(apa_enable_8), .CK(apa), 
            .Q(led_four_c_3));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam led_four_i0_i4.GSR = "ENABLED";
    FD1P3AX led_four_i0_i3 (.D(BTN_cache[2]), .SP(apa_enable_8), .CK(apa), 
            .Q(led_four_c_2));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam led_four_i0_i3.GSR = "ENABLED";
    FD1P3AX led_four_i0_i2 (.D(BTN_cache[1]), .SP(apa_enable_8), .CK(apa), 
            .Q(led_four_c_1));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam led_four_i0_i2.GSR = "ENABLED";
    FD1P3AX key_out_i15 (.D(COL_c_3), .SP(key_out_15__N_45), .CK(apa), 
            .Q(key_out[15]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam key_out_i15.GSR = "ENABLED";
    FD1P3AX key_out_i14 (.D(COL_c_2), .SP(key_out_15__N_45), .CK(apa), 
            .Q(key_out[14]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam key_out_i14.GSR = "ENABLED";
    FD1P3AX key_out_i13 (.D(COL_c_1), .SP(key_out_15__N_45), .CK(apa), 
            .Q(key_out[13]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam key_out_i13.GSR = "ENABLED";
    FD1P3AX key_out_i12 (.D(COL_c_0), .SP(key_out_15__N_45), .CK(apa), 
            .Q(key_out[12]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam key_out_i12.GSR = "ENABLED";
    FD1P3AX key_out_i11 (.D(COL_c_3), .SP(key_out_15__N_50), .CK(apa), 
            .Q(key_out[11]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam key_out_i11.GSR = "ENABLED";
    FD1P3AX key_out_i10 (.D(COL_c_2), .SP(key_out_15__N_50), .CK(apa), 
            .Q(key_out[10]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam key_out_i10.GSR = "ENABLED";
    FD1P3AX key_out_i9 (.D(COL_c_1), .SP(key_out_15__N_50), .CK(apa), 
            .Q(key_out[9]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam key_out_i9.GSR = "ENABLED";
    FD1P3AX key_out_i8 (.D(COL_c_0), .SP(key_out_15__N_50), .CK(apa), 
            .Q(key_out[8]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam key_out_i8.GSR = "ENABLED";
    FD1P3AX key_out_i7 (.D(COL_c_3), .SP(key_out_15__N_55), .CK(apa), 
            .Q(key_out[7]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam key_out_i7.GSR = "ENABLED";
    FD1P3AX key_out_i6 (.D(COL_c_2), .SP(key_out_15__N_55), .CK(apa), 
            .Q(key_out[6]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam key_out_i6.GSR = "ENABLED";
    FD1P3AX key_out_i5 (.D(COL_c_1), .SP(key_out_15__N_55), .CK(apa), 
            .Q(key_out[5]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam key_out_i5.GSR = "ENABLED";
    FD1P3AX key_out_i4 (.D(COL_c_0), .SP(key_out_15__N_55), .CK(apa), 
            .Q(key_out[4]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam key_out_i4.GSR = "ENABLED";
    FD1P3AX key_out_i3 (.D(COL_c_3), .SP(key_out_15__N_60), .CK(apa), 
            .Q(key_out[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam key_out_i3.GSR = "ENABLED";
    FD1P3AX key_out_i2 (.D(COL_c_2), .SP(key_out_15__N_60), .CK(apa), 
            .Q(key_out[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam key_out_i2.GSR = "ENABLED";
    FD1P3AX key_out_i1 (.D(COL_c_1), .SP(key_out_15__N_60), .CK(apa), 
            .Q(key_out[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam key_out_i1.GSR = "ENABLED";
    FD1S3IX ROW_i4 (.D(n2273), .CK(apa_N_6), .CD(num_cnt[2]), .Q(ROW_c_3));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(47[2] 54[9])
    defparam ROW_i4.GSR = "ENABLED";
    FD1S3IX ROW_i3 (.D(n2276), .CK(apa_N_6), .CD(num_cnt[2]), .Q(ROW_c_2));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(47[2] 54[9])
    defparam ROW_i3.GSR = "ENABLED";
    FD1S3IX ROW_i2 (.D(n2275), .CK(apa_N_6), .CD(num_cnt[2]), .Q(ROW_c_1));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(47[2] 54[9])
    defparam ROW_i2.GSR = "ENABLED";
    FD1S3IX ROW_i1 (.D(n2278), .CK(apa_N_6), .CD(num_cnt[2]), .Q(ROW_c_0));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(47[2] 54[9])
    defparam ROW_i1.GSR = "ENABLED";
    OB ROW_pad_0 (.I(ROW_c_0), .O(ROW[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[8:11])
    OB a_to_g_pad_6 (.I(a_to_g_c_6), .O(a_to_g[6]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:9])
    OB a_to_g_pad_5 (.I(a_to_g_c_5), .O(a_to_g[5]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:9])
    OB a_to_g_pad_4 (.I(a_to_g_c_4), .O(a_to_g[4]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:9])
    OB a_to_g_pad_3 (.I(a_to_g_c_3), .O(a_to_g[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:9])
    OB a_to_g_pad_2 (.I(a_to_g_c_2), .O(a_to_g[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:9])
    OB a_to_g_pad_1 (.I(a_to_g_c_1), .O(a_to_g[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:9])
    OB a_to_g_pad_0 (.I(a_to_g_c_0), .O(a_to_g[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:9])
    OB led_four_pad_3 (.I(led_four_c_3), .O(led_four[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:11])
    OB led_four_pad_2 (.I(led_four_c_2), .O(led_four[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:11])
    OB led_four_pad_1 (.I(led_four_c_1), .O(led_four[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:11])
    OB led_four_pad_0 (.I(led_four_c_0), .O(led_four[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:11])
    OB seg_pad (.I(GND_net), .O(seg));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(12[3:6])
    IB COL_pad_3 (.I(COL[3]), .O(COL_c_3));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(8[8:11])
    IB COL_pad_2 (.I(COL[2]), .O(COL_c_2));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(8[8:11])
    IB COL_pad_1 (.I(COL[1]), .O(COL_c_1));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(8[8:11])
    IB COL_pad_0 (.I(COL[0]), .O(COL_c_0));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(8[8:11])
    IB button_four_pad_3 (.I(button_four[3]), .O(button_four_c_3));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(9[3:14])
    IB button_four_pad_2 (.I(button_four[2]), .O(button_four_c_2));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(9[3:14])
    IB button_four_pad_1 (.I(button_four[1]), .O(button_four_c_1));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(9[3:14])
    IB button_four_pad_0 (.I(button_four[0]), .O(button_four_c_0));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(9[3:14])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(13[3:6])
    LUT4 i1_rep_22_2_lut (.A(key_out[10]), .B(key_out[11]), .Z(n2147)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam i1_rep_22_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_41 (.A(key_out[15]), .B(key_out[12]), .Z(n2269)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(72[4] 90[13])
    defparam i1_2_lut_rep_41.init = 16'h8888;
    LUT4 i1_rep_15_2_lut (.A(key_out[8]), .B(key_out[9]), .Z(n2140)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(60[2] 103[9])
    defparam i1_rep_15_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_33_3_lut_4_lut (.A(key_out[15]), .B(key_out[12]), 
         .C(key_out[5]), .D(n2270), .Z(n2261)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(72[4] 90[13])
    defparam i1_2_lut_rep_33_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_50 (.A(key_out[8]), .B(n2274), .C(n2271), 
         .D(key_out[4]), .Z(n2050)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_50.init = 16'h8000;
    LUT4 i1_2_lut_rep_42 (.A(key_out[7]), .B(key_out[6]), .Z(n2270)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_42.init = 16'h8888;
    LUT4 i1878_2_lut (.A(num_cnt[0]), .B(apa_N_10), .Z(n2089)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(29[2] 42[10])
    defparam i1878_2_lut.init = 16'h6666;
    LUT4 i1884_4_lut (.A(n1844), .B(n1791), .C(clk_cnt[8]), .D(clk_cnt[5]), 
         .Z(apa_N_10)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(30[6:20])
    defparam i1884_4_lut.init = 16'h4000;
    LUT4 i7_4_lut_adj_51 (.A(n9), .B(n14), .C(clk_cnt[11]), .D(clk_cnt[12]), 
         .Z(n1844)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(30[6:20])
    defparam i7_4_lut_adj_51.init = 16'hfeff;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

