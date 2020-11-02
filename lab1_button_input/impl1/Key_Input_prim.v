// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Mon Nov 02 19:53:57 2020
//
// Verilog Description of module Key_Input
//

module Key_Input (row, COL, independent_keys, seg1, seg2, clk);   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(4[8:17])
    output [3:0]row;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[3:6])
    input [3:0]COL;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(8[3:6])
    input [3:0]independent_keys;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(9[3:19])
    output [6:0]seg1;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:7])
    output [7:0]seg2;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:7])
    input clk;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(12[3:6])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(12[3:6])
    wire clk_200hz /* synthesis is_clock=1, SET_AS_NETWORK=clk_200hz */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(27[8:17])
    wire clk_200hz_N_44 /* synthesis is_inv_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(29[8:16])
    
    wire GND_net, VCC_net, row_c_3, row_c_2, row_c_1, row_c_0, independent_keys_c_3, 
        independent_keys_c_2, independent_keys_c_1, independent_keys_c_0, 
        seg2_c_7, seg2_c_5, n938, seg2_c_3, seg2_c_2, seg2_c_1;
    wire [16:0]clk_cnt;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(19[8:15])
    wire [1:0]state;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(21[8:13])
    wire [3:0]ind_keys;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(29[8:16])
    wire [3:0]ind_keys_r;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(30[8:18])
    wire [3:0]key_pulse2;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(31[8:18])
    
    wire n879, clk_c_enable_5;
    wire [1:0]state_1__N_37;
    
    wire n878, n885;
    wire [3:0]key_pulse2_3__N_53;
    wire [7:0]seg2_7__N_12;
    
    wire n883, clk_c_enable_4, n884, n977, clk_c_enable_1, n882, 
        n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, 
        n84, n85, n86, n87, n88, n89, n90, n894, n755, n939, 
        n963, clk_c_enable_3, n12, n8, n903, clk_c_enable_6, n881, 
        n955, n880, n1016, n1002;
    
    VHI i2 (.Z(VCC_net));
    INV i624 (.A(clk_200hz), .Z(clk_200hz_N_44));
    CCU2D clk_cnt_126_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n878), .COUT(n879), .S0(n89), .S1(n88));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_126_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_126_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_126_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_126_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n882), .COUT(n883), .S0(n81), .S1(n80));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_126_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_126_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_126_add_4_11.INJECT1_1 = "NO";
    FD1S3AX ind_keys_r_i0 (.D(ind_keys[0]), .CK(clk_200hz), .Q(ind_keys_r[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(51[2] 70[9])
    defparam ind_keys_r_i0.GSR = "ENABLED";
    FD1S3AX ind_keys_i0_i0 (.D(independent_keys_c_0), .CK(clk_200hz_N_44), 
            .Q(ind_keys[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(51[2] 70[9])
    defparam ind_keys_i0_i0.GSR = "ENABLED";
    FD1S3AX key_pulse2_i0_i3 (.D(key_pulse2_3__N_53[3]), .CK(clk_200hz_N_44), 
            .Q(key_pulse2[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(51[2] 70[9])
    defparam key_pulse2_i0_i3.GSR = "ENABLED";
    LUT4 i619_2_lut_3_lut (.A(key_pulse2[1]), .B(key_pulse2[2]), .C(key_pulse2[3]), 
         .Z(seg2_7__N_12[4])) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i619_2_lut_3_lut.init = 16'h0e0e;
    OB row_pad_3 (.I(row_c_3), .O(row[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[3:6])
    LUT4 i3_3_lut (.A(n938), .B(clk_cnt[13]), .C(clk_cnt[11]), .Z(n8)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam i3_3_lut.init = 16'h8080;
    CCU2D clk_cnt_126_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n878), .S1(n90));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_126_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_126_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_126_add_4_1.INJECT1_1 = "NO";
    CCU2D clk_cnt_126_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n885), .S0(n75), .S1(n74));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_126_add_4_17.INIT1 = 16'hfaaa;
    defparam clk_cnt_126_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_126_add_4_17.INJECT1_1 = "NO";
    FD1S3AX key_pulse2_i0_i2 (.D(key_pulse2_3__N_53[2]), .CK(clk_200hz_N_44), 
            .Q(key_pulse2[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(51[2] 70[9])
    defparam key_pulse2_i0_i2.GSR = "ENABLED";
    LUT4 and_38_i3_2_lut (.A(ind_keys_r[2]), .B(ind_keys[2]), .Z(key_pulse2_3__N_53[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(69[18:28])
    defparam and_38_i3_2_lut.init = 16'h2222;
    CCU2D clk_cnt_126_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n884), .COUT(n885), .S0(n77), .S1(n76));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_126_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_126_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_126_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_126_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n881), .COUT(n882), .S0(n83), .S1(n82));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_126_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_126_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_126_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_126_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n880), .COUT(n881), .S0(n85), .S1(n84));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_126_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_126_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_126_add_4_7.INJECT1_1 = "NO";
    LUT4 i617_2_lut_3_lut (.A(key_pulse2[1]), .B(key_pulse2[2]), .C(key_pulse2[3]), 
         .Z(seg2_7__N_12[2])) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i617_2_lut_3_lut.init = 16'h0101;
    LUT4 key_pulse2_1__bdd_4_lut (.A(key_pulse2[1]), .B(key_pulse2[3]), 
         .C(key_pulse2[0]), .D(key_pulse2[2]), .Z(clk_c_enable_1)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam key_pulse2_1__bdd_4_lut.init = 16'h0116;
    LUT4 i428_1_lut_2_lut (.A(key_pulse2[2]), .B(key_pulse2[3]), .Z(seg2_7__N_12[3])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i428_1_lut_2_lut.init = 16'h2222;
    CCU2D clk_cnt_126_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n879), .COUT(n880), .S0(n87), .S1(n86));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_126_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_126_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_126_add_4_5.INJECT1_1 = "NO";
    FD1S3AX key_pulse2_i0_i1 (.D(key_pulse2_3__N_53[1]), .CK(clk_200hz_N_44), 
            .Q(key_pulse2[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(51[2] 70[9])
    defparam key_pulse2_i0_i1.GSR = "ENABLED";
    FD1S3AX key_pulse2_i0_i0 (.D(key_pulse2_3__N_53[0]), .CK(clk_200hz_N_44), 
            .Q(key_pulse2[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(51[2] 70[9])
    defparam key_pulse2_i0_i0.GSR = "ENABLED";
    FD1S3AX clk_cnt_126__i0 (.D(n90), .CK(clk_c), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126__i0.GSR = "ENABLED";
    LUT4 i6_1_lut (.A(key_pulse2[3]), .Z(seg2_7__N_12[1])) /* synthesis lut_function=(!(A)) */ ;
    defparam i6_1_lut.init = 16'h5555;
    FD1P3AX seg2_i8 (.D(seg2_7__N_12[4]), .SP(clk_c_enable_1), .CK(clk_c), 
            .Q(seg2_c_7));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(76[2] 104[9])
    defparam seg2_i8.GSR = "ENABLED";
    OB row_pad_2 (.I(row_c_2), .O(row[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[3:6])
    VLO i1 (.Z(GND_net));
    FD1P3AX seg2_i6 (.D(n1002), .SP(clk_c_enable_4), .CK(clk_c), .Q(seg2_c_5));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(76[2] 104[9])
    defparam seg2_i6.GSR = "ENABLED";
    LUT4 key_pulse2_1__bdd_4_lut_622 (.A(key_pulse2[1]), .B(key_pulse2[2]), 
         .C(key_pulse2[0]), .D(key_pulse2[3]), .Z(clk_c_enable_5)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam key_pulse2_1__bdd_4_lut_622.init = 16'h0116;
    FD1P3AX seg2_i2 (.D(seg2_7__N_12[1]), .SP(clk_c_enable_3), .CK(clk_c), 
            .Q(seg2_c_1));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(76[2] 104[9])
    defparam seg2_i2.GSR = "ENABLED";
    FD1S3AX ind_keys_i0_i3 (.D(independent_keys_c_3), .CK(clk_200hz_N_44), 
            .Q(ind_keys[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(51[2] 70[9])
    defparam ind_keys_i0_i3.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n939), .B(clk_cnt[13]), .C(n955), .D(clk_cnt[11]), 
         .Z(clk_c_enable_6)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam i1_4_lut.init = 16'h0002;
    FD1S3AX ind_keys_i0_i2 (.D(independent_keys_c_2), .CK(clk_200hz_N_44), 
            .Q(ind_keys[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(51[2] 70[9])
    defparam ind_keys_i0_i2.GSR = "ENABLED";
    FD1S3AX ind_keys_i0_i1 (.D(independent_keys_c_1), .CK(clk_200hz_N_44), 
            .Q(ind_keys[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(51[2] 70[9])
    defparam ind_keys_i0_i1.GSR = "ENABLED";
    FD1S3AX ind_keys_r_i3 (.D(ind_keys[3]), .CK(clk_200hz), .Q(ind_keys_r[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(51[2] 70[9])
    defparam ind_keys_r_i3.GSR = "ENABLED";
    FD1S3AX ind_keys_r_i2 (.D(ind_keys[2]), .CK(clk_200hz), .Q(ind_keys_r[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(51[2] 70[9])
    defparam ind_keys_r_i2.GSR = "ENABLED";
    FD1S3AX ind_keys_r_i1 (.D(ind_keys[1]), .CK(clk_200hz), .Q(ind_keys_r[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(51[2] 70[9])
    defparam ind_keys_r_i1.GSR = "ENABLED";
    FD1S3JX row_i4 (.D(state[0]), .CK(clk_200hz), .PD(state[1]), .Q(row_c_3));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(51[2] 70[9])
    defparam row_i4.GSR = "ENABLED";
    FD1S3JX row_i3 (.D(state_1__N_37[0]), .CK(clk_200hz), .PD(state[1]), 
            .Q(row_c_2));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(51[2] 70[9])
    defparam row_i3.GSR = "ENABLED";
    FD1S3JX row_i2 (.D(state[0]), .CK(clk_200hz), .PD(n755), .Q(row_c_1));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(51[2] 70[9])
    defparam row_i2.GSR = "ENABLED";
    FD1S3AX state_i1 (.D(state_1__N_37[1]), .CK(clk_200hz), .Q(state[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(51[2] 70[9])
    defparam state_i1.GSR = "ENABLED";
    LUT4 i6_4_lut (.A(n938), .B(n12), .C(clk_cnt[16]), .D(clk_cnt[12]), 
         .Z(n939)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam i6_4_lut.init = 16'h8000;
    FD1S3AX clk_cnt_126__i1 (.D(n89), .CK(clk_c), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126__i1.GSR = "ENABLED";
    OB row_pad_1 (.I(row_c_1), .O(row[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[3:6])
    OB row_pad_0 (.I(row_c_0), .O(row[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(7[3:6])
    OB seg1_pad_6 (.I(VCC_net), .O(seg1[6]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:7])
    OB seg1_pad_5 (.I(VCC_net), .O(seg1[5]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:7])
    OB seg1_pad_4 (.I(VCC_net), .O(seg1[4]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:7])
    OB seg1_pad_3 (.I(VCC_net), .O(seg1[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:7])
    OB seg1_pad_2 (.I(VCC_net), .O(seg1[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:7])
    OB seg1_pad_1 (.I(VCC_net), .O(seg1[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:7])
    OB seg1_pad_0 (.I(GND_net), .O(seg1[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(10[3:7])
    OB seg2_pad_7 (.I(seg2_c_7), .O(seg2[7]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:7])
    OB seg2_pad_6 (.I(VCC_net), .O(seg2[6]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:7])
    OB seg2_pad_5 (.I(seg2_c_5), .O(seg2[5]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:7])
    OB seg2_pad_4 (.I(seg2_c_7), .O(seg2[4]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:7])
    OB seg2_pad_3 (.I(seg2_c_3), .O(seg2[3]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:7])
    OB seg2_pad_2 (.I(seg2_c_2), .O(seg2[2]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:7])
    OB seg2_pad_1 (.I(seg2_c_1), .O(seg2[1]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:7])
    OB seg2_pad_0 (.I(VCC_net), .O(seg2[0]));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(11[3:7])
    IB independent_keys_pad_3 (.I(independent_keys[3]), .O(independent_keys_c_3));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(9[3:19])
    IB independent_keys_pad_2 (.I(independent_keys[2]), .O(independent_keys_c_2));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(9[3:19])
    IB independent_keys_pad_1 (.I(independent_keys[1]), .O(independent_keys_c_1));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(9[3:19])
    IB independent_keys_pad_0 (.I(independent_keys[0]), .O(independent_keys_c_0));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(9[3:19])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(12[3:6])
    LUT4 i146_1_lut (.A(state[0]), .Z(state_1__N_37[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(52[3] 57[12])
    defparam i146_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_1 (.A(clk_cnt[9]), .B(n977), .C(n8), .D(clk_cnt[5]), 
         .Z(n903)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam i1_4_lut_adj_1.init = 16'h2000;
    TSALL TSALL_INST (.TSALL(GND_net));
    GSR GSR_INST (.GSR(VCC_net));
    FD1P3AX seg2_i4 (.D(seg2_7__N_12[3]), .SP(clk_c_enable_4), .CK(clk_c), 
            .Q(seg2_c_3));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(76[2] 104[9])
    defparam seg2_i4.GSR = "ENABLED";
    CCU2D clk_cnt_126_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n883), .COUT(n884), .S0(n79), .S1(n78));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_126_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_126_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_126_add_4_13.INJECT1_1 = "NO";
    FD1P3AX seg2_i3 (.D(seg2_7__N_12[2]), .SP(clk_c_enable_5), .CK(clk_c), 
            .Q(seg2_c_2));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(76[2] 104[9])
    defparam seg2_i3.GSR = "ENABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 m1_lut (.Z(n1016)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i599_2_lut (.A(clk_cnt[7]), .B(clk_cnt[16]), .Z(n963)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i599_2_lut.init = 16'heeee;
    FD1S3AX clk_cnt_126__i2 (.D(n88), .CK(clk_c), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126__i2.GSR = "ENABLED";
    FD1S3AX clk_cnt_126__i3 (.D(n87), .CK(clk_c), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126__i3.GSR = "ENABLED";
    FD1S3AX clk_cnt_126__i4 (.D(n86), .CK(clk_c), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126__i4.GSR = "ENABLED";
    FD1S3AX clk_cnt_126__i5 (.D(n85), .CK(clk_c), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126__i5.GSR = "ENABLED";
    FD1S3AX clk_cnt_126__i6 (.D(n84), .CK(clk_c), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126__i6.GSR = "ENABLED";
    FD1S3AX clk_cnt_126__i7 (.D(n83), .CK(clk_c), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126__i7.GSR = "ENABLED";
    FD1S3AX clk_cnt_126__i8 (.D(n82), .CK(clk_c), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126__i8.GSR = "ENABLED";
    FD1S3AX clk_cnt_126__i9 (.D(n81), .CK(clk_c), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126__i9.GSR = "ENABLED";
    FD1S3AX clk_cnt_126__i10 (.D(n80), .CK(clk_c), .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126__i10.GSR = "ENABLED";
    FD1S3AX clk_cnt_126__i11 (.D(n79), .CK(clk_c), .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126__i11.GSR = "ENABLED";
    FD1S3AX clk_cnt_126__i12 (.D(n78), .CK(clk_c), .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126__i12.GSR = "ENABLED";
    FD1S3AX clk_cnt_126__i13 (.D(n77), .CK(clk_c), .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126__i13.GSR = "ENABLED";
    FD1S3AX clk_cnt_126__i14 (.D(n76), .CK(clk_c), .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126__i14.GSR = "ENABLED";
    FD1S3AX clk_cnt_126__i15 (.D(n75), .CK(clk_c), .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126__i15.GSR = "ENABLED";
    FD1S3AX clk_cnt_126__i16 (.D(n74), .CK(clk_c), .Q(clk_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam clk_cnt_126__i16.GSR = "ENABLED";
    LUT4 key_pulse2_1__bdd_4_lut_621 (.A(key_pulse2[1]), .B(key_pulse2[0]), 
         .C(key_pulse2[3]), .D(key_pulse2[2]), .Z(clk_c_enable_3)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam key_pulse2_1__bdd_4_lut_621.init = 16'h0116;
    LUT4 i613_4_lut (.A(clk_cnt[12]), .B(n955), .C(clk_cnt[10]), .D(n963), 
         .Z(n977)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i613_4_lut.init = 16'hfffe;
    LUT4 i399_1_lut (.A(state[1]), .Z(n755)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(51[2] 70[9])
    defparam i399_1_lut.init = 16'h5555;
    FD1P3IX clk_200hz_75 (.D(n1016), .SP(clk_c_enable_6), .CD(n903), .CK(clk_c), 
            .Q(clk_200hz)) /* synthesis lse_init_val=1 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(37[2] 46[9])
    defparam clk_200hz_75.GSR = "ENABLED";
    LUT4 and_38_i1_2_lut (.A(ind_keys_r[0]), .B(ind_keys[0]), .Z(key_pulse2_3__N_53[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(69[18:28])
    defparam and_38_i1_2_lut.init = 16'h2222;
    LUT4 i2_3_lut (.A(clk_cnt[6]), .B(clk_cnt[14]), .C(clk_cnt[15]), .Z(n938)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam i2_3_lut.init = 16'h8080;
    LUT4 and_38_i4_2_lut (.A(ind_keys_r[3]), .B(ind_keys[3]), .Z(key_pulse2_3__N_53[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(69[18:28])
    defparam and_38_i4_2_lut.init = 16'h2222;
    LUT4 and_38_i2_2_lut (.A(ind_keys_r[1]), .B(ind_keys[1]), .Z(key_pulse2_3__N_53[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(69[18:28])
    defparam and_38_i2_2_lut.init = 16'h2222;
    LUT4 i5_4_lut (.A(clk_cnt[5]), .B(clk_cnt[9]), .C(clk_cnt[10]), .D(clk_cnt[7]), 
         .Z(n12)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(45[14:21])
    defparam i5_4_lut.init = 16'h1000;
    LUT4 i591_3_lut (.A(clk_cnt[0]), .B(n894), .C(clk_cnt[2]), .Z(n955)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i591_3_lut.init = 16'hfefe;
    LUT4 i3_4_lut (.A(clk_cnt[4]), .B(clk_cnt[3]), .C(clk_cnt[8]), .D(clk_cnt[1]), 
         .Z(n894)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 key_pulse2_0__bdd_4_lut (.A(key_pulse2[0]), .B(key_pulse2[1]), 
         .C(key_pulse2[2]), .D(key_pulse2[3]), .Z(clk_c_enable_4)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam key_pulse2_0__bdd_4_lut.init = 16'h0116;
    LUT4 i149_2_lut (.A(state[0]), .B(state[1]), .Z(state_1__N_37[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(52[3] 57[12])
    defparam i149_2_lut.init = 16'h6666;
    FD1S3JX row_i1 (.D(state_1__N_37[0]), .CK(clk_200hz), .PD(n755), .Q(row_c_0));   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(51[2] 70[9])
    defparam row_i1.GSR = "ENABLED";
    LUT4 i381_2_lut_rep_3 (.A(key_pulse2[2]), .B(key_pulse2[3]), .Z(n1002)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i381_2_lut_rep_3.init = 16'hdddd;
    FD1S3AX state_i0 (.D(state_1__N_37[0]), .CK(clk_200hz), .Q(state[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/10352/vhdl-labs/lab1_button_input/key_input.vhd(51[2] 70[9])
    defparam state_i0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

