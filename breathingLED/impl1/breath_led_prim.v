// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Wed Nov 18 22:07:35 2020
//
// Verilog Description of module breath_led
//

module breath_led (clk, rst, led);   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(20[8:18])
    input clk;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(23[7:10])
    input rst;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(24[7:10])
    output led;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(25[7:10])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(23[7:10])
    
    wire GND_net, VCC_net, rst_c, led_c;
    wire [24:0]cnt1;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(31[11:15])
    wire [24:0]cnt2;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(32[11:15])
    
    wire flag, cnt1_24__N_78, n1341, n865, n4, n867, n864, n10, 
        n870, flag_N_111, n11, n12, n14, n16, n18, n1340, flag_N_109, 
        n863, n862, n5, n676, n6, n18_adj_1, n8, n861, n12_adj_2, 
        n9, n860, n28, n9_adj_3, n859, n20, n44, n46, n1211, 
        n48, n42, n40, n38, n36, n34, n32, n24, n8_adj_4, 
        n16_adj_5, n873, n857, n856, n855, n854, n853, n852, 
        led_N_105, n866, n869, n22, n1136, n24_adj_6, n26, n16_adj_7, 
        n1339, n30, n609, n1066, n396, n851, clk_c_enable_25, 
        n1338, n850, n849, n1132, n106, n107, n108, n109, n110, 
        n111, n112, n113, n114, n115, n116, n117, n118, n119, 
        n120, n121, n122, n123, n124, n125, n126, n127, n128, 
        n129, n130, n1129, n1202, n1127, n868, n18_adj_8, n24_adj_9, 
        n17, n16_adj_10, n1204, n1191, n22_adj_11, n106_adj_12, 
        n107_adj_13, n108_adj_14, n109_adj_15, n110_adj_16, n111_adj_17, 
        n112_adj_18, n113_adj_19, n114_adj_20, n115_adj_21, n116_adj_22, 
        n117_adj_23, n118_adj_24, n119_adj_25, n120_adj_26, n121_adj_27, 
        n122_adj_28, n123_adj_29, n124_adj_30, n125_adj_31, n126_adj_32, 
        n127_adj_33, n128_adj_34, n129_adj_35, n130_adj_36, n1337, 
        n1113, n1189, n848, n847, n6_adj_37, n846, n673, n1336, 
        n1111, n20_adj_38, n1208, n1105, n1335, n1103, n1181, 
        n1334, n1094, n16_adj_39, n8_adj_40, n1173, n1089, n24_adj_41, 
        n1079, n1213, n1161, n22_adj_42, n1159, n1353, n1352, 
        n1157, n1351, n1350, n1054, n1349, n1040, n1154, n1348, 
        n1048, n20_adj_43, n1347, n1333, n1346, n1345, n1344, 
        n1343, n1342;
    
    VHI i812 (.Z(VCC_net));
    LUT4 cnt1_24__I_0_i37_2_lut_rep_49 (.A(cnt1[18]), .B(cnt2[18]), .Z(n1347)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i37_2_lut_rep_49.init = 16'h6666;
    CCU2D cnt1_97_add_4_13 (.A0(cnt1[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n864), .COUT(n865), .S0(n119_adj_25), .S1(n118_adj_24));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt1_97_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt1_97_add_4_13.INJECT1_0 = "NO";
    defparam cnt1_97_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt1_97_add_4_11 (.A0(cnt1[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n863), .COUT(n864), .S0(n121_adj_27), .S1(n120_adj_26));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt1_97_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt1_97_add_4_11.INJECT1_0 = "NO";
    defparam cnt1_97_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt1_97_add_4_9 (.A0(cnt1[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt1[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n862), 
          .COUT(n863), .S0(n123_adj_29), .S1(n122_adj_28));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt1_97_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt1_97_add_4_9.INJECT1_0 = "NO";
    defparam cnt1_97_add_4_9.INJECT1_1 = "NO";
    FD1S3AX flag_31 (.D(n609), .CK(clk_c), .Q(flag));   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(54[7] 76[14])
    defparam flag_31.GSR = "ENABLED";
    IB rst_pad (.I(rst), .O(rst_c));   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(24[7:10])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(23[7:10])
    CCU2D cnt1_97_add_4_7 (.A0(cnt1[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt1[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n861), 
          .COUT(n862), .S0(n125_adj_31), .S1(n124_adj_30));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt1_97_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt1_97_add_4_7.INJECT1_0 = "NO";
    defparam cnt1_97_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt1_97_add_4_5 (.A0(cnt1[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt1[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n860), 
          .COUT(n861), .S0(n127_adj_33), .S1(n126_adj_32));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt1_97_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt1_97_add_4_5.INJECT1_0 = "NO";
    defparam cnt1_97_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt1_97_add_4_3 (.A0(cnt1[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt1[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n859), 
          .COUT(n860), .S0(n129_adj_35), .S1(n128_adj_34));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt1_97_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt1_97_add_4_3.INJECT1_0 = "NO";
    defparam cnt1_97_add_4_3.INJECT1_1 = "NO";
    OB led_pad (.I(led_c), .O(led));   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(25[7:10])
    CCU2D cnt1_97_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt1[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n859), 
          .S1(n130_adj_36));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97_add_4_1.INIT0 = 16'hF000;
    defparam cnt1_97_add_4_1.INIT1 = 16'h0555;
    defparam cnt1_97_add_4_1.INJECT1_0 = "NO";
    defparam cnt1_97_add_4_1.INJECT1_1 = "NO";
    LUT4 cnt1_24__I_0_i17_2_lut_rep_44 (.A(cnt1[8]), .B(cnt2[8]), .Z(n1342)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i17_2_lut_rep_44.init = 16'h6666;
    LUT4 cnt1_24__I_0_i33_2_lut_rep_53 (.A(cnt1[16]), .B(cnt2[16]), .Z(n1351)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i33_2_lut_rep_53.init = 16'h6666;
    LUT4 cnt1_24__I_0_i8_3_lut_3_lut (.A(cnt1[8]), .B(cnt2[8]), .C(cnt2[4]), 
         .Z(n8)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i2_2_lut (.A(cnt1[7]), .B(cnt1[5]), .Z(n8_adj_4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 cnt1_24__I_0_i18_3_lut_3_lut (.A(cnt1[11]), .B(cnt2[11]), .C(cnt2[10]), 
         .Z(n18)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i18_3_lut_3_lut.init = 16'hd4d4;
    CCU2D cnt2_98_add_4_25 (.A0(cnt2[23]), .B0(n676), .C0(n24), .D0(flag), 
          .A1(cnt2[24]), .B1(n676), .C1(n24), .D1(flag), .CIN(n857), 
          .S0(n107), .S1(n106));   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98_add_4_25.INIT0 = 16'h5556;
    defparam cnt2_98_add_4_25.INIT1 = 16'h5556;
    defparam cnt2_98_add_4_25.INJECT1_0 = "NO";
    defparam cnt2_98_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt2_98_add_4_23 (.A0(cnt2[21]), .B0(n676), .C0(n24), .D0(flag), 
          .A1(cnt2[22]), .B1(n676), .C1(n24), .D1(flag), .CIN(n856), 
          .COUT(n857), .S0(n109), .S1(n108));   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98_add_4_23.INIT0 = 16'h5556;
    defparam cnt2_98_add_4_23.INIT1 = 16'h5556;
    defparam cnt2_98_add_4_23.INJECT1_0 = "NO";
    defparam cnt2_98_add_4_23.INJECT1_1 = "NO";
    LUT4 i672_2_lut_3_lut_4_lut (.A(cnt1[16]), .B(cnt2[16]), .C(cnt2[7]), 
         .D(cnt1[7]), .Z(n1136)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i672_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 cnt1_24__I_0_i12_3_lut_3_lut (.A(cnt1[16]), .B(cnt2[16]), .C(cnt2[7]), 
         .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i255_3_lut (.A(flag), .B(n1333), .C(n396), .Z(n609)) /* synthesis lut_function=(A (B+!(C))+!A !(B+!(C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(54[7] 76[14])
    defparam i255_3_lut.init = 16'h9a9a;
    LUT4 cnt1_24__I_0_i35_2_lut_rep_54 (.A(cnt1[17]), .B(cnt2[17]), .Z(n1352)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i35_2_lut_rep_54.init = 16'h6666;
    LUT4 i625_3_lut_4_lut (.A(cnt1[9]), .B(cnt2[9]), .C(n9), .D(n1342), 
         .Z(n1089)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+(C+(D))))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i625_3_lut_4_lut.init = 16'h0009;
    LUT4 i389_4_lut (.A(cnt2[0]), .B(n17), .C(n676), .D(n18_adj_8), 
         .Z(flag_N_109)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i389_4_lut.init = 16'h0001;
    LUT4 i589_4_lut (.A(cnt1[6]), .B(cnt1[2]), .C(cnt1[8]), .D(cnt1[1]), 
         .Z(n1054)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i589_4_lut.init = 16'h8000;
    CCU2D cnt2_98_add_4_21 (.A0(cnt2[19]), .B0(n676), .C0(n24), .D0(flag), 
          .A1(cnt2[20]), .B1(n676), .C1(n24), .D1(flag), .CIN(n855), 
          .COUT(n856), .S0(n111), .S1(n110));   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98_add_4_21.INIT0 = 16'h5556;
    defparam cnt2_98_add_4_21.INIT1 = 16'h5556;
    defparam cnt2_98_add_4_21.INJECT1_0 = "NO";
    defparam cnt2_98_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt2_98_add_4_19 (.A0(cnt2[17]), .B0(n676), .C0(n24), .D0(flag), 
          .A1(cnt2[18]), .B1(n676), .C1(n24), .D1(flag), .CIN(n854), 
          .COUT(n855), .S0(n113), .S1(n112));   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98_add_4_19.INIT0 = 16'h5556;
    defparam cnt2_98_add_4_19.INIT1 = 16'h5556;
    defparam cnt2_98_add_4_19.INJECT1_0 = "NO";
    defparam cnt2_98_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt2_98_add_4_17 (.A0(cnt2[15]), .B0(n676), .C0(n24), .D0(flag), 
          .A1(cnt2[16]), .B1(n676), .C1(n24), .D1(flag), .CIN(n853), 
          .COUT(n854), .S0(n115), .S1(n114));   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98_add_4_17.INIT0 = 16'h5556;
    defparam cnt2_98_add_4_17.INIT1 = 16'h5556;
    defparam cnt2_98_add_4_17.INJECT1_0 = "NO";
    defparam cnt2_98_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt2_98_add_4_15 (.A0(cnt2[13]), .B0(n676), .C0(n24), .D0(flag), 
          .A1(cnt2[14]), .B1(n676), .C1(n24), .D1(flag), .CIN(n852), 
          .COUT(n853), .S0(n117), .S1(n116));   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98_add_4_15.INIT0 = 16'h5556;
    defparam cnt2_98_add_4_15.INIT1 = 16'h5556;
    defparam cnt2_98_add_4_15.INJECT1_0 = "NO";
    defparam cnt2_98_add_4_15.INJECT1_1 = "NO";
    LUT4 i6_4_lut (.A(cnt2[5]), .B(cnt2[4]), .C(cnt2[3]), .D(cnt2[11]), 
         .Z(n16_adj_10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 cnt1_24__I_0_i13_2_lut_rep_42 (.A(cnt1[6]), .B(cnt2[6]), .Z(n1340)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i13_2_lut_rep_42.init = 16'h6666;
    CCU2D cnt2_98_add_4_13 (.A0(cnt2[11]), .B0(n676), .C0(n24), .D0(flag), 
          .A1(cnt2[12]), .B1(n676), .C1(n24), .D1(flag), .CIN(n851), 
          .COUT(n852), .S0(n119), .S1(n118));   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98_add_4_13.INIT0 = 16'h5556;
    defparam cnt2_98_add_4_13.INIT1 = 16'h5556;
    defparam cnt2_98_add_4_13.INJECT1_0 = "NO";
    defparam cnt2_98_add_4_13.INJECT1_1 = "NO";
    LUT4 cnt1_24__I_0_i10_3_lut_3_lut (.A(cnt1[6]), .B(cnt2[6]), .C(cnt2[5]), 
         .Z(n10)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i10_3_lut_3_lut.init = 16'hd4d4;
    FD1P3AX cnt2_98__i0 (.D(n130), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i0.GSR = "ENABLED";
    CCU2D cnt1_97_add_4_17 (.A0(cnt1[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n866), .COUT(n867), .S0(n115_adj_21), .S1(n114_adj_20));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt1_97_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt1_97_add_4_17.INJECT1_0 = "NO";
    defparam cnt1_97_add_4_17.INJECT1_1 = "NO";
    LUT4 i690_2_lut_3_lut_4_lut (.A(cnt1[19]), .B(cnt2[19]), .C(cnt2[18]), 
         .D(cnt1[18]), .Z(n1154)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i690_2_lut_3_lut_4_lut.init = 16'h9009;
    CCU2D cnt1_97_add_4_15 (.A0(cnt1[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n865), .COUT(n866), .S0(n117_adj_23), .S1(n116_adj_22));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt1_97_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt1_97_add_4_15.INJECT1_0 = "NO";
    defparam cnt1_97_add_4_15.INJECT1_1 = "NO";
    LUT4 cnt1_24__I_0_i32_3_lut_3_lut (.A(cnt1[19]), .B(cnt2[19]), .C(cnt2[18]), 
         .Z(n32)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i32_3_lut_3_lut.init = 16'hd4d4;
    LUT4 cnt1_24__I_0_i15_2_lut_rep_43 (.A(cnt1[7]), .B(cnt2[7]), .Z(n1341)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i15_2_lut_rep_43.init = 16'h6666;
    CCU2D cnt1_97_add_4_25 (.A0(cnt1[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n870), .S0(n107_adj_13), .S1(n106_adj_12));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt1_97_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt1_97_add_4_25.INJECT1_0 = "NO";
    defparam cnt1_97_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt2_98_add_4_11 (.A0(cnt2[9]), .B0(n676), .C0(n24), .D0(flag), 
          .A1(cnt2[10]), .B1(n676), .C1(n24), .D1(flag), .CIN(n850), 
          .COUT(n851), .S0(n121), .S1(n120));   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98_add_4_11.INIT0 = 16'h5556;
    defparam cnt2_98_add_4_11.INIT1 = 16'h5556;
    defparam cnt2_98_add_4_11.INJECT1_0 = "NO";
    defparam cnt2_98_add_4_11.INJECT1_1 = "NO";
    LUT4 cnt1_24__I_0_i7_2_lut_rep_45 (.A(cnt1[3]), .B(cnt2[3]), .Z(n1343)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i7_2_lut_rep_45.init = 16'h6666;
    LUT4 i3_4_lut (.A(cnt1[11]), .B(n1040), .C(n1054), .D(n1048), .Z(n9_adj_3)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i3_4_lut.init = 16'hdfff;
    LUT4 cnt1_24__I_0_i30_3_lut_3_lut (.A(cnt1[17]), .B(cnt2[17]), .C(n12), 
         .Z(n30)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i30_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i750_4_lut (.A(n1173), .B(n1346), .C(n1345), .D(n1103), .Z(n1204)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i750_4_lut.init = 16'hfffd;
    CCU2D cnt1_97_add_4_23 (.A0(cnt1[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n869), .COUT(n870), .S0(n109_adj_15), .S1(n108_adj_14));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt1_97_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt1_97_add_4_23.INJECT1_0 = "NO";
    defparam cnt1_97_add_4_23.INJECT1_1 = "NO";
    LUT4 cnt1_24__I_0_i41_2_lut_rep_51 (.A(cnt1[20]), .B(cnt2[20]), .Z(n1349)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i41_2_lut_rep_51.init = 16'h6666;
    LUT4 i583_2_lut (.A(cnt1[4]), .B(cnt1[3]), .Z(n1048)) /* synthesis lut_function=(A (B)) */ ;
    defparam i583_2_lut.init = 16'h8888;
    LUT4 i735_4_lut_4_lut (.A(n1344), .B(n1173), .C(n42), .D(n8), .Z(n44)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i735_4_lut_4_lut.init = 16'hf4b0;
    GSR GSR_INST (.GSR(rst_c));
    FD1S3IX cnt1_97__i0 (.D(n130_adj_36), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[0])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i0.GSR = "ENABLED";
    FD1S3IX cnt1_97__i24 (.D(n106_adj_12), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[24])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i24.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(n24), .B(n676), .Z(flag_N_111)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 cnt1_24__I_0_i34_3_lut_3_lut (.A(cnt1[20]), .B(cnt2[20]), .C(n32), 
         .Z(n34)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i34_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i639_4_lut (.A(n1353), .B(n1339), .C(n1338), .D(n1089), .Z(n1103)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i639_4_lut.init = 16'h0001;
    CCU2D cnt1_97_add_4_21 (.A0(cnt1[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n868), .COUT(n869), .S0(n111_adj_17), .S1(n110_adj_16));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt1_97_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt1_97_add_4_21.INJECT1_0 = "NO";
    defparam cnt1_97_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt2_98_add_4_9 (.A0(cnt2[7]), .B0(n676), .C0(n24), .D0(flag), 
          .A1(cnt2[8]), .B1(n676), .C1(n24), .D1(flag), .CIN(n849), 
          .COUT(n850), .S0(n123), .S1(n122));   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98_add_4_9.INIT0 = 16'h5556;
    defparam cnt2_98_add_4_9.INIT1 = 16'h5556;
    defparam cnt2_98_add_4_9.INJECT1_0 = "NO";
    defparam cnt2_98_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt1_97_add_4_19 (.A0(cnt1[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n867), .COUT(n868), .S0(n113_adj_19), .S1(n112_adj_18));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt1_97_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt1_97_add_4_19.INJECT1_0 = "NO";
    defparam cnt1_97_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt2_98_add_4_7 (.A0(cnt2[5]), .B0(n676), .C0(n24), .D0(flag), 
          .A1(cnt2[6]), .B1(n676), .C1(n24), .D1(flag), .CIN(n848), 
          .COUT(n849), .S0(n125), .S1(n124));   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98_add_4_7.INIT0 = 16'h5556;
    defparam cnt2_98_add_4_7.INIT1 = 16'h5556;
    defparam cnt2_98_add_4_7.INJECT1_0 = "NO";
    defparam cnt2_98_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt2_98_add_4_5 (.A0(cnt2[3]), .B0(n676), .C0(n24), .D0(flag), 
          .A1(cnt2[4]), .B1(n676), .C1(n24), .D1(flag), .CIN(n847), 
          .COUT(n848), .S0(n127), .S1(n126));   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98_add_4_5.INIT0 = 16'h5556;
    defparam cnt2_98_add_4_5.INIT1 = 16'h5556;
    defparam cnt2_98_add_4_5.INJECT1_0 = "NO";
    defparam cnt2_98_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt2_98_add_4_3 (.A0(cnt2[1]), .B0(n676), .C0(n24), .D0(flag), 
          .A1(cnt2[2]), .B1(n676), .C1(n24), .D1(flag), .CIN(n846), 
          .COUT(n847), .S0(n129), .S1(n128));   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98_add_4_3.INIT0 = 16'h5556;
    defparam cnt2_98_add_4_3.INIT1 = 16'h5556;
    defparam cnt2_98_add_4_3.INJECT1_0 = "NO";
    defparam cnt2_98_add_4_3.INJECT1_1 = "NO";
    LUT4 i760_2_lut_3_lut (.A(cnt1[20]), .B(cnt2[20]), .C(n1213), .Z(n1159)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i760_2_lut_3_lut.init = 16'hf6f6;
    CCU2D cnt2_98_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt2[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n846), 
          .S1(n130));   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98_add_4_1.INIT0 = 16'hF000;
    defparam cnt2_98_add_4_1.INIT1 = 16'h0555;
    defparam cnt2_98_add_4_1.INJECT1_0 = "NO";
    defparam cnt2_98_add_4_1.INJECT1_1 = "NO";
    LUT4 i747_2_lut_3_lut_4_lut (.A(cnt1[13]), .B(cnt2[13]), .C(n1350), 
         .D(n1336), .Z(n1127)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i747_2_lut_3_lut_4_lut.init = 16'hfff6;
    FD1S3IX cnt1_97__i23 (.D(n107_adj_13), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[23])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i23.GSR = "ENABLED";
    FD1S3IX cnt1_97__i22 (.D(n108_adj_14), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[22])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i22.GSR = "ENABLED";
    FD1S3IX cnt1_97__i21 (.D(n109_adj_15), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[21])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i21.GSR = "ENABLED";
    FD1S3IX cnt1_97__i20 (.D(n110_adj_16), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[20])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i20.GSR = "ENABLED";
    FD1S3IX cnt1_97__i19 (.D(n111_adj_17), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[19])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i19.GSR = "ENABLED";
    FD1S3IX cnt1_97__i18 (.D(n112_adj_18), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[18])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i18.GSR = "ENABLED";
    FD1S3IX cnt1_97__i17 (.D(n113_adj_19), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[17])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i17.GSR = "ENABLED";
    FD1S3IX cnt1_97__i16 (.D(n114_adj_20), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[16])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i16.GSR = "ENABLED";
    FD1S3IX cnt1_97__i15 (.D(n115_adj_21), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[15])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i15.GSR = "ENABLED";
    FD1S3IX cnt1_97__i14 (.D(n116_adj_22), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[14])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i14.GSR = "ENABLED";
    FD1S3IX cnt1_97__i13 (.D(n117_adj_23), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[13])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i13.GSR = "ENABLED";
    FD1S3IX cnt1_97__i12 (.D(n118_adj_24), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[12])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i12.GSR = "ENABLED";
    FD1S3IX cnt1_97__i11 (.D(n119_adj_25), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[11])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i11.GSR = "ENABLED";
    FD1S3IX cnt1_97__i10 (.D(n120_adj_26), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[10])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i10.GSR = "ENABLED";
    FD1S3IX cnt1_97__i9 (.D(n121_adj_27), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[9])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i9.GSR = "ENABLED";
    FD1S3IX cnt1_97__i8 (.D(n122_adj_28), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[8])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i8.GSR = "ENABLED";
    FD1S3IX cnt1_97__i7 (.D(n123_adj_29), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[7])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i7.GSR = "ENABLED";
    FD1S3IX cnt1_97__i6 (.D(n124_adj_30), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[6])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i6.GSR = "ENABLED";
    FD1S3IX cnt1_97__i5 (.D(n125_adj_31), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[5])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i5.GSR = "ENABLED";
    FD1S3IX cnt1_97__i4 (.D(n126_adj_32), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[4])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i4.GSR = "ENABLED";
    FD1S3IX cnt1_97__i3 (.D(n127_adj_33), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[3])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i3.GSR = "ENABLED";
    FD1S3IX cnt1_97__i2 (.D(n128_adj_34), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[2])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i2.GSR = "ENABLED";
    FD1S3IX cnt1_97__i1 (.D(n129_adj_35), .CK(clk_c), .CD(cnt1_24__N_78), 
            .Q(cnt1[1])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam cnt1_97__i1.GSR = "ENABLED";
    FD1P3AX cnt2_98__i24 (.D(n106), .SP(clk_c_enable_25), .CK(clk_c), 
            .Q(cnt2[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i24.GSR = "ENABLED";
    FD1P3AX cnt2_98__i23 (.D(n107), .SP(clk_c_enable_25), .CK(clk_c), 
            .Q(cnt2[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i23.GSR = "ENABLED";
    FD1P3AX cnt2_98__i22 (.D(n108), .SP(clk_c_enable_25), .CK(clk_c), 
            .Q(cnt2[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i22.GSR = "ENABLED";
    FD1P3AX cnt2_98__i21 (.D(n109), .SP(clk_c_enable_25), .CK(clk_c), 
            .Q(cnt2[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i21.GSR = "ENABLED";
    FD1P3AX cnt2_98__i20 (.D(n110), .SP(clk_c_enable_25), .CK(clk_c), 
            .Q(cnt2[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i20.GSR = "ENABLED";
    FD1P3AX cnt2_98__i19 (.D(n111), .SP(clk_c_enable_25), .CK(clk_c), 
            .Q(cnt2[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i19.GSR = "ENABLED";
    FD1P3AX cnt2_98__i18 (.D(n112), .SP(clk_c_enable_25), .CK(clk_c), 
            .Q(cnt2[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i18.GSR = "ENABLED";
    FD1P3AX cnt2_98__i17 (.D(n113), .SP(clk_c_enable_25), .CK(clk_c), 
            .Q(cnt2[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i17.GSR = "ENABLED";
    FD1P3AX cnt2_98__i16 (.D(n114), .SP(clk_c_enable_25), .CK(clk_c), 
            .Q(cnt2[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i16.GSR = "ENABLED";
    FD1P3AX cnt2_98__i15 (.D(n115), .SP(clk_c_enable_25), .CK(clk_c), 
            .Q(cnt2[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i15.GSR = "ENABLED";
    FD1P3AX cnt2_98__i14 (.D(n116), .SP(clk_c_enable_25), .CK(clk_c), 
            .Q(cnt2[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i14.GSR = "ENABLED";
    FD1P3AX cnt2_98__i13 (.D(n117), .SP(clk_c_enable_25), .CK(clk_c), 
            .Q(cnt2[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i13.GSR = "ENABLED";
    FD1P3AX cnt2_98__i12 (.D(n118), .SP(clk_c_enable_25), .CK(clk_c), 
            .Q(cnt2[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i12.GSR = "ENABLED";
    FD1P3AX cnt2_98__i11 (.D(n119), .SP(clk_c_enable_25), .CK(clk_c), 
            .Q(cnt2[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i11.GSR = "ENABLED";
    FD1P3AX cnt2_98__i10 (.D(n120), .SP(clk_c_enable_25), .CK(clk_c), 
            .Q(cnt2[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i10.GSR = "ENABLED";
    FD1P3AX cnt2_98__i9 (.D(n121), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i9.GSR = "ENABLED";
    FD1P3AX cnt2_98__i8 (.D(n122), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i8.GSR = "ENABLED";
    FD1P3AX cnt2_98__i7 (.D(n123), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i7.GSR = "ENABLED";
    FD1P3AX cnt2_98__i6 (.D(n124), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i6.GSR = "ENABLED";
    FD1P3AX cnt2_98__i5 (.D(n125), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i5.GSR = "ENABLED";
    FD1P3AX cnt2_98__i4 (.D(n126), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i4.GSR = "ENABLED";
    FD1P3AX cnt2_98__i3 (.D(n127), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i3.GSR = "ENABLED";
    FD1P3AX cnt2_98__i2 (.D(n128), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i2.GSR = "ENABLED";
    FD1P3AX cnt2_98__i1 (.D(n129), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(59[13] 71[20])
    defparam cnt2_98__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_1 (.A(cnt1[10]), .B(cnt1[9]), .Z(n1040)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_1.init = 16'heeee;
    LUT4 i757_4_lut (.A(n1348), .B(n1347), .C(n1352), .D(n1136), .Z(n1211)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i757_4_lut.init = 16'hefee;
    LUT4 i758_2_lut_3_lut (.A(cnt1[20]), .B(cnt2[20]), .C(n1211), .Z(n1161)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i758_2_lut_3_lut.init = 16'hf6f6;
    LUT4 cnt1_24__I_0_i19_2_lut_rep_39 (.A(cnt1[9]), .B(cnt2[9]), .Z(n1337)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i19_2_lut_rep_39.init = 16'h6666;
    LUT4 i748_4_lut (.A(n1173), .B(n1346), .C(n1345), .D(n1337), .Z(n1202)) /* synthesis lut_function=(!(A (B+(C+(D))))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i748_4_lut.init = 16'h5557;
    L6MUX21 cnt1_24__I_0_i50 (.D0(n40), .D1(n48), .SD(n1181), .Z(led_N_105));
    L6MUX21 cnt1_24__I_0_i40 (.D0(n28), .D1(n38), .SD(n1159), .Z(n40));
    LUT4 cnt1_24__I_0_i31_2_lut_rep_52 (.A(cnt1[15]), .B(cnt2[15]), .Z(n1350)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i31_2_lut_rep_52.init = 16'h6666;
    PFUMX i95 (.BLUT(flag_N_111), .ALUT(flag_N_109), .C0(flag), .Z(n396));
    LUT4 cnt1_24__I_0_i26_3_lut_3_lut (.A(cnt1[15]), .B(cnt2[15]), .C(n14), 
         .Z(n26)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i26_3_lut_3_lut.init = 16'hd4d4;
    L6MUX21 cnt1_24__I_0_i48 (.D0(n22), .D1(n46), .SD(n1189), .Z(n48));
    PFUMX cnt1_24__I_0_i38 (.BLUT(n30), .ALUT(n36), .C0(n1161), .Z(n38));
    LUT4 cnt1_24__I_0_i25_2_lut_rep_55 (.A(cnt1[12]), .B(cnt2[12]), .Z(n1353)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i25_2_lut_rep_55.init = 16'h6666;
    PFUMX cnt1_24__I_0_i46 (.BLUT(n24_adj_6), .ALUT(n44), .C0(n1191), 
          .Z(n46));
    LUT4 i12_4_lut (.A(cnt1[19]), .B(n24_adj_41), .C(n20_adj_43), .D(cnt1[18]), 
         .Z(n673)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(58[14:34])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 cnt1_24__I_0_i6_3_lut_3_lut (.A(cnt1[3]), .B(cnt2[3]), .C(cnt2[2]), 
         .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i6_3_lut_3_lut.init = 16'hd4d4;
    PFUMX cnt1_24__I_0_i22 (.BLUT(n6), .ALUT(n20), .C0(n1105), .Z(n22));
    LUT4 cnt1_24__I_0_i20_3_lut_3_lut (.A(cnt1[12]), .B(cnt2[12]), .C(n18), 
         .Z(n20)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i20_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i11_4_lut (.A(cnt1[24]), .B(n22_adj_42), .C(n16_adj_7), .D(cnt1[17]), 
         .Z(n24_adj_41)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(58[14:34])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i7_3_lut (.A(cnt1[22]), .B(cnt1[20]), .C(cnt1[15]), .Z(n20_adj_43)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(58[14:34])
    defparam i7_3_lut.init = 16'hfefe;
    LUT4 i9_4_lut (.A(cnt1[13]), .B(cnt1[23]), .C(cnt1[12]), .D(cnt1[14]), 
         .Z(n22_adj_42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(58[14:34])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 cnt1_24__I_0_i4_4_lut_4_lut (.A(cnt1[0]), .B(cnt1[1]), .C(cnt2[1]), 
         .D(cnt2[0]), .Z(n4)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C (D))+!B (C+(D))))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(58[14:34])
    defparam cnt1_24__I_0_i4_4_lut_4_lut.init = 16'h7130;
    LUT4 i3_2_lut (.A(cnt1[16]), .B(cnt1[21]), .Z(n16_adj_7)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(58[14:34])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 cnt1_24__I_0_i49_2_lut_rep_46 (.A(cnt1[24]), .B(cnt2[24]), .Z(n1344)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i49_2_lut_rep_46.init = 16'h6666;
    LUT4 cnt1_24__I_0_i42_3_lut_3_lut (.A(cnt1[24]), .B(cnt2[24]), .C(cnt2[23]), 
         .Z(n42)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i42_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i755_2_lut_3_lut (.A(cnt1[24]), .B(cnt2[24]), .C(n1208), .Z(n1181)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i755_2_lut_3_lut.init = 16'hf6f6;
    PFUMX cnt1_24__I_0_i28 (.BLUT(n4), .ALUT(n26), .C0(n1127), .Z(n28));
    LUT4 i751_2_lut_3_lut (.A(cnt1[24]), .B(cnt2[24]), .C(n1204), .Z(n1189)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i751_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i737_4_lut_4_lut (.A(n1349), .B(n1154), .C(n34), .D(n10), .Z(n36)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i737_4_lut_4_lut.init = 16'hf4b0;
    LUT4 led_I_0_1_lut (.A(led_N_105), .Z(led_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[11] 81[14])
    defparam led_I_0_1_lut.init = 16'h5555;
    LUT4 i754_4_lut (.A(n1173), .B(n1346), .C(n1345), .D(n1157), .Z(n1208)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i754_4_lut.init = 16'hfffd;
    LUT4 i693_4_lut (.A(n1349), .B(n1348), .C(n1347), .D(n1132), .Z(n1157)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i693_4_lut.init = 16'h0100;
    LUT4 i12_4_lut_adj_2 (.A(cnt2[19]), .B(n24_adj_9), .C(n20_adj_38), 
         .D(cnt2[23]), .Z(n676)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut_adj_2.init = 16'hfffe;
    LUT4 i11_4_lut_adj_3 (.A(cnt2[12]), .B(n22_adj_11), .C(n16_adj_39), 
         .D(cnt2[13]), .Z(n24_adj_9)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut_adj_3.init = 16'hfffe;
    LUT4 i668_4_lut (.A(n1352), .B(n1351), .C(n1350), .D(n1111), .Z(n1132)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i668_4_lut.init = 16'h0100;
    LUT4 i647_4_lut (.A(n1336), .B(n1335), .C(n1353), .D(n1094), .Z(n1111)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i647_4_lut.init = 16'h1011;
    LUT4 i1_2_lut_rep_36 (.A(cnt2[10]), .B(cnt2[9]), .Z(n1334)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_36.init = 16'heeee;
    LUT4 i630_4_lut (.A(n1339), .B(n1338), .C(n1337), .D(n1079), .Z(n1094)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i630_4_lut.init = 16'h0100;
    LUT4 i615_4_lut (.A(n1342), .B(n1341), .C(n1340), .D(n1066), .Z(n1079)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i615_4_lut.init = 16'h5455;
    LUT4 i602_4_lut (.A(n11), .B(n9), .C(n1343), .D(n5), .Z(n1066)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i602_4_lut.init = 16'h5554;
    LUT4 cnt1_24__I_0_i5_2_lut (.A(cnt1[2]), .B(cnt2[2]), .Z(n5)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i5_2_lut.init = 16'h6666;
    LUT4 i753_2_lut_3_lut_4_lut (.A(cnt1[10]), .B(cnt2[10]), .C(n1353), 
         .D(n1339), .Z(n1105)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i753_2_lut_3_lut_4_lut.init = 16'hfff6;
    LUT4 cnt1_24__I_0_i47_2_lut (.A(cnt1[23]), .B(cnt2[23]), .Z(n1173)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i47_2_lut.init = 16'h9999;
    LUT4 i745_2_lut_2_lut (.A(n1333), .B(n396), .Z(clk_c_enable_25)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i745_2_lut_2_lut.init = 16'h1111;
    LUT4 cnt1_24__I_0_i29_2_lut_rep_38 (.A(cnt1[14]), .B(cnt2[14]), .Z(n1336)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i29_2_lut_rep_38.init = 16'h6666;
    LUT4 cnt1_24__I_0_i11_2_lut (.A(cnt1[5]), .B(cnt2[5]), .Z(n11)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i11_2_lut.init = 16'h6666;
    LUT4 i749_2_lut_3_lut (.A(cnt1[24]), .B(cnt2[24]), .C(n1202), .Z(n1191)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i749_2_lut_3_lut.init = 16'hf6f6;
    LUT4 cnt1_24__I_0_i21_2_lut_rep_40 (.A(cnt1[10]), .B(cnt2[10]), .Z(n1338)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i21_2_lut_rep_40.init = 16'h6666;
    LUT4 i5_4_lut_rep_35 (.A(n9_adj_3), .B(n673), .C(n8_adj_4), .D(cnt1[0]), 
         .Z(n1333)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i5_4_lut_rep_35.init = 16'hfeff;
    LUT4 i9_4_lut_adj_4 (.A(cnt2[21]), .B(cnt2[16]), .C(cnt2[24]), .D(cnt2[17]), 
         .Z(n22_adj_11)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut_adj_4.init = 16'hfffe;
    LUT4 cnt1_24__I_0_i24_3_lut_3_lut (.A(cnt1[22]), .B(cnt2[22]), .C(n16), 
         .Z(n24_adj_6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i24_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i3_2_lut_adj_5 (.A(cnt2[18]), .B(cnt2[20]), .Z(n16_adj_39)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut_adj_5.init = 16'heeee;
    LUT4 cnt1_24__I_0_i27_2_lut_rep_37 (.A(cnt1[13]), .B(cnt2[13]), .Z(n1335)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i27_2_lut_rep_37.init = 16'h6666;
    LUT4 i4_4_lut (.A(cnt2[2]), .B(cnt2[4]), .C(cnt2[0]), .D(n6_adj_37), 
         .Z(n873)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_6 (.A(cnt2[3]), .B(cnt2[1]), .Z(n6_adj_37)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_6.init = 16'h8888;
    LUT4 cnt1_24__I_0_i14_3_lut_3_lut (.A(cnt1[14]), .B(cnt2[14]), .C(cnt2[13]), 
         .Z(n14)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 cnt1_24__I_0_i45_2_lut_rep_48 (.A(cnt1[22]), .B(cnt2[22]), .Z(n1346)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i45_2_lut_rep_48.init = 16'h6666;
    LUT4 cnt1_24__I_0_i23_2_lut_rep_41 (.A(cnt1[11]), .B(cnt2[11]), .Z(n1339)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i23_2_lut_rep_41.init = 16'h6666;
    LUT4 cnt1_24__I_0_i39_2_lut_rep_50 (.A(cnt1[19]), .B(cnt2[19]), .Z(n1348)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i39_2_lut_rep_50.init = 16'h6666;
    LUT4 i1_4_lut (.A(n18_adj_1), .B(n673), .C(cnt1[11]), .D(n1040), 
         .Z(cnt1_24__N_78)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut.init = 16'hfcec;
    LUT4 i759_4_lut (.A(n1348), .B(n1347), .C(n1352), .D(n1129), .Z(n1213)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i759_4_lut.init = 16'hfeff;
    LUT4 i154_4_lut (.A(n12_adj_2), .B(cnt1[8]), .C(cnt1[7]), .D(cnt1[6]), 
         .Z(n18_adj_1)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i154_4_lut.init = 16'hc8c0;
    LUT4 i665_4_lut (.A(n1351), .B(n1350), .C(n1336), .D(n1113), .Z(n1129)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i665_4_lut.init = 16'h5455;
    LUT4 i649_4_lut (.A(n1335), .B(n1341), .C(n1340), .D(n11), .Z(n1113)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam i649_4_lut.init = 16'h5554;
    LUT4 i163_4_lut (.A(n16_adj_5), .B(cnt2[11]), .C(n1334), .D(cnt2[8]), 
         .Z(n24)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i163_4_lut.init = 16'hc8c0;
    LUT4 i7_3_lut_adj_7 (.A(cnt2[15]), .B(cnt2[14]), .C(cnt2[22]), .Z(n20_adj_38)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i7_3_lut_adj_7.init = 16'hfefe;
    LUT4 i107_4_lut (.A(cnt1[2]), .B(cnt1[5]), .C(n8_adj_40), .D(cnt1[0]), 
         .Z(n12_adj_2)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i107_4_lut.init = 16'heccc;
    LUT4 i133_4_lut (.A(n873), .B(cnt2[7]), .C(cnt2[6]), .D(cnt2[5]), 
         .Z(n16_adj_5)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i133_4_lut.init = 16'hfcec;
    LUT4 i7_4_lut (.A(cnt2[1]), .B(cnt2[7]), .C(cnt2[2]), .D(cnt2[8]), 
         .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i3_3_lut (.A(cnt1[4]), .B(cnt1[3]), .C(cnt1[1]), .Z(n8_adj_40)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3_3_lut.init = 16'h8080;
    VLO i1 (.Z(GND_net));
    LUT4 cnt1_24__I_0_i16_3_lut_3_lut (.A(cnt1[21]), .B(cnt2[21]), .C(cnt2[9]), 
         .Z(n16)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i16_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i8_3_lut_4_lut (.A(cnt2[10]), .B(cnt2[9]), .C(n16_adj_10), .D(cnt2[6]), 
         .Z(n18_adj_8)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_3_lut_4_lut.init = 16'hfffe;
    LUT4 cnt1_24__I_0_i9_2_lut (.A(cnt1[4]), .B(cnt2[4]), .Z(n9)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i9_2_lut.init = 16'h6666;
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 cnt1_24__I_0_i43_2_lut_rep_47 (.A(cnt1[21]), .B(cnt2[21]), .Z(n1345)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/breathingled/breathingled.vhd(80[21:32])
    defparam cnt1_24__I_0_i43_2_lut_rep_47.init = 16'h6666;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

