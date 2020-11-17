// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Tue Nov 17 21:02:29 2020
//
// Verilog Description of module TrafficLights
//

module TrafficLights (clk, rst, modekey, secdisplay, modedisplay, 
            trafficLights, digitdisplay);   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(5[8:21])
    input clk;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(7[3:6])
    input rst;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(8[3:6])
    input modekey;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(9[3:10])
    output secdisplay;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(10[3:13])
    output [3:0]modedisplay;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(11[3:14])
    output [5:0]trafficLights;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(12[3:16])
    output [17:0]digitdisplay;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(13[3:15])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(7[3:6])
    
    wire GND_net, VCC_net, rst_c, modekey_c, secdisplay_c, modedisplay_c_3, 
        modedisplay_c_2, modedisplay_c_1, modedisplay_c_0, trafficLights_c_5, 
        trafficLights_c_4, trafficLights_c_3, trafficLights_c_1, trafficLights_c_0, 
        n999, digitdisplay_c_8, digitdisplay_c_7, digitdisplay_c_6, 
        digitdisplay_c_5, digitdisplay_c_4, digitdisplay_c_3, digitdisplay_c_2;
    wire [31:0]mode;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(21[8:12])
    wire [31:0]seccnt;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(23[8:14])
    
    wire sec, modekey_state, sec_ls, modekey_state_ls;
    wire [2:0]prstate;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(35[8:15])
    wire [2:0]nxstate;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(36[8:15])
    wire [3:0]delay;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(44[8:13])
    wire [31:0]delaycnt;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(45[8:16])
    
    wire sec_N_260;
    wire [3:0]modedisplay_3__N_1;
    
    wire n56, sec_N_261, n149, n150, n151, n152, n153, n154, 
        n155, n156, n157, n158, n159, n160, n161, n162, n163, 
        n164, n165, n166, n167, n168, n169, n170, n171, n172, 
        n173, n174, n175, n176, n177, n178, n179, n180, n4, 
        mode_31__N_210, clk_c_enable_66, n321, n1164, n54, n52, 
        n4_adj_338, n50;
    wire [32:0]digitdisplay_17__N_5;
    
    wire n48, n46, delay_3__N_105, n1179, n1886, n45, n42, n42_adj_339, 
        n40, n1774, n1773, n1772, n1771, n38, n1914, n37, n36, 
        n1770, n1769, n1768, n34, n1767, n1766, n38_adj_340, n1765, 
        n1764, n2091, n2084, n1693, n1763, n1692, n1762, n26, 
        clk_c_enable_67, n37_adj_341, n12, n34_adj_342, n2090, clk_c_enable_34, 
        n1174, n1761, n1760, n1759, n1696, n1695, n1694, n1691, 
        n1690, n1689, n1688, n1687, n1686, n1758, n1757, n1756, 
        n1755, n1754, n1753, n134, n135, n136, n137, n138, n139, 
        n140, n141, n142, n143, n144, n145, n146, n147, n148, 
        n149_adj_343, n150_adj_344, n151_adj_345, n152_adj_346, n153_adj_347, 
        n154_adj_348, n155_adj_349, n156_adj_350, n157_adj_351, n158_adj_352, 
        n159_adj_353, n160_adj_354, n161_adj_355, n162_adj_356, n163_adj_357, 
        n164_adj_358, n165_adj_359, n1685, n1684, n1683, n1731, 
        n1737, n1736, n1730, n1682, n1681, n1680, n1752, n1751, 
        n1750, n1749, n1748, n1679, n1678, n1677, n1676, n1675, 
        n1674, n1673, n1672, n1747, n1746, n1745, n1744, n2088, 
        n1743, n2087, n1671, n1670, n1669, n1668, n58, n1103, 
        n1742, n134_adj_360, n135_adj_361, n136_adj_362, n137_adj_363, 
        n138_adj_364, n139_adj_365, n140_adj_366, n141_adj_367, n142_adj_368, 
        n143_adj_369, n144_adj_370, n145_adj_371, n146_adj_372, n147_adj_373, 
        n148_adj_374, n149_adj_375, n150_adj_376, n151_adj_377, n152_adj_378, 
        n153_adj_379, n154_adj_380, n155_adj_381, n156_adj_382, n157_adj_383, 
        n158_adj_384, n159_adj_385, n160_adj_386, n161_adj_387, n162_adj_388, 
        n163_adj_389, n164_adj_390, n165_adj_391, n1729, n1735, n1734, 
        n1667, n1666, n1733, n1732, n1665, n1741, n1740, n2086, 
        n1739, n1436, n1738, n1920, n2082, n2085, n1169;
    
    LUT4 i16_4_lut (.A(seccnt[31]), .B(seccnt[28]), .C(seccnt[26]), .D(seccnt[5]), 
         .Z(n38)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(109[8:22])
    defparam i16_4_lut.init = 16'hfffe;
    FD1S3AX secdisplay_127 (.D(sec_N_260), .CK(clk_c), .Q(secdisplay_c));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(86[3] 100[10])
    defparam secdisplay_127.GSR = "DISABLED";
    FD1S3AX modedisplay_i1 (.D(modedisplay_3__N_1[0]), .CK(clk_c), .Q(modedisplay_c_0));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(86[3] 100[10])
    defparam modedisplay_i1.GSR = "DISABLED";
    FD1S3AX sec_130 (.D(sec_N_261), .CK(clk_c), .Q(sec));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(107[3] 113[10])
    defparam sec_130.GSR = "DISABLED";
    LUT4 i14_3_lut (.A(prstate[0]), .B(prstate[1]), .C(prstate[2]), .Z(trafficLights_c_0)) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !(C)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(155[3] 212[12])
    defparam i14_3_lut.init = 16'h3e3e;
    LUT4 i1097_2_lut_3_lut_4_lut (.A(mode[1]), .B(n2085), .C(prstate[0]), 
         .D(prstate[2]), .Z(n1886)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(91[10:11])
    defparam i1097_2_lut_3_lut_4_lut.init = 16'hfff2;
    GSR GSR_INST (.GSR(n1174));
    OB modedisplay_pad_1 (.I(modedisplay_c_1), .O(modedisplay[1]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(11[3:14])
    FD1S3AX sec_ls_125 (.D(sec), .CK(clk_c), .Q(sec_ls));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(77[3] 80[10])
    defparam sec_ls_125.GSR = "DISABLED";
    LUT4 i15_2_lut (.A(mode[9]), .B(mode[23]), .Z(n45)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(91[10:11])
    defparam i15_2_lut.init = 16'heeee;
    LUT4 i1132_3_lut_4_lut (.A(mode[1]), .B(n2085), .C(prstate[2]), .D(prstate[1]), 
         .Z(nxstate[2])) /* synthesis lut_function=(!((B+(C (D)))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(91[10:11])
    defparam i1132_3_lut_4_lut.init = 16'h0222;
    LUT4 i28_4_lut (.A(n37_adj_341), .B(n56), .C(n50), .D(n38_adj_340), 
         .Z(n58)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(91[10:11])
    defparam i28_4_lut.init = 16'hfffe;
    FD1S1I delay_3__I_0_153_i2 (.D(n1436), .CK(delay_3__N_105), .CD(n2082), 
           .Q(delay[1]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(153[2] 213[14])
    defparam delay_3__I_0_153_i2.GSR = "DISABLED";
    FD1S3AX modedisplay_i3 (.D(modedisplay_3__N_1[2]), .CK(clk_c), .Q(modedisplay_c_2));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(86[3] 100[10])
    defparam modedisplay_i3.GSR = "DISABLED";
    LUT4 i510_2_lut_3_lut (.A(sec), .B(sec_ls), .C(n321), .Z(clk_c_enable_67)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(141[8:30])
    defparam i510_2_lut_3_lut.init = 16'h2020;
    LUT4 i466_3_lut (.A(mode[0]), .B(mode[1]), .C(prstate[1]), .Z(n1169)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(155[3] 212[12])
    defparam i466_3_lut.init = 16'h3535;
    LUT4 i24_4_lut (.A(mode[31]), .B(n48), .C(n34_adj_342), .D(mode[14]), 
         .Z(n54)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(91[10:11])
    defparam i24_4_lut.init = 16'hfffe;
    LUT4 i249_1_lut_rep_21 (.A(prstate[1]), .Z(n2090)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(155[3] 212[12])
    defparam i249_1_lut_rep_21.init = 16'h5555;
    FD1P3AX prstate_i0_i1 (.D(nxstate[1]), .SP(clk_c_enable_67), .CK(clk_c), 
            .Q(prstate[1]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(137[3] 148[10])
    defparam prstate_i0_i1.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i1 (.D(n164_adj_358), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i1.GSR = "ENABLED";
    LUT4 i20_4_lut_3_lut (.A(prstate[1]), .B(prstate[2]), .C(prstate[0]), 
         .Z(trafficLights_c_1)) /* synthesis lut_function=(!(A (B)+!A !(B (C)+!B !(C)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(155[3] 212[12])
    defparam i20_4_lut_3_lut.init = 16'h6363;
    FD1P3IX delaycnt_275__i2 (.D(n163_adj_357), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i2.GSR = "ENABLED";
    LUT4 i344_2_lut_rep_22 (.A(mode[0]), .B(mode[1]), .Z(n2091)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(160[21:25])
    defparam i344_2_lut_rep_22.init = 16'h6666;
    LUT4 i1_2_lut_rep_16 (.A(mode[0]), .B(n1164), .Z(n2085)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(91[10:11])
    defparam i1_2_lut_rep_16.init = 16'hdddd;
    FD1P3IX delaycnt_275__i3 (.D(n162_adj_356), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i3.GSR = "ENABLED";
    OB modedisplay_pad_2 (.I(modedisplay_c_2), .O(modedisplay[2]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(11[3:14])
    LUT4 n1164_bdd_3_lut_1138 (.A(n1164), .B(mode[0]), .C(mode[1]), .Z(modedisplay_3__N_1[3])) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;
    defparam n1164_bdd_3_lut_1138.init = 16'h5454;
    LUT4 i403_4_lut_3_lut (.A(mode[0]), .B(mode[1]), .C(prstate[0]), .Z(n1103)) /* synthesis lut_function=(!(A (B)+!A !(B+(C)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(160[21:25])
    defparam i403_4_lut_3_lut.init = 16'h7676;
    LUT4 i689_3_lut_4_lut_4_lut (.A(n2088), .B(n2086), .C(digitdisplay_17__N_5[3]), 
         .D(n2087), .Z(digitdisplay_c_4)) /* synthesis lut_function=(!(A+!((C (D)+!C !(D))+!B))) */ ;
    defparam i689_3_lut_4_lut_4_lut.init = 16'h5115;
    LUT4 i1_2_lut_rep_19 (.A(delay[0]), .B(delaycnt[0]), .Z(n2088)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_rep_19.init = 16'h6666;
    FD1P3IX delaycnt_275__i4 (.D(n161_adj_355), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i4.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i8 (.D(n157_adj_351), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i8.GSR = "ENABLED";
    FD1P3AX prstate_i0_i0 (.D(nxstate[0]), .SP(clk_c_enable_67), .CK(clk_c), 
            .Q(prstate[0]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(137[3] 148[10])
    defparam prstate_i0_i0.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i17 (.D(n148), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i17.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i27 (.D(n138), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i27.GSR = "ENABLED";
    FD1S3IX seccnt_274__i31 (.D(n134_adj_360), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i31.GSR = "DISABLED";
    FD1P3IX delaycnt_275__i28 (.D(n137), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i28.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i18 (.D(n147), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i18.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i29 (.D(n136), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i29.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i19 (.D(n146), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i19.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i9 (.D(n156_adj_350), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i9.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i20 (.D(n145), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i20.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i30 (.D(n135), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i30.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i21 (.D(n144), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i21.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i10 (.D(n155_adj_349), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i10.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i22 (.D(n143), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i22.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i5 (.D(n160_adj_354), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i5.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i11 (.D(n154_adj_348), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i11.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i23 (.D(n142), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i23.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i31 (.D(n134), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i31.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i24 (.D(n141), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i24.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i12 (.D(n153_adj_347), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i12.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i25 (.D(n140), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i25.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i13 (.D(n152_adj_346), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i13.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i0 (.D(n165_adj_359), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i0.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i14 (.D(n151_adj_345), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i14.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i26 (.D(n139), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i26.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i15 (.D(n150_adj_344), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i15.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i6 (.D(n159_adj_353), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i6.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i16 (.D(n149_adj_343), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i16.GSR = "ENABLED";
    FD1P3IX delaycnt_275__i7 (.D(n158_adj_352), .SP(clk_c_enable_34), .CD(clk_c_enable_67), 
            .CK(clk_c), .Q(delaycnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275__i7.GSR = "ENABLED";
    CCU2D add_37_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1665), 
          .S1(n180));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(124[11:15])
    defparam add_37_1.INIT0 = 16'hF000;
    defparam add_37_1.INIT1 = 16'h5555;
    defparam add_37_1.INJECT1_0 = "NO";
    defparam add_37_1.INJECT1_1 = "NO";
    OB modedisplay_pad_3 (.I(modedisplay_c_3), .O(modedisplay[3]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(11[3:14])
    FD1S3AX modedisplay_i4 (.D(modedisplay_3__N_1[3]), .CK(clk_c), .Q(modedisplay_c_3));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(86[3] 100[10])
    defparam modedisplay_i4.GSR = "DISABLED";
    LUT4 i16_4_lut_adj_6 (.A(mode[15]), .B(mode[2]), .C(mode[6]), .D(mode[28]), 
         .Z(n46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(91[10:11])
    defparam i16_4_lut_adj_6.init = 16'hfffe;
    LUT4 i7_2_lut (.A(mode[8]), .B(mode[16]), .Z(n37_adj_341)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(91[10:11])
    defparam i7_2_lut.init = 16'heeee;
    LUT4 i29_4_lut (.A(n45), .B(n58), .C(n54), .D(n46), .Z(n1164)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(91[10:11])
    defparam i29_4_lut.init = 16'hfffe;
    FD1P3IX mode__i0 (.D(n180), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[0]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i0.GSR = "ENABLED";
    LUT4 i20_4_lut (.A(seccnt[18]), .B(n40), .C(n34), .D(seccnt[25]), 
         .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(109[8:22])
    defparam i20_4_lut.init = 16'hfffe;
    FD1S3AX modedisplay_i2 (.D(modedisplay_3__N_1[1]), .CK(clk_c), .Q(modedisplay_c_1));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(86[3] 100[10])
    defparam modedisplay_i2.GSR = "DISABLED";
    LUT4 i2_3_lut_rep_18_4_lut (.A(delay[0]), .B(delaycnt[0]), .C(delay[1]), 
         .D(delaycnt[1]), .Z(n2087)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(150[30:35])
    defparam i2_3_lut_rep_18_4_lut.init = 16'hb44b;
    LUT4 sec_I_0_158_2_lut_rep_20 (.A(sec), .B(sec_ls), .Z(clk_c_enable_34)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(141[8:30])
    defparam sec_I_0_158_2_lut_rep_20.init = 16'h2222;
    OB secdisplay_pad (.I(secdisplay_c), .O(secdisplay));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(10[3:13])
    LUT4 i26_4_lut (.A(mode[10]), .B(n52), .C(n42_adj_339), .D(mode[12]), 
         .Z(n56)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(91[10:11])
    defparam i26_4_lut.init = 16'hfffe;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i20_4_lut_adj_7 (.A(mode[13]), .B(mode[22]), .C(mode[21]), .D(mode[26]), 
         .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(91[10:11])
    defparam i20_4_lut_adj_7.init = 16'hfffe;
    LUT4 i8_2_lut (.A(mode[30]), .B(mode[11]), .Z(n38_adj_340)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(91[10:11])
    defparam i8_2_lut.init = 16'heeee;
    FD1S1I delay_3__I_0_153_i3 (.D(n2091), .CK(delay_3__N_105), .CD(n1886), 
           .Q(delay[2]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(153[2] 213[14])
    defparam delay_3__I_0_153_i3.GSR = "DISABLED";
    LUT4 i22_4_lut (.A(mode[27]), .B(mode[7]), .C(mode[29]), .D(mode[19]), 
         .Z(n52)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(91[10:11])
    defparam i22_4_lut.init = 16'hfffe;
    FD1S3IX seccnt_274__i30 (.D(n135_adj_361), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i30.GSR = "DISABLED";
    FD1S3IX seccnt_274__i29 (.D(n136_adj_362), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i29.GSR = "DISABLED";
    FD1S3IX seccnt_274__i28 (.D(n137_adj_363), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i28.GSR = "DISABLED";
    FD1S3IX seccnt_274__i27 (.D(n138_adj_364), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i27.GSR = "DISABLED";
    FD1S3IX seccnt_274__i26 (.D(n139_adj_365), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i26.GSR = "DISABLED";
    FD1S3IX seccnt_274__i25 (.D(n140_adj_366), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i25.GSR = "DISABLED";
    FD1S3IX seccnt_274__i24 (.D(n141_adj_367), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i24.GSR = "DISABLED";
    FD1S3IX seccnt_274__i23 (.D(n142_adj_368), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i23.GSR = "DISABLED";
    FD1S3IX seccnt_274__i22 (.D(n143_adj_369), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i22.GSR = "DISABLED";
    FD1S3IX seccnt_274__i21 (.D(n144_adj_370), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i21.GSR = "DISABLED";
    FD1S3IX seccnt_274__i20 (.D(n145_adj_371), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i20.GSR = "DISABLED";
    FD1S3IX seccnt_274__i19 (.D(n146_adj_372), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i19.GSR = "DISABLED";
    FD1S3IX seccnt_274__i18 (.D(n147_adj_373), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i18.GSR = "DISABLED";
    FD1S3IX seccnt_274__i17 (.D(n148_adj_374), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i17.GSR = "DISABLED";
    FD1S3IX seccnt_274__i16 (.D(n149_adj_375), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i16.GSR = "DISABLED";
    FD1S3IX seccnt_274__i15 (.D(n150_adj_376), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i15.GSR = "DISABLED";
    FD1S3IX seccnt_274__i14 (.D(n151_adj_377), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i14.GSR = "DISABLED";
    FD1S3IX seccnt_274__i13 (.D(n152_adj_378), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i13.GSR = "DISABLED";
    FD1S3IX seccnt_274__i12 (.D(n153_adj_379), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i12.GSR = "DISABLED";
    FD1S3IX seccnt_274__i11 (.D(n154_adj_380), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i11.GSR = "DISABLED";
    FD1S3IX seccnt_274__i10 (.D(n155_adj_381), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i10.GSR = "DISABLED";
    FD1S3IX seccnt_274__i9 (.D(n156_adj_382), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i9.GSR = "DISABLED";
    FD1S3IX seccnt_274__i8 (.D(n157_adj_383), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i8.GSR = "DISABLED";
    FD1S3IX seccnt_274__i7 (.D(n158_adj_384), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i7.GSR = "DISABLED";
    FD1S3IX seccnt_274__i6 (.D(n159_adj_385), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i6.GSR = "DISABLED";
    FD1S3IX seccnt_274__i5 (.D(n160_adj_386), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i5.GSR = "DISABLED";
    FD1S3IX seccnt_274__i4 (.D(n161_adj_387), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i4.GSR = "DISABLED";
    FD1S3IX seccnt_274__i3 (.D(n162_adj_388), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i3.GSR = "DISABLED";
    FD1S3IX seccnt_274__i2 (.D(n163_adj_389), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i2.GSR = "DISABLED";
    FD1S3IX seccnt_274__i1 (.D(n164_adj_390), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i1.GSR = "DISABLED";
    LUT4 i12_2_lut (.A(mode[18]), .B(mode[4]), .Z(n42_adj_339)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(91[10:11])
    defparam i12_2_lut.init = 16'heeee;
    FD1S3IX seccnt_274__i0 (.D(n165_adj_391), .CK(clk_c), .CD(n1179), 
            .Q(seccnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274__i0.GSR = "DISABLED";
    OB modedisplay_pad_0 (.I(modedisplay_c_0), .O(modedisplay[0]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(11[3:14])
    LUT4 i18_4_lut (.A(mode[5]), .B(mode[20]), .C(mode[17]), .D(mode[24]), 
         .Z(n48)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(91[10:11])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i295_3_lut_4_lut (.A(delay[0]), .B(delaycnt[0]), .C(delaycnt[1]), 
         .D(delay[1]), .Z(n4)) /* synthesis lut_function=(A ((D)+!C)+!A !(B (C+!(D))+!B !((D)+!C))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(150[30:35])
    defparam i295_3_lut_4_lut.init = 16'hbf0b;
    LUT4 i727_1_lut_3_lut_3_lut (.A(n2086), .B(digitdisplay_17__N_5[3]), 
         .C(n2087), .Z(n999)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(150[30:44])
    defparam i727_1_lut_3_lut_3_lut.init = 16'h8c8c;
    LUT4 i1109_4_lut_4_lut_3_lut (.A(mode[0]), .B(n1164), .C(mode[1]), 
         .Z(modedisplay_3__N_1[1])) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(91[10:11])
    defparam i1109_4_lut_4_lut_3_lut.init = 16'hefef;
    LUT4 i407_4_lut (.A(prstate[1]), .B(mode[0]), .C(prstate[0]), .D(mode[1]), 
         .Z(n1436)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (B (D)+!B !(C+!(D))))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(155[3] 212[12])
    defparam i407_4_lut.init = 16'h32f7;
    LUT4 i4_2_lut (.A(mode[25]), .B(mode[3]), .Z(n34_adj_342)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(91[10:11])
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i18_4_lut_adj_8 (.A(seccnt[12]), .B(n36), .C(n26), .D(seccnt[2]), 
         .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(109[8:22])
    defparam i18_4_lut_adj_8.init = 16'hfffe;
    LUT4 i12_4_lut (.A(seccnt[21]), .B(seccnt[13]), .C(seccnt[29]), .D(seccnt[14]), 
         .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(109[8:22])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i691_2_lut_3_lut_4_lut_4_lut (.A(n2086), .B(n2088), .C(digitdisplay_17__N_5[3]), 
         .D(n2087), .Z(digitdisplay_c_8)) /* synthesis lut_function=(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(150[30:44])
    defparam i691_2_lut_3_lut_4_lut_4_lut.init = 16'hf99f;
    LUT4 i1_3_lut_4_lut (.A(modedisplay_3__N_1[0]), .B(prstate[2]), .C(prstate[1]), 
         .D(prstate[0]), .Z(nxstate[1])) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(155[3] 212[12])
    defparam i1_3_lut_4_lut.init = 16'h0220;
    LUT4 i14_4_lut (.A(seccnt[27]), .B(seccnt[3]), .C(seccnt[30]), .D(seccnt[6]), 
         .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(109[8:22])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i1123_2_lut_4_lut (.A(n2088), .B(digitdisplay_17__N_5[3]), .C(n2087), 
         .D(n2086), .Z(digitdisplay_c_7)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+!(D)))) */ ;
    defparam i1123_2_lut_4_lut.init = 16'hd6ff;
    LUT4 i4_2_lut_adj_9 (.A(seccnt[0]), .B(seccnt[23]), .Z(n26)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(109[8:22])
    defparam i4_2_lut_adj_9.init = 16'heeee;
    LUT4 i2_3_lut_rep_17 (.A(n4), .B(delaycnt[2]), .C(delay[2]), .Z(n2086)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam i2_3_lut_rep_17.init = 16'h6969;
    LUT4 i1_4_lut (.A(prstate[0]), .B(modedisplay_3__N_1[0]), .C(prstate[1]), 
         .D(prstate[2]), .Z(nxstate[0])) /* synthesis lut_function=(!(A+(B (D)+!B (C+!(D))))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(155[3] 212[12])
    defparam i1_4_lut.init = 16'h0144;
    LUT4 i1_2_lut_rep_14_3_lut (.A(mode[0]), .B(n1164), .C(mode[1]), .Z(modedisplay_3__N_1[0])) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(91[10:11])
    defparam i1_2_lut_rep_14_3_lut.init = 16'hdfdf;
    LUT4 i1_2_lut (.A(sec), .B(n1179), .Z(sec_N_261)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    CCU2D add_936_30 (.A0(mode[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1774), 
          .S1(mode_31__N_210));
    defparam add_936_30.INIT0 = 16'hf555;
    defparam add_936_30.INIT1 = 16'h0000;
    defparam add_936_30.INJECT1_0 = "NO";
    defparam add_936_30.INJECT1_1 = "NO";
    CCU2D add_936_28 (.A0(mode[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1773), 
          .COUT(n1774));
    defparam add_936_28.INIT0 = 16'h5555;
    defparam add_936_28.INIT1 = 16'h5555;
    defparam add_936_28.INJECT1_0 = "NO";
    defparam add_936_28.INJECT1_1 = "NO";
    CCU2D add_936_26 (.A0(mode[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1772), 
          .COUT(n1773));
    defparam add_936_26.INIT0 = 16'h5555;
    defparam add_936_26.INIT1 = 16'h5555;
    defparam add_936_26.INJECT1_0 = "NO";
    defparam add_936_26.INJECT1_1 = "NO";
    CCU2D add_936_24 (.A0(mode[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1771), 
          .COUT(n1772));
    defparam add_936_24.INIT0 = 16'h5555;
    defparam add_936_24.INIT1 = 16'h5555;
    defparam add_936_24.INJECT1_0 = "NO";
    defparam add_936_24.INJECT1_1 = "NO";
    CCU2D add_936_22 (.A0(mode[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1770), 
          .COUT(n1771));
    defparam add_936_22.INIT0 = 16'h5555;
    defparam add_936_22.INIT1 = 16'h5555;
    defparam add_936_22.INJECT1_0 = "NO";
    defparam add_936_22.INJECT1_1 = "NO";
    CCU2D add_936_20 (.A0(mode[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1769), 
          .COUT(n1770));
    defparam add_936_20.INIT0 = 16'h5555;
    defparam add_936_20.INIT1 = 16'h5555;
    defparam add_936_20.INJECT1_0 = "NO";
    defparam add_936_20.INJECT1_1 = "NO";
    CCU2D add_936_18 (.A0(mode[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1768), 
          .COUT(n1769));
    defparam add_936_18.INIT0 = 16'h5555;
    defparam add_936_18.INIT1 = 16'h5555;
    defparam add_936_18.INJECT1_0 = "NO";
    defparam add_936_18.INJECT1_1 = "NO";
    CCU2D add_936_16 (.A0(mode[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1767), 
          .COUT(n1768));
    defparam add_936_16.INIT0 = 16'h5555;
    defparam add_936_16.INIT1 = 16'h5555;
    defparam add_936_16.INJECT1_0 = "NO";
    defparam add_936_16.INJECT1_1 = "NO";
    CCU2D add_936_14 (.A0(mode[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1766), 
          .COUT(n1767));
    defparam add_936_14.INIT0 = 16'h5555;
    defparam add_936_14.INIT1 = 16'h5555;
    defparam add_936_14.INJECT1_0 = "NO";
    defparam add_936_14.INJECT1_1 = "NO";
    CCU2D add_936_12 (.A0(mode[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1765), 
          .COUT(n1766));
    defparam add_936_12.INIT0 = 16'h5555;
    defparam add_936_12.INIT1 = 16'h5555;
    defparam add_936_12.INJECT1_0 = "NO";
    defparam add_936_12.INJECT1_1 = "NO";
    CCU2D add_936_10 (.A0(mode[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1764), 
          .COUT(n1765));
    defparam add_936_10.INIT0 = 16'h5555;
    defparam add_936_10.INIT1 = 16'h5555;
    defparam add_936_10.INJECT1_0 = "NO";
    defparam add_936_10.INJECT1_1 = "NO";
    CCU2D delaycnt_275_add_4_9 (.A0(delaycnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1732), .COUT(n1733), .S0(n158_adj_352), 
          .S1(n157_adj_351));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275_add_4_9.INIT0 = 16'hfaaa;
    defparam delaycnt_275_add_4_9.INIT1 = 16'hfaaa;
    defparam delaycnt_275_add_4_9.INJECT1_0 = "NO";
    defparam delaycnt_275_add_4_9.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_33 (.A0(delaycnt[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1696), .S1(n321));
    defparam sub_223_add_2_33.INIT0 = 16'hf555;
    defparam sub_223_add_2_33.INIT1 = 16'h0000;
    defparam sub_223_add_2_33.INJECT1_0 = "NO";
    defparam sub_223_add_2_33.INJECT1_1 = "NO";
    CCU2D add_37_31 (.A0(mode[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1679), 
          .COUT(n1680), .S0(n151), .S1(n150));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(124[11:15])
    defparam add_37_31.INIT0 = 16'h5aaa;
    defparam add_37_31.INIT1 = 16'h5aaa;
    defparam add_37_31.INJECT1_0 = "NO";
    defparam add_37_31.INJECT1_1 = "NO";
    CCU2D add_37_29 (.A0(mode[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1678), 
          .COUT(n1679), .S0(n153), .S1(n152));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(124[11:15])
    defparam add_37_29.INIT0 = 16'h5aaa;
    defparam add_37_29.INIT1 = 16'h5aaa;
    defparam add_37_29.INJECT1_0 = "NO";
    defparam add_37_29.INJECT1_1 = "NO";
    CCU2D add_37_27 (.A0(mode[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1677), 
          .COUT(n1678), .S0(n155), .S1(n154));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(124[11:15])
    defparam add_37_27.INIT0 = 16'h5aaa;
    defparam add_37_27.INIT1 = 16'h5aaa;
    defparam add_37_27.INJECT1_0 = "NO";
    defparam add_37_27.INJECT1_1 = "NO";
    CCU2D add_37_3 (.A0(mode[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1665), 
          .COUT(n1666), .S0(n179), .S1(n178));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(124[11:15])
    defparam add_37_3.INIT0 = 16'h5aaa;
    defparam add_37_3.INIT1 = 16'h5aaa;
    defparam add_37_3.INJECT1_0 = "NO";
    defparam add_37_3.INJECT1_1 = "NO";
    LUT4 i279_3_lut (.A(modekey_state), .B(mode_31__N_210), .C(modekey_state_ls), 
         .Z(clk_c_enable_66)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;
    defparam i279_3_lut.init = 16'hdcdc;
    LUT4 i1112_4_lut (.A(n1914), .B(seccnt[17]), .C(n1920), .D(n12), 
         .Z(n1179)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(109[8:22])
    defparam i1112_4_lut.init = 16'h0080;
    LUT4 i1_4_lut_adj_10 (.A(n37), .B(seccnt[10]), .C(n42), .D(n38), 
         .Z(n12)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_10.init = 16'hfffb;
    LUT4 sec_I_0_1_lut (.A(sec), .Z(sec_N_260)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(87[16:24])
    defparam sec_I_0_1_lut.init = 16'h5555;
    LUT4 digitdisplay_17__N_5_3__bdd_4_lut (.A(digitdisplay_17__N_5[3]), .B(n2086), 
         .C(n2087), .D(n2088), .Z(digitdisplay_c_5)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C (D)+!C !(D))+!B !(C (D)))) */ ;
    defparam digitdisplay_17__N_5_3__bdd_4_lut.init = 16'he9b7;
    CCU2D add_936_8 (.A0(mode[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1763), 
          .COUT(n1764));
    defparam add_936_8.INIT0 = 16'h5555;
    defparam add_936_8.INIT1 = 16'h5555;
    defparam add_936_8.INJECT1_0 = "NO";
    defparam add_936_8.INJECT1_1 = "NO";
    CCU2D add_936_6 (.A0(mode[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1762), 
          .COUT(n1763));
    defparam add_936_6.INIT0 = 16'h5555;
    defparam add_936_6.INIT1 = 16'h5555;
    defparam add_936_6.INJECT1_0 = "NO";
    defparam add_936_6.INJECT1_1 = "NO";
    CCU2D add_936_4 (.A0(mode[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1761), 
          .COUT(n1762));
    defparam add_936_4.INIT0 = 16'h5555;
    defparam add_936_4.INIT1 = 16'h5555;
    defparam add_936_4.INJECT1_0 = "NO";
    defparam add_936_4.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_31 (.A0(delaycnt[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1695), .COUT(n1696));
    defparam sub_223_add_2_31.INIT0 = 16'h5555;
    defparam sub_223_add_2_31.INIT1 = 16'h5555;
    defparam sub_223_add_2_31.INJECT1_0 = "NO";
    defparam sub_223_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_29 (.A0(delaycnt[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1694), .COUT(n1695));
    defparam sub_223_add_2_29.INIT0 = 16'h5555;
    defparam sub_223_add_2_29.INIT1 = 16'h5555;
    defparam sub_223_add_2_29.INJECT1_0 = "NO";
    defparam sub_223_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_27 (.A0(delaycnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1693), .COUT(n1694));
    defparam sub_223_add_2_27.INIT0 = 16'h5555;
    defparam sub_223_add_2_27.INIT1 = 16'h5555;
    defparam sub_223_add_2_27.INJECT1_0 = "NO";
    defparam sub_223_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_25 (.A0(delaycnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1692), .COUT(n1693));
    defparam sub_223_add_2_25.INIT0 = 16'h5555;
    defparam sub_223_add_2_25.INIT1 = 16'h5555;
    defparam sub_223_add_2_25.INJECT1_0 = "NO";
    defparam sub_223_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_23 (.A0(delaycnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1691), .COUT(n1692));
    defparam sub_223_add_2_23.INIT0 = 16'h5555;
    defparam sub_223_add_2_23.INIT1 = 16'h5555;
    defparam sub_223_add_2_23.INJECT1_0 = "NO";
    defparam sub_223_add_2_23.INJECT1_1 = "NO";
    CCU2D delaycnt_275_add_4_7 (.A0(delaycnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1731), .COUT(n1732), .S0(n160_adj_354), 
          .S1(n159_adj_353));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275_add_4_7.INIT0 = 16'hfaaa;
    defparam delaycnt_275_add_4_7.INIT1 = 16'hfaaa;
    defparam delaycnt_275_add_4_7.INJECT1_0 = "NO";
    defparam delaycnt_275_add_4_7.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_21 (.A0(delaycnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1690), .COUT(n1691));
    defparam sub_223_add_2_21.INIT0 = 16'h5555;
    defparam sub_223_add_2_21.INIT1 = 16'h5555;
    defparam sub_223_add_2_21.INJECT1_0 = "NO";
    defparam sub_223_add_2_21.INJECT1_1 = "NO";
    CCU2D add_37_25 (.A0(mode[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1676), 
          .COUT(n1677), .S0(n157), .S1(n156));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(124[11:15])
    defparam add_37_25.INIT0 = 16'h5aaa;
    defparam add_37_25.INIT1 = 16'h5aaa;
    defparam add_37_25.INJECT1_0 = "NO";
    defparam add_37_25.INJECT1_1 = "NO";
    CCU2D add_37_23 (.A0(mode[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1675), 
          .COUT(n1676), .S0(n159), .S1(n158));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(124[11:15])
    defparam add_37_23.INIT0 = 16'h5aaa;
    defparam add_37_23.INIT1 = 16'h5aaa;
    defparam add_37_23.INJECT1_0 = "NO";
    defparam add_37_23.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_19 (.A0(delaycnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1689), .COUT(n1690));
    defparam sub_223_add_2_19.INIT0 = 16'h5555;
    defparam sub_223_add_2_19.INIT1 = 16'h5555;
    defparam sub_223_add_2_19.INJECT1_0 = "NO";
    defparam sub_223_add_2_19.INJECT1_1 = "NO";
    FD1P3IX mode__i31 (.D(n149), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[31]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i31.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    LUT4 i2_3_lut_4_lut (.A(mode[1]), .B(n2085), .C(prstate[1]), .D(prstate[2]), 
         .Z(delay_3__N_105)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A (C+!(D))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(91[10:11])
    defparam i2_3_lut_4_lut.init = 16'hf2ff;
    LUT4 i700_4_lut_4_lut (.A(n2087), .B(digitdisplay_17__N_5[3]), .C(n2086), 
         .D(n2088), .Z(digitdisplay_c_6)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(150[30:44])
    defparam i700_4_lut_4_lut.init = 16'hff7e;
    CycleSampler k1 (.clk_c(clk_c), .modekey_state(modekey_state), .GND_net(GND_net), 
            .modekey_c(modekey_c));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(72[6:18])
    CCU2D add_37_21 (.A0(mode[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1674), 
          .COUT(n1675), .S0(n161), .S1(n160));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(124[11:15])
    defparam add_37_21.INIT0 = 16'h5aaa;
    defparam add_37_21.INIT1 = 16'h5aaa;
    defparam add_37_21.INJECT1_0 = "NO";
    defparam add_37_21.INJECT1_1 = "NO";
    CCU2D add_37_19 (.A0(mode[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1673), 
          .COUT(n1674), .S0(n163), .S1(n162));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(124[11:15])
    defparam add_37_19.INIT0 = 16'h5aaa;
    defparam add_37_19.INIT1 = 16'h5aaa;
    defparam add_37_19.INJECT1_0 = "NO";
    defparam add_37_19.INJECT1_1 = "NO";
    CCU2D add_37_17 (.A0(mode[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1672), 
          .COUT(n1673), .S0(n165), .S1(n164));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(124[11:15])
    defparam add_37_17.INIT0 = 16'h5aaa;
    defparam add_37_17.INIT1 = 16'h5aaa;
    defparam add_37_17.INJECT1_0 = "NO";
    defparam add_37_17.INJECT1_1 = "NO";
    CCU2D add_936_2 (.A0(mode[3]), .B0(mode[2]), .C0(GND_net), .D0(GND_net), 
          .A1(mode[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1761));
    defparam add_936_2.INIT0 = 16'h1000;
    defparam add_936_2.INIT1 = 16'h5555;
    defparam add_936_2.INJECT1_0 = "NO";
    defparam add_936_2.INJECT1_1 = "NO";
    CCU2D seccnt_274_add_4_33 (.A0(seccnt[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1760), .S0(n134_adj_360));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274_add_4_33.INIT0 = 16'hfaaa;
    defparam seccnt_274_add_4_33.INIT1 = 16'h0000;
    defparam seccnt_274_add_4_33.INJECT1_0 = "NO";
    defparam seccnt_274_add_4_33.INJECT1_1 = "NO";
    CCU2D seccnt_274_add_4_31 (.A0(seccnt[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1759), .COUT(n1760), .S0(n136_adj_362), 
          .S1(n135_adj_361));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274_add_4_31.INIT0 = 16'hfaaa;
    defparam seccnt_274_add_4_31.INIT1 = 16'hfaaa;
    defparam seccnt_274_add_4_31.INJECT1_0 = "NO";
    defparam seccnt_274_add_4_31.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_17 (.A0(delaycnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1688), .COUT(n1689));
    defparam sub_223_add_2_17.INIT0 = 16'h5555;
    defparam sub_223_add_2_17.INIT1 = 16'h5555;
    defparam sub_223_add_2_17.INJECT1_0 = "NO";
    defparam sub_223_add_2_17.INJECT1_1 = "NO";
    CCU2D delaycnt_275_add_4_5 (.A0(delaycnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1730), .COUT(n1731), .S0(n162_adj_356), 
          .S1(n161_adj_355));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275_add_4_5.INIT0 = 16'hfaaa;
    defparam delaycnt_275_add_4_5.INIT1 = 16'hfaaa;
    defparam delaycnt_275_add_4_5.INJECT1_0 = "NO";
    defparam delaycnt_275_add_4_5.INJECT1_1 = "NO";
    CCU2D seccnt_274_add_4_29 (.A0(seccnt[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1758), .COUT(n1759), .S0(n138_adj_364), 
          .S1(n137_adj_363));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274_add_4_29.INIT0 = 16'hfaaa;
    defparam seccnt_274_add_4_29.INIT1 = 16'hfaaa;
    defparam seccnt_274_add_4_29.INJECT1_0 = "NO";
    defparam seccnt_274_add_4_29.INJECT1_1 = "NO";
    CCU2D seccnt_274_add_4_27 (.A0(seccnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1757), .COUT(n1758), .S0(n140_adj_366), 
          .S1(n139_adj_365));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274_add_4_27.INIT0 = 16'hfaaa;
    defparam seccnt_274_add_4_27.INIT1 = 16'hfaaa;
    defparam seccnt_274_add_4_27.INJECT1_0 = "NO";
    defparam seccnt_274_add_4_27.INJECT1_1 = "NO";
    CCU2D seccnt_274_add_4_25 (.A0(seccnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1756), .COUT(n1757), .S0(n142_adj_368), 
          .S1(n141_adj_367));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274_add_4_25.INIT0 = 16'hfaaa;
    defparam seccnt_274_add_4_25.INIT1 = 16'hfaaa;
    defparam seccnt_274_add_4_25.INJECT1_0 = "NO";
    defparam seccnt_274_add_4_25.INJECT1_1 = "NO";
    CCU2D seccnt_274_add_4_23 (.A0(seccnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1755), .COUT(n1756), .S0(n144_adj_370), 
          .S1(n143_adj_369));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274_add_4_23.INIT0 = 16'hfaaa;
    defparam seccnt_274_add_4_23.INIT1 = 16'hfaaa;
    defparam seccnt_274_add_4_23.INJECT1_0 = "NO";
    defparam seccnt_274_add_4_23.INJECT1_1 = "NO";
    CCU2D seccnt_274_add_4_21 (.A0(seccnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1754), .COUT(n1755), .S0(n146_adj_372), 
          .S1(n145_adj_371));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274_add_4_21.INIT0 = 16'hfaaa;
    defparam seccnt_274_add_4_21.INIT1 = 16'hfaaa;
    defparam seccnt_274_add_4_21.INJECT1_0 = "NO";
    defparam seccnt_274_add_4_21.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_15 (.A0(delaycnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1687), .COUT(n1688));
    defparam sub_223_add_2_15.INIT0 = 16'h5555;
    defparam sub_223_add_2_15.INIT1 = 16'h5555;
    defparam sub_223_add_2_15.INJECT1_0 = "NO";
    defparam sub_223_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_13 (.A0(delaycnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1686), .COUT(n1687));
    defparam sub_223_add_2_13.INIT0 = 16'h5555;
    defparam sub_223_add_2_13.INIT1 = 16'h5555;
    defparam sub_223_add_2_13.INJECT1_0 = "NO";
    defparam sub_223_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_11 (.A0(delaycnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1685), .COUT(n1686));
    defparam sub_223_add_2_11.INIT0 = 16'h5555;
    defparam sub_223_add_2_11.INIT1 = 16'h5555;
    defparam sub_223_add_2_11.INJECT1_0 = "NO";
    defparam sub_223_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_9 (.A0(delaycnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1684), .COUT(n1685));
    defparam sub_223_add_2_9.INIT0 = 16'h5555;
    defparam sub_223_add_2_9.INIT1 = 16'h5555;
    defparam sub_223_add_2_9.INJECT1_0 = "NO";
    defparam sub_223_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_7 (.A0(delaycnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1683), .COUT(n1684));
    defparam sub_223_add_2_7.INIT0 = 16'h5555;
    defparam sub_223_add_2_7.INIT1 = 16'h5555;
    defparam sub_223_add_2_7.INJECT1_0 = "NO";
    defparam sub_223_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_5 (.A0(delaycnt[3]), .B0(delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1682), .COUT(n1683));
    defparam sub_223_add_2_5.INIT0 = 16'h5999;
    defparam sub_223_add_2_5.INIT1 = 16'h5555;
    defparam sub_223_add_2_5.INJECT1_0 = "NO";
    defparam sub_223_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_3 (.A0(delaycnt[1]), .B0(delay[1]), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[2]), .B1(delay[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1681), .COUT(n1682));
    defparam sub_223_add_2_3.INIT0 = 16'h5999;
    defparam sub_223_add_2_3.INIT1 = 16'h5999;
    defparam sub_223_add_2_3.INJECT1_0 = "NO";
    defparam sub_223_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(delaycnt[0]), .B1(delay[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1681));
    defparam sub_223_add_2_1.INIT0 = 16'h0000;
    defparam sub_223_add_2_1.INIT1 = 16'h5999;
    defparam sub_223_add_2_1.INJECT1_0 = "NO";
    defparam sub_223_add_2_1.INJECT1_1 = "NO";
    FD1P3IX mode__i30 (.D(n150), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[30]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i30.GSR = "ENABLED";
    FD1P3IX mode__i29 (.D(n151), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[29]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i29.GSR = "ENABLED";
    FD1P3IX mode__i28 (.D(n152), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[28]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i28.GSR = "ENABLED";
    FD1P3IX mode__i27 (.D(n153), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[27]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i27.GSR = "ENABLED";
    FD1P3IX mode__i26 (.D(n154), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[26]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i26.GSR = "ENABLED";
    FD1P3IX mode__i25 (.D(n155), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[25]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i25.GSR = "ENABLED";
    FD1P3IX mode__i24 (.D(n156), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[24]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i24.GSR = "ENABLED";
    FD1P3IX mode__i23 (.D(n157), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[23]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i23.GSR = "ENABLED";
    FD1P3IX mode__i22 (.D(n158), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[22]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i22.GSR = "ENABLED";
    FD1P3IX mode__i21 (.D(n159), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[21]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i21.GSR = "ENABLED";
    FD1P3IX mode__i20 (.D(n160), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[20]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i20.GSR = "ENABLED";
    FD1P3IX mode__i19 (.D(n161), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[19]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i19.GSR = "ENABLED";
    FD1P3IX mode__i18 (.D(n162), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[18]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i18.GSR = "ENABLED";
    FD1P3IX mode__i17 (.D(n163), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[17]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i17.GSR = "ENABLED";
    FD1P3IX mode__i16 (.D(n164), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[16]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i16.GSR = "ENABLED";
    FD1P3IX mode__i15 (.D(n165), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[15]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i15.GSR = "ENABLED";
    FD1P3IX mode__i14 (.D(n166), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[14]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i14.GSR = "ENABLED";
    FD1P3IX mode__i13 (.D(n167), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[13]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i13.GSR = "ENABLED";
    FD1P3IX mode__i12 (.D(n168), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[12]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i12.GSR = "ENABLED";
    FD1P3IX mode__i11 (.D(n169), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[11]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i11.GSR = "ENABLED";
    FD1P3IX mode__i10 (.D(n170), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[10]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i10.GSR = "ENABLED";
    FD1P3IX mode__i9 (.D(n171), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[9]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i9.GSR = "ENABLED";
    FD1P3IX mode__i8 (.D(n172), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[8]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i8.GSR = "ENABLED";
    FD1P3IX mode__i7 (.D(n173), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[7]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i7.GSR = "ENABLED";
    FD1P3IX mode__i6 (.D(n174), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[6]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i6.GSR = "ENABLED";
    FD1P3IX mode__i5 (.D(n175), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[5]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i5.GSR = "ENABLED";
    FD1P3IX mode__i4 (.D(n176), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[4]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i4.GSR = "ENABLED";
    FD1P3IX mode__i3 (.D(n177), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[3]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i3.GSR = "ENABLED";
    FD1P3IX mode__i2 (.D(n178), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[2]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i2.GSR = "ENABLED";
    FD1P3IX mode__i1 (.D(n179), .SP(clk_c_enable_66), .CD(mode_31__N_210), 
            .CK(clk_c), .Q(mode[1]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(120[3] 129[10])
    defparam mode__i1.GSR = "ENABLED";
    FD1P3AX prstate_i0_i2 (.D(nxstate[2]), .SP(clk_c_enable_67), .CK(clk_c), 
            .Q(prstate[2]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(137[3] 148[10])
    defparam prstate_i0_i2.GSR = "ENABLED";
    CCU2D seccnt_274_add_4_19 (.A0(seccnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1753), .COUT(n1754), .S0(n148_adj_374), 
          .S1(n147_adj_373));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274_add_4_19.INIT0 = 16'hfaaa;
    defparam seccnt_274_add_4_19.INIT1 = 16'hfaaa;
    defparam seccnt_274_add_4_19.INJECT1_0 = "NO";
    defparam seccnt_274_add_4_19.INJECT1_1 = "NO";
    CCU2D seccnt_274_add_4_17 (.A0(seccnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1752), .COUT(n1753), .S0(n150_adj_376), 
          .S1(n149_adj_375));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274_add_4_17.INIT0 = 16'hfaaa;
    defparam seccnt_274_add_4_17.INIT1 = 16'hfaaa;
    defparam seccnt_274_add_4_17.INJECT1_0 = "NO";
    defparam seccnt_274_add_4_17.INJECT1_1 = "NO";
    CCU2D seccnt_274_add_4_15 (.A0(seccnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1751), .COUT(n1752), .S0(n152_adj_378), 
          .S1(n151_adj_377));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274_add_4_15.INIT0 = 16'hfaaa;
    defparam seccnt_274_add_4_15.INIT1 = 16'hfaaa;
    defparam seccnt_274_add_4_15.INJECT1_0 = "NO";
    defparam seccnt_274_add_4_15.INJECT1_1 = "NO";
    CCU2D delaycnt_275_add_4_3 (.A0(delaycnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1729), .COUT(n1730), .S0(n164_adj_358), 
          .S1(n163_adj_357));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275_add_4_3.INIT0 = 16'hfaaa;
    defparam delaycnt_275_add_4_3.INIT1 = 16'hfaaa;
    defparam delaycnt_275_add_4_3.INJECT1_0 = "NO";
    defparam delaycnt_275_add_4_3.INJECT1_1 = "NO";
    CCU2D add_37_15 (.A0(mode[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1671), 
          .COUT(n1672), .S0(n167), .S1(n166));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(124[11:15])
    defparam add_37_15.INIT0 = 16'h5aaa;
    defparam add_37_15.INIT1 = 16'h5aaa;
    defparam add_37_15.INJECT1_0 = "NO";
    defparam add_37_15.INJECT1_1 = "NO";
    CCU2D add_37_13 (.A0(mode[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1670), 
          .COUT(n1671), .S0(n169), .S1(n168));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(124[11:15])
    defparam add_37_13.INIT0 = 16'h5aaa;
    defparam add_37_13.INIT1 = 16'h5aaa;
    defparam add_37_13.INJECT1_0 = "NO";
    defparam add_37_13.INJECT1_1 = "NO";
    CCU2D seccnt_274_add_4_13 (.A0(seccnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1750), .COUT(n1751), .S0(n154_adj_380), 
          .S1(n153_adj_379));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274_add_4_13.INIT0 = 16'hfaaa;
    defparam seccnt_274_add_4_13.INIT1 = 16'hfaaa;
    defparam seccnt_274_add_4_13.INJECT1_0 = "NO";
    defparam seccnt_274_add_4_13.INJECT1_1 = "NO";
    LUT4 i1082_4_lut (.A(seccnt[7]), .B(seccnt[22]), .C(seccnt[19]), .D(seccnt[16]), 
         .Z(n1920)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1082_4_lut.init = 16'h8000;
    LUT4 i687_3_lut_rep_15_3_lut (.A(n2086), .B(digitdisplay_17__N_5[3]), 
         .C(n2087), .Z(n2084)) /* synthesis lut_function=(!(A (B)+!A !((C)+!B))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(150[30:44])
    defparam i687_3_lut_rep_15_3_lut.init = 16'h7373;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2D seccnt_274_add_4_11 (.A0(seccnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1749), .COUT(n1750), .S0(n156_adj_382), 
          .S1(n155_adj_381));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274_add_4_11.INIT0 = 16'hfaaa;
    defparam seccnt_274_add_4_11.INIT1 = 16'hfaaa;
    defparam seccnt_274_add_4_11.INJECT1_0 = "NO";
    defparam seccnt_274_add_4_11.INJECT1_1 = "NO";
    CCU2D seccnt_274_add_4_9 (.A0(seccnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1748), .COUT(n1749), .S0(n158_adj_384), 
          .S1(n157_adj_383));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274_add_4_9.INIT0 = 16'hfaaa;
    defparam seccnt_274_add_4_9.INIT1 = 16'hfaaa;
    defparam seccnt_274_add_4_9.INJECT1_0 = "NO";
    defparam seccnt_274_add_4_9.INJECT1_1 = "NO";
    CCU2D seccnt_274_add_4_7 (.A0(seccnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1747), .COUT(n1748), .S0(n160_adj_386), 
          .S1(n159_adj_385));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274_add_4_7.INIT0 = 16'hfaaa;
    defparam seccnt_274_add_4_7.INIT1 = 16'hfaaa;
    defparam seccnt_274_add_4_7.INJECT1_0 = "NO";
    defparam seccnt_274_add_4_7.INJECT1_1 = "NO";
    LUT4 i1077_4_lut (.A(seccnt[15]), .B(seccnt[20]), .C(seccnt[11]), 
         .D(seccnt[8]), .Z(n1914)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1077_4_lut.init = 16'h8000;
    CCU2D delaycnt_275_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1729), .S1(n165_adj_359));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275_add_4_1.INIT0 = 16'hF000;
    defparam delaycnt_275_add_4_1.INIT1 = 16'h0555;
    defparam delaycnt_275_add_4_1.INJECT1_0 = "NO";
    defparam delaycnt_275_add_4_1.INJECT1_1 = "NO";
    CCU2D add_37_33 (.A0(mode[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1680), 
          .S0(n149));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(124[11:15])
    defparam add_37_33.INIT0 = 16'h5aaa;
    defparam add_37_33.INIT1 = 16'h0000;
    defparam add_37_33.INJECT1_0 = "NO";
    defparam add_37_33.INJECT1_1 = "NO";
    CCU2D add_37_11 (.A0(mode[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1669), 
          .COUT(n1670), .S0(n171), .S1(n170));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(124[11:15])
    defparam add_37_11.INIT0 = 16'h5aaa;
    defparam add_37_11.INIT1 = 16'h5aaa;
    defparam add_37_11.INJECT1_0 = "NO";
    defparam add_37_11.INJECT1_1 = "NO";
    CCU2D add_37_9 (.A0(mode[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1668), 
          .COUT(n1669), .S0(n173), .S1(n172));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(124[11:15])
    defparam add_37_9.INIT0 = 16'h5aaa;
    defparam add_37_9.INIT1 = 16'h5aaa;
    defparam add_37_9.INJECT1_0 = "NO";
    defparam add_37_9.INJECT1_1 = "NO";
    CCU2D add_37_7 (.A0(mode[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1667), 
          .COUT(n1668), .S0(n175), .S1(n174));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(124[11:15])
    defparam add_37_7.INIT0 = 16'h5aaa;
    defparam add_37_7.INIT1 = 16'h5aaa;
    defparam add_37_7.INJECT1_0 = "NO";
    defparam add_37_7.INJECT1_1 = "NO";
    CCU2D seccnt_274_add_4_5 (.A0(seccnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1746), .COUT(n1747), .S0(n162_adj_388), 
          .S1(n161_adj_387));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274_add_4_5.INIT0 = 16'hfaaa;
    defparam seccnt_274_add_4_5.INIT1 = 16'hfaaa;
    defparam seccnt_274_add_4_5.INJECT1_0 = "NO";
    defparam seccnt_274_add_4_5.INJECT1_1 = "NO";
    CCU2D seccnt_274_add_4_3 (.A0(seccnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1745), .COUT(n1746), .S0(n164_adj_390), 
          .S1(n163_adj_389));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274_add_4_3.INIT0 = 16'hfaaa;
    defparam seccnt_274_add_4_3.INIT1 = 16'hfaaa;
    defparam seccnt_274_add_4_3.INJECT1_0 = "NO";
    defparam seccnt_274_add_4_3.INJECT1_1 = "NO";
    CCU2D seccnt_274_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1745), .S1(n165_adj_391));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(108[12:18])
    defparam seccnt_274_add_4_1.INIT0 = 16'hF000;
    defparam seccnt_274_add_4_1.INIT1 = 16'h0555;
    defparam seccnt_274_add_4_1.INJECT1_0 = "NO";
    defparam seccnt_274_add_4_1.INJECT1_1 = "NO";
    CCU2D delaycnt_275_add_4_33 (.A0(delaycnt[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1744), .S0(n134));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275_add_4_33.INIT0 = 16'hfaaa;
    defparam delaycnt_275_add_4_33.INIT1 = 16'h0000;
    defparam delaycnt_275_add_4_33.INJECT1_0 = "NO";
    defparam delaycnt_275_add_4_33.INJECT1_1 = "NO";
    CCU2D delaycnt_275_add_4_31 (.A0(delaycnt[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1743), .COUT(n1744), .S0(n136), .S1(n135));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275_add_4_31.INIT0 = 16'hfaaa;
    defparam delaycnt_275_add_4_31.INIT1 = 16'hfaaa;
    defparam delaycnt_275_add_4_31.INJECT1_0 = "NO";
    defparam delaycnt_275_add_4_31.INJECT1_1 = "NO";
    CCU2D delaycnt_275_add_4_29 (.A0(delaycnt[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1742), .COUT(n1743), .S0(n138), .S1(n137));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275_add_4_29.INIT0 = 16'hfaaa;
    defparam delaycnt_275_add_4_29.INIT1 = 16'hfaaa;
    defparam delaycnt_275_add_4_29.INJECT1_0 = "NO";
    defparam delaycnt_275_add_4_29.INJECT1_1 = "NO";
    CCU2D add_37_5 (.A0(mode[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1666), 
          .COUT(n1667), .S0(n177), .S1(n176));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(124[11:15])
    defparam add_37_5.INIT0 = 16'h5aaa;
    defparam add_37_5.INIT1 = 16'h5aaa;
    defparam add_37_5.INJECT1_0 = "NO";
    defparam add_37_5.INJECT1_1 = "NO";
    CCU2D delaycnt_275_add_4_27 (.A0(delaycnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1741), .COUT(n1742), .S0(n140), .S1(n139));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275_add_4_27.INIT0 = 16'hfaaa;
    defparam delaycnt_275_add_4_27.INIT1 = 16'hfaaa;
    defparam delaycnt_275_add_4_27.INJECT1_0 = "NO";
    defparam delaycnt_275_add_4_27.INJECT1_1 = "NO";
    LUT4 i1096_2_lut_rep_13_3_lut_4_lut (.A(mode[0]), .B(n1164), .C(prstate[2]), 
         .D(mode[1]), .Z(n2082)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(91[10:11])
    defparam i1096_2_lut_rep_13_3_lut_4_lut.init = 16'hf2f0;
    LUT4 n1138_bdd_4_lut (.A(n2087), .B(digitdisplay_17__N_5[3]), .C(n2086), 
         .D(n2088), .Z(digitdisplay_c_3)) /* synthesis lut_function=(!(A (B (C)+!B !(C+!(D)))+!A !(B (C+!(D))+!B !((D)+!C)))) */ ;
    defparam n1138_bdd_4_lut.init = 16'h687e;
    CCU2D delaycnt_275_add_4_25 (.A0(delaycnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1740), .COUT(n1741), .S0(n142), .S1(n141));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275_add_4_25.INIT0 = 16'hfaaa;
    defparam delaycnt_275_add_4_25.INIT1 = 16'hfaaa;
    defparam delaycnt_275_add_4_25.INJECT1_0 = "NO";
    defparam delaycnt_275_add_4_25.INJECT1_1 = "NO";
    LUT4 digitdisplay_17__I_0_Mux_2_i15_4_lut_4_lut_4_lut (.A(n2088), .B(digitdisplay_17__N_5[3]), 
         .C(n2087), .D(n2086), .Z(digitdisplay_c_2)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)+!C !(D)))+!A (B (C+(D))+!B ((D)+!C))) */ ;
    defparam digitdisplay_17__I_0_Mux_2_i15_4_lut_4_lut_4_lut.init = 16'hfdc3;
    CCU2D delaycnt_275_add_4_23 (.A0(delaycnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1739), .COUT(n1740), .S0(n144), .S1(n143));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275_add_4_23.INIT0 = 16'hfaaa;
    defparam delaycnt_275_add_4_23.INIT1 = 16'hfaaa;
    defparam delaycnt_275_add_4_23.INJECT1_0 = "NO";
    defparam delaycnt_275_add_4_23.INJECT1_1 = "NO";
    CCU2D delaycnt_275_add_4_21 (.A0(delaycnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1738), .COUT(n1739), .S0(n146), .S1(n145));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275_add_4_21.INIT0 = 16'hfaaa;
    defparam delaycnt_275_add_4_21.INIT1 = 16'hfaaa;
    defparam delaycnt_275_add_4_21.INJECT1_0 = "NO";
    defparam delaycnt_275_add_4_21.INJECT1_1 = "NO";
    CCU2D delaycnt_275_add_4_19 (.A0(delaycnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1737), .COUT(n1738), .S0(n148), .S1(n147));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275_add_4_19.INIT0 = 16'hfaaa;
    defparam delaycnt_275_add_4_19.INIT1 = 16'hfaaa;
    defparam delaycnt_275_add_4_19.INJECT1_0 = "NO";
    defparam delaycnt_275_add_4_19.INJECT1_1 = "NO";
    LUT4 n1164_bdd_3_lut (.A(n1164), .B(mode[0]), .C(mode[1]), .Z(modedisplay_3__N_1[2])) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam n1164_bdd_3_lut.init = 16'hfbfb;
    CCU2D delaycnt_275_add_4_17 (.A0(delaycnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1736), .COUT(n1737), .S0(n150_adj_344), 
          .S1(n149_adj_343));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275_add_4_17.INIT0 = 16'hfaaa;
    defparam delaycnt_275_add_4_17.INIT1 = 16'hfaaa;
    defparam delaycnt_275_add_4_17.INJECT1_0 = "NO";
    defparam delaycnt_275_add_4_17.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(delay[2]), .B(n4_adj_338), .C(delaycnt[2]), .D(n4), 
         .Z(digitdisplay_17__N_5[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !((D)+!C))+!A !(B (C+!(D))+!B !(C+!(D)))) */ ;
    defparam i2_4_lut.init = 16'h9c39;
    CCU2D delaycnt_275_add_4_15 (.A0(delaycnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1735), .COUT(n1736), .S0(n152_adj_346), 
          .S1(n151_adj_345));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275_add_4_15.INIT0 = 16'hfaaa;
    defparam delaycnt_275_add_4_15.INIT1 = 16'hfaaa;
    defparam delaycnt_275_add_4_15.INJECT1_0 = "NO";
    defparam delaycnt_275_add_4_15.INJECT1_1 = "NO";
    FD1S1I delay_3__I_0_153_i1 (.D(n1103), .CK(delay_3__N_105), .CD(n2082), 
           .Q(delay[0]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(153[2] 213[14])
    defparam delay_3__I_0_153_i1.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_11 (.A(delaycnt[3]), .B(delay[3]), .Z(n4_adj_338)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_11.init = 16'h6666;
    CCU2D delaycnt_275_add_4_13 (.A0(delaycnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1734), .COUT(n1735), .S0(n154_adj_348), 
          .S1(n153_adj_347));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275_add_4_13.INIT0 = 16'hfaaa;
    defparam delaycnt_275_add_4_13.INIT1 = 16'hfaaa;
    defparam delaycnt_275_add_4_13.INJECT1_0 = "NO";
    defparam delaycnt_275_add_4_13.INJECT1_1 = "NO";
    LUT4 i252_2_lut (.A(prstate[1]), .B(prstate[2]), .Z(trafficLights_c_5)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(155[3] 212[12])
    defparam i252_2_lut.init = 16'h6666;
    FD1S3AX modekey_state_ls_126 (.D(modekey_state), .CK(clk_c), .Q(modekey_state_ls));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(77[3] 80[10])
    defparam modekey_state_ls_126.GSR = "DISABLED";
    CCU2D delaycnt_275_add_4_11 (.A0(delaycnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delaycnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1733), .COUT(n1734), .S0(n156_adj_350), 
          .S1(n155_adj_349));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(142[15:23])
    defparam delaycnt_275_add_4_11.INIT0 = 16'hfaaa;
    defparam delaycnt_275_add_4_11.INIT1 = 16'hfaaa;
    defparam delaycnt_275_add_4_11.INJECT1_0 = "NO";
    defparam delaycnt_275_add_4_11.INJECT1_1 = "NO";
    LUT4 i15_4_lut (.A(seccnt[9]), .B(seccnt[1]), .C(seccnt[24]), .D(seccnt[4]), 
         .Z(n37)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(109[8:22])
    defparam i15_4_lut.init = 16'hfffe;
    CycleSampler_U0 k0 (.clk_c(clk_c), .rst_c(rst_c), .GND_net(GND_net), 
            .n1174(n1174));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(71[6:18])
    OB trafficLights_pad_5 (.I(trafficLights_c_5), .O(trafficLights[5]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(12[3:16])
    OB trafficLights_pad_4 (.I(trafficLights_c_4), .O(trafficLights[4]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(12[3:16])
    OB trafficLights_pad_3 (.I(trafficLights_c_3), .O(trafficLights[3]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(12[3:16])
    OB trafficLights_pad_2 (.I(n2090), .O(trafficLights[2]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(12[3:16])
    OB trafficLights_pad_1 (.I(trafficLights_c_1), .O(trafficLights[1]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(12[3:16])
    OB trafficLights_pad_0 (.I(trafficLights_c_0), .O(trafficLights[0]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(12[3:16])
    OB digitdisplay_pad_17 (.I(GND_net), .O(digitdisplay[17]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(13[3:15])
    OB digitdisplay_pad_16 (.I(n999), .O(digitdisplay[16]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(13[3:15])
    OB digitdisplay_pad_15 (.I(n999), .O(digitdisplay[15]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(13[3:15])
    OB digitdisplay_pad_14 (.I(GND_net), .O(digitdisplay[14]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(13[3:15])
    OB digitdisplay_pad_13 (.I(GND_net), .O(digitdisplay[13]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(13[3:15])
    OB digitdisplay_pad_12 (.I(GND_net), .O(digitdisplay[12]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(13[3:15])
    OB digitdisplay_pad_11 (.I(GND_net), .O(digitdisplay[11]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(13[3:15])
    OB digitdisplay_pad_10 (.I(GND_net), .O(digitdisplay[10]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(13[3:15])
    OB digitdisplay_pad_9 (.I(n2084), .O(digitdisplay[9]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(13[3:15])
    OB digitdisplay_pad_8 (.I(digitdisplay_c_8), .O(digitdisplay[8]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(13[3:15])
    OB digitdisplay_pad_7 (.I(digitdisplay_c_7), .O(digitdisplay[7]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(13[3:15])
    OB digitdisplay_pad_6 (.I(digitdisplay_c_6), .O(digitdisplay[6]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(13[3:15])
    OB digitdisplay_pad_5 (.I(digitdisplay_c_5), .O(digitdisplay[5]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(13[3:15])
    OB digitdisplay_pad_4 (.I(digitdisplay_c_4), .O(digitdisplay[4]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(13[3:15])
    OB digitdisplay_pad_3 (.I(digitdisplay_c_3), .O(digitdisplay[3]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(13[3:15])
    OB digitdisplay_pad_2 (.I(digitdisplay_c_2), .O(digitdisplay[2]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(13[3:15])
    OB digitdisplay_pad_1 (.I(GND_net), .O(digitdisplay[1]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(13[3:15])
    OB digitdisplay_pad_0 (.I(GND_net), .O(digitdisplay[0]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(13[3:15])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(7[3:6])
    IB rst_pad (.I(rst), .O(rst_c));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(8[3:6])
    IB modekey_pad (.I(modekey), .O(modekey_c));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(9[3:10])
    LUT4 i13_3_lut (.A(prstate[2]), .B(prstate[1]), .C(prstate[0]), .Z(trafficLights_c_4)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(155[3] 212[12])
    defparam i13_3_lut.init = 16'h3535;
    LUT4 i1_3_lut (.A(prstate[0]), .B(prstate[1]), .C(prstate[2]), .Z(trafficLights_c_3)) /* synthesis lut_function=(!(A (B (C))+!A (B))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(155[3] 212[12])
    defparam i1_3_lut.init = 16'h3b3b;
    FD1S1I delay_3__I_0_153_i4 (.D(n1169), .CK(delay_3__N_105), .CD(n1886), 
           .Q(delay[3]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(153[2] 213[14])
    defparam delay_3__I_0_153_i4.GSR = "DISABLED";
    VHI i1154 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module CycleSampler
//

module CycleSampler (clk_c, modekey_state, GND_net, modekey_c);
    input clk_c;
    output modekey_state;
    input GND_net;
    input modekey_c;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(7[3:6])
    
    wire keysamplerpulse, n1178, keysamplerpulse_N_337;
    wire [2:0]keystore;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(21[9:17])
    
    wire keystore_2__N_332, btnstate_N_331, keysamplerpulse_ls, keystate_N_335;
    wire [31:0]keysamplerpulsecnt;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(18[9:27])
    wire [31:0]n133;
    
    wire n9, n1922, n47, n45, n46, n43, n38, n40, n28, n42, 
        n32, n1701, n1702, n1700, n1699, n1698, n1697, n1712, 
        n1711, n1710, n1709, n1708, n1707, n1706, n1705, n1704, 
        n1703;
    
    LUT4 i1_2_lut (.A(keysamplerpulse), .B(n1178), .Z(keysamplerpulse_N_337)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    FD1P3AX keystore_i0_i0 (.D(btnstate_N_331), .SP(keystore_2__N_332), 
            .CK(clk_c), .Q(keystore[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=18, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(48[3] 55[10])
    defparam keystore_i0_i0.GSR = "DISABLED";
    FD1S3AX keysamplerpulse_31 (.D(keysamplerpulse_N_337), .CK(clk_c), .Q(keysamplerpulse)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=18, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(28[3] 34[10])
    defparam keysamplerpulse_31.GSR = "DISABLED";
    FD1S3AX keysamplerpulse_ls_32 (.D(keysamplerpulse), .CK(clk_c), .Q(keysamplerpulse_ls)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=18, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(40[3] 42[10])
    defparam keysamplerpulse_ls_32.GSR = "DISABLED";
    FD1S3AX keystate_34 (.D(keystate_N_335), .CK(clk_c), .Q(modekey_state)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=18, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(48[3] 55[10])
    defparam keystate_34.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i0 (.D(n133[0]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i0.GSR = "DISABLED";
    LUT4 i1105_4_lut (.A(n9), .B(n1922), .C(keysamplerpulsecnt[10]), .D(keysamplerpulsecnt[16]), 
         .Z(n1178)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(30[8:33])
    defparam i1105_4_lut.init = 16'h4000;
    LUT4 i1_4_lut (.A(n47), .B(keysamplerpulsecnt[15]), .C(n45), .D(n46), 
         .Z(n9)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    LUT4 i1084_4_lut (.A(keysamplerpulsecnt[14]), .B(keysamplerpulsecnt[12]), 
         .C(keysamplerpulsecnt[6]), .D(keysamplerpulsecnt[7]), .Z(n1922)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1084_4_lut.init = 16'h8000;
    LUT4 i22_4_lut (.A(n43), .B(keysamplerpulsecnt[3]), .C(n38), .D(keysamplerpulsecnt[2]), 
         .Z(n47)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(30[8:33])
    defparam i22_4_lut.init = 16'hfffe;
    LUT4 i20_4_lut (.A(keysamplerpulsecnt[31]), .B(n40), .C(n28), .D(keysamplerpulsecnt[27]), 
         .Z(n45)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(30[8:33])
    defparam i20_4_lut.init = 16'hfffe;
    LUT4 i21_4_lut (.A(keysamplerpulsecnt[23]), .B(n42), .C(n32), .D(keysamplerpulsecnt[21]), 
         .Z(n46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(30[8:33])
    defparam i21_4_lut.init = 16'hfffe;
    LUT4 i18_4_lut (.A(keysamplerpulsecnt[8]), .B(keysamplerpulsecnt[19]), 
         .C(keysamplerpulsecnt[13]), .D(keysamplerpulsecnt[22]), .Z(n43)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(30[8:33])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i13_3_lut (.A(keysamplerpulsecnt[11]), .B(keysamplerpulsecnt[30]), 
         .C(keysamplerpulsecnt[1]), .Z(n38)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(30[8:33])
    defparam i13_3_lut.init = 16'hfefe;
    LUT4 i15_4_lut (.A(keysamplerpulsecnt[17]), .B(keysamplerpulsecnt[24]), 
         .C(keysamplerpulsecnt[20]), .D(keysamplerpulsecnt[0]), .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(30[8:33])
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(keysamplerpulsecnt[29]), .B(keysamplerpulsecnt[28]), 
         .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(30[8:33])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i17_4_lut (.A(keysamplerpulsecnt[5]), .B(keysamplerpulsecnt[18]), 
         .C(keysamplerpulsecnt[9]), .D(keysamplerpulsecnt[4]), .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(30[8:33])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i7_2_lut (.A(keysamplerpulsecnt[25]), .B(keysamplerpulsecnt[26]), 
         .Z(n32)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(30[8:33])
    defparam i7_2_lut.init = 16'heeee;
    LUT4 i2_3_lut (.A(keystore[2]), .B(keystore[1]), .C(keystore[0]), 
         .Z(keystate_N_335)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(54[14:57])
    defparam i2_3_lut.init = 16'h8080;
    CCU2D keysamplerpulsecnt_277_add_4_11 (.A0(keysamplerpulsecnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1701), .COUT(n1702), .S0(n133[9]), 
          .S1(n133[10]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277_add_4_11.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_11.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_11.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_277_add_4_11.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_277_add_4_9 (.A0(keysamplerpulsecnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1700), .COUT(n1701), .S0(n133[7]), 
          .S1(n133[8]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277_add_4_9.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_9.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_9.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_277_add_4_9.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_277_add_4_7 (.A0(keysamplerpulsecnt[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1699), .COUT(n1700), .S0(n133[5]), 
          .S1(n133[6]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277_add_4_7.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_7.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_7.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_277_add_4_7.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_277_add_4_5 (.A0(keysamplerpulsecnt[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1698), .COUT(n1699), .S0(n133[3]), 
          .S1(n133[4]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277_add_4_5.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_5.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_5.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_277_add_4_5.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_277_add_4_3 (.A0(keysamplerpulsecnt[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1697), .COUT(n1698), .S0(n133[1]), 
          .S1(n133[2]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277_add_4_3.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_3.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_3.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_277_add_4_3.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_277_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1697), .S1(n133[0]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277_add_4_1.INIT0 = 16'hF000;
    defparam keysamplerpulsecnt_277_add_4_1.INIT1 = 16'h0555;
    defparam keysamplerpulsecnt_277_add_4_1.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_277_add_4_1.INJECT1_1 = "NO";
    FD1S3IX keysamplerpulsecnt_277__i31 (.D(n133[31]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i31.GSR = "DISABLED";
    LUT4 keysamplerpulse_I_0_37_2_lut (.A(keysamplerpulse), .B(keysamplerpulse_ls), 
         .Z(keystore_2__N_332)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(49[8:54])
    defparam keysamplerpulse_I_0_37_2_lut.init = 16'h2222;
    CCU2D keysamplerpulsecnt_277_add_4_33 (.A0(keysamplerpulsecnt[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1712), .S0(n133[31]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277_add_4_33.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_33.INIT1 = 16'h0000;
    defparam keysamplerpulsecnt_277_add_4_33.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_277_add_4_33.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_277_add_4_31 (.A0(keysamplerpulsecnt[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1711), .COUT(n1712), .S0(n133[29]), 
          .S1(n133[30]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277_add_4_31.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_31.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_31.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_277_add_4_31.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_277_add_4_29 (.A0(keysamplerpulsecnt[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1710), .COUT(n1711), .S0(n133[27]), 
          .S1(n133[28]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277_add_4_29.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_29.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_29.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_277_add_4_29.INJECT1_1 = "NO";
    FD1S3IX keysamplerpulsecnt_277__i30 (.D(n133[30]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i30.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i29 (.D(n133[29]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i29.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i28 (.D(n133[28]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i28.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i27 (.D(n133[27]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i27.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i26 (.D(n133[26]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i26.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i25 (.D(n133[25]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i25.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i24 (.D(n133[24]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i24.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i23 (.D(n133[23]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i23.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i22 (.D(n133[22]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i22.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i21 (.D(n133[21]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i21.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i20 (.D(n133[20]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i20.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i19 (.D(n133[19]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i19.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i18 (.D(n133[18]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i18.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i17 (.D(n133[17]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i17.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i16 (.D(n133[16]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i16.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i15 (.D(n133[15]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i15.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i14 (.D(n133[14]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i14.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i13 (.D(n133[13]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i13.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i12 (.D(n133[12]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i12.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i11 (.D(n133[11]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i11.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i10 (.D(n133[10]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i10.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i9 (.D(n133[9]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i9.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i8 (.D(n133[8]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i8.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i7 (.D(n133[7]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i7.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i6 (.D(n133[6]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i6.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i5 (.D(n133[5]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i5.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i4 (.D(n133[4]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i4.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i3 (.D(n133[3]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i3.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i2 (.D(n133[2]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i2.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_277__i1 (.D(n133[1]), .CK(clk_c), .CD(n1178), 
            .Q(keysamplerpulsecnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277__i1.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_277_add_4_27 (.A0(keysamplerpulsecnt[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1709), .COUT(n1710), .S0(n133[25]), 
          .S1(n133[26]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277_add_4_27.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_27.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_27.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_277_add_4_27.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_277_add_4_25 (.A0(keysamplerpulsecnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1708), .COUT(n1709), .S0(n133[23]), 
          .S1(n133[24]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277_add_4_25.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_25.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_25.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_277_add_4_25.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_277_add_4_23 (.A0(keysamplerpulsecnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1707), .COUT(n1708), .S0(n133[21]), 
          .S1(n133[22]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277_add_4_23.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_23.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_23.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_277_add_4_23.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_277_add_4_21 (.A0(keysamplerpulsecnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1706), .COUT(n1707), .S0(n133[19]), 
          .S1(n133[20]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277_add_4_21.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_21.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_21.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_277_add_4_21.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_277_add_4_19 (.A0(keysamplerpulsecnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1705), .COUT(n1706), .S0(n133[17]), 
          .S1(n133[18]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277_add_4_19.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_19.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_19.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_277_add_4_19.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_277_add_4_17 (.A0(keysamplerpulsecnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1704), .COUT(n1705), .S0(n133[15]), 
          .S1(n133[16]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277_add_4_17.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_17.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_17.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_277_add_4_17.INJECT1_1 = "NO";
    FD1P3AX keystore_i0_i2 (.D(keystore[1]), .SP(keystore_2__N_332), .CK(clk_c), 
            .Q(keystore[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=18, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(48[3] 55[10])
    defparam keystore_i0_i2.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_277_add_4_15 (.A0(keysamplerpulsecnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1703), .COUT(n1704), .S0(n133[13]), 
          .S1(n133[14]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277_add_4_15.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_15.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_15.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_277_add_4_15.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_277_add_4_13 (.A0(keysamplerpulsecnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1702), .COUT(n1703), .S0(n133[11]), 
          .S1(n133[12]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_277_add_4_13.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_13.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_277_add_4_13.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_277_add_4_13.INJECT1_1 = "NO";
    LUT4 btnstate_I_0_1_lut (.A(modekey_c), .Z(btnstate_N_331)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(52[18:30])
    defparam btnstate_I_0_1_lut.init = 16'h5555;
    FD1P3AX keystore_i0_i1 (.D(keystore[0]), .SP(keystore_2__N_332), .CK(clk_c), 
            .Q(keystore[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=18, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(48[3] 55[10])
    defparam keystore_i0_i1.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module CycleSampler_U0
//

module CycleSampler_U0 (clk_c, rst_c, GND_net, n1174);
    input clk_c;
    input rst_c;
    input GND_net;
    output n1174;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/topdesign.vhd(7[3:6])
    wire [2:0]keystore;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(21[9:17])
    
    wire keystore_2__N_332, btnstate_N_331, keysamplerpulse, keysamplerpulse_N_337, 
        keysamplerpulse_ls, rst_state, keystate_N_335;
    wire [31:0]keysamplerpulsecnt;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(18[9:27])
    
    wire n44, n34, n48, n1201;
    wire [31:0]n133;
    
    wire n42, n30, n1912, n49, n50, n45, n40, n1924, n1727, 
        n1728, n1713, n1726, n1718, n1719, n1721, n1722, n1717, 
        n1716, n1715, n1720, n1725, n1714, n29, n1724, n1723;
    
    FD1P3AX keystore_i0_i0 (.D(btnstate_N_331), .SP(keystore_2__N_332), 
            .CK(clk_c), .Q(keystore[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=18, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(48[3] 55[10])
    defparam keystore_i0_i0.GSR = "DISABLED";
    FD1S3AX keysamplerpulse_31 (.D(keysamplerpulse_N_337), .CK(clk_c), .Q(keysamplerpulse)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=18, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(28[3] 34[10])
    defparam keysamplerpulse_31.GSR = "DISABLED";
    FD1S3AX keysamplerpulse_ls_32 (.D(keysamplerpulse), .CK(clk_c), .Q(keysamplerpulse_ls)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=18, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(40[3] 42[10])
    defparam keysamplerpulse_ls_32.GSR = "DISABLED";
    FD1S3AX keystate_34 (.D(keystate_N_335), .CK(clk_c), .Q(rst_state)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=18, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(48[3] 55[10])
    defparam keystate_34.GSR = "DISABLED";
    LUT4 i22_4_lut (.A(keysamplerpulsecnt[1]), .B(n44), .C(n34), .D(keysamplerpulsecnt[4]), 
         .Z(n48)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(30[8:33])
    defparam i22_4_lut.init = 16'hfffe;
    FD1S3IX keysamplerpulsecnt_276__i0 (.D(n133[0]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i0.GSR = "DISABLED";
    LUT4 i16_4_lut (.A(keysamplerpulsecnt[26]), .B(keysamplerpulsecnt[17]), 
         .C(keysamplerpulsecnt[9]), .D(keysamplerpulsecnt[24]), .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(30[8:33])
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i4_2_lut (.A(keysamplerpulsecnt[21]), .B(keysamplerpulsecnt[25]), 
         .Z(n30)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(30[8:33])
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i18_4_lut (.A(keysamplerpulsecnt[19]), .B(keysamplerpulsecnt[5]), 
         .C(keysamplerpulsecnt[22]), .D(keysamplerpulsecnt[20]), .Z(n44)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(30[8:33])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i8_2_lut (.A(keysamplerpulsecnt[27]), .B(keysamplerpulsecnt[30]), 
         .Z(n34)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(30[8:33])
    defparam i8_2_lut.init = 16'heeee;
    LUT4 i1075_2_lut (.A(keysamplerpulsecnt[16]), .B(keysamplerpulsecnt[7]), 
         .Z(n1912)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1075_2_lut.init = 16'h8888;
    LUT4 i2_3_lut (.A(keystore[2]), .B(keystore[1]), .C(keystore[0]), 
         .Z(keystate_N_335)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(54[14:57])
    defparam i2_3_lut.init = 16'h8080;
    FD1S3IX keysamplerpulsecnt_276__i31 (.D(n133[31]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i31.GSR = "DISABLED";
    LUT4 keysamplerpulse_I_0_37_2_lut (.A(keysamplerpulse), .B(keysamplerpulse_ls), 
         .Z(keystore_2__N_332)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(49[8:54])
    defparam keysamplerpulse_I_0_37_2_lut.init = 16'h2222;
    LUT4 btnstate_I_0_1_lut (.A(rst_c), .Z(btnstate_N_331)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(52[18:30])
    defparam btnstate_I_0_1_lut.init = 16'h5555;
    LUT4 i1129_4_lut (.A(keysamplerpulsecnt[10]), .B(n49), .C(keysamplerpulsecnt[12]), 
         .D(n50), .Z(n1201)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(30[8:33])
    defparam i1129_4_lut.init = 16'h0020;
    LUT4 i23_4_lut (.A(n45), .B(keysamplerpulsecnt[31]), .C(n40), .D(n1924), 
         .Z(n49)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(30[8:33])
    defparam i23_4_lut.init = 16'hfeff;
    CCU2D keysamplerpulsecnt_276_add_4_31 (.A0(keysamplerpulsecnt[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1727), .COUT(n1728), .S0(n133[29]), 
          .S1(n133[30]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276_add_4_31.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_31.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_31.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_276_add_4_31.INJECT1_1 = "NO";
    FD1S3IX keysamplerpulsecnt_276__i30 (.D(n133[30]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i30.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i29 (.D(n133[29]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i29.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i28 (.D(n133[28]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i28.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i27 (.D(n133[27]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i27.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i26 (.D(n133[26]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i26.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i25 (.D(n133[25]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i25.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i24 (.D(n133[24]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i24.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i23 (.D(n133[23]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i23.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i22 (.D(n133[22]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i22.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i21 (.D(n133[21]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i21.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i20 (.D(n133[20]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i20.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i19 (.D(n133[19]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i19.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i18 (.D(n133[18]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i18.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i17 (.D(n133[17]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i17.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i16 (.D(n133[16]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i16.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i15 (.D(n133[15]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i15.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i14 (.D(n133[14]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i14.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i13 (.D(n133[13]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i13.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i12 (.D(n133[12]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i12.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i11 (.D(n133[11]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i11.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i10 (.D(n133[10]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i10.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i9 (.D(n133[9]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i9.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i8 (.D(n133[8]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i8.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i7 (.D(n133[7]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i7.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i6 (.D(n133[6]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i6.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i5 (.D(n133[5]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i5.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i4 (.D(n133[4]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i4.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i3 (.D(n133[3]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i3.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i2 (.D(n133[2]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i2.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_276__i1 (.D(n133[1]), .CK(clk_c), .CD(n1201), 
            .Q(keysamplerpulsecnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276__i1.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_276_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1713), .S1(n133[0]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276_add_4_1.INIT0 = 16'hF000;
    defparam keysamplerpulsecnt_276_add_4_1.INIT1 = 16'h0555;
    defparam keysamplerpulsecnt_276_add_4_1.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_276_add_4_1.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_276_add_4_29 (.A0(keysamplerpulsecnt[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1726), .COUT(n1727), .S0(n133[27]), 
          .S1(n133[28]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276_add_4_29.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_29.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_29.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_276_add_4_29.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_276_add_4_13 (.A0(keysamplerpulsecnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1718), .COUT(n1719), .S0(n133[11]), 
          .S1(n133[12]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276_add_4_13.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_13.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_13.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_276_add_4_13.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_276_add_4_19 (.A0(keysamplerpulsecnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1721), .COUT(n1722), .S0(n133[17]), 
          .S1(n133[18]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276_add_4_19.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_19.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_19.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_276_add_4_19.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_276_add_4_11 (.A0(keysamplerpulsecnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1717), .COUT(n1718), .S0(n133[9]), 
          .S1(n133[10]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276_add_4_11.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_11.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_11.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_276_add_4_11.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_276_add_4_9 (.A0(keysamplerpulsecnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1716), .COUT(n1717), .S0(n133[7]), 
          .S1(n133[8]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276_add_4_9.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_9.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_9.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_276_add_4_9.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_276_add_4_7 (.A0(keysamplerpulsecnt[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1715), .COUT(n1716), .S0(n133[5]), 
          .S1(n133[6]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276_add_4_7.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_7.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_7.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_276_add_4_7.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_276_add_4_17 (.A0(keysamplerpulsecnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1720), .COUT(n1721), .S0(n133[15]), 
          .S1(n133[16]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276_add_4_17.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_17.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_17.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_276_add_4_17.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_276_add_4_27 (.A0(keysamplerpulsecnt[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1725), .COUT(n1726), .S0(n133[25]), 
          .S1(n133[26]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276_add_4_27.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_27.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_27.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_276_add_4_27.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_276_add_4_5 (.A0(keysamplerpulsecnt[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1714), .COUT(n1715), .S0(n133[3]), 
          .S1(n133[4]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276_add_4_5.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_5.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_5.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_276_add_4_5.INJECT1_1 = "NO";
    LUT4 i24_4_lut (.A(n29), .B(n48), .C(n42), .D(n30), .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(30[8:33])
    defparam i24_4_lut.init = 16'hfffe;
    LUT4 i19_4_lut (.A(keysamplerpulsecnt[23]), .B(keysamplerpulsecnt[13]), 
         .C(keysamplerpulsecnt[29]), .D(keysamplerpulsecnt[3]), .Z(n45)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(30[8:33])
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i14_4_lut (.A(keysamplerpulsecnt[0]), .B(keysamplerpulsecnt[18]), 
         .C(keysamplerpulsecnt[28]), .D(keysamplerpulsecnt[2]), .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(30[8:33])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i1086_4_lut (.A(keysamplerpulsecnt[14]), .B(keysamplerpulsecnt[15]), 
         .C(keysamplerpulsecnt[6]), .D(n1912), .Z(n1924)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1086_4_lut.init = 16'h8000;
    CCU2D keysamplerpulsecnt_276_add_4_25 (.A0(keysamplerpulsecnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1724), .COUT(n1725), .S0(n133[23]), 
          .S1(n133[24]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276_add_4_25.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_25.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_25.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_276_add_4_25.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_276_add_4_23 (.A0(keysamplerpulsecnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1723), .COUT(n1724), .S0(n133[21]), 
          .S1(n133[22]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276_add_4_23.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_23.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_23.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_276_add_4_23.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_276_add_4_21 (.A0(keysamplerpulsecnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1722), .COUT(n1723), .S0(n133[19]), 
          .S1(n133[20]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276_add_4_21.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_21.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_21.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_276_add_4_21.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_276_add_4_15 (.A0(keysamplerpulsecnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1719), .COUT(n1720), .S0(n133[13]), 
          .S1(n133[14]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276_add_4_15.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_15.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_15.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_276_add_4_15.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_276_add_4_3 (.A0(keysamplerpulsecnt[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1713), .COUT(n1714), .S0(n133[1]), 
          .S1(n133[2]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276_add_4_3.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_3.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_3.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_276_add_4_3.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_276_add_4_33 (.A0(keysamplerpulsecnt[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1728), .S0(n133[31]));   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_276_add_4_33.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_276_add_4_33.INIT1 = 16'h0000;
    defparam keysamplerpulsecnt_276_add_4_33.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_276_add_4_33.INJECT1_1 = "NO";
    LUT4 i472_1_lut (.A(rst_state), .Z(n1174)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(48[3] 55[10])
    defparam i472_1_lut.init = 16'h5555;
    LUT4 i3_2_lut (.A(keysamplerpulsecnt[8]), .B(keysamplerpulsecnt[11]), 
         .Z(n29)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(30[8:33])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i1_2_lut (.A(keysamplerpulse), .B(n1201), .Z(keysamplerpulse_N_337)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    FD1P3AX keystore_i0_i2 (.D(keystore[1]), .SP(keystore_2__N_332), .CK(clk_c), 
            .Q(keystore[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=18, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(48[3] 55[10])
    defparam keystore_i0_i2.GSR = "DISABLED";
    FD1P3AX keystore_i0_i1 (.D(keystore[0]), .SP(keystore_2__N_332), .CK(clk_c), 
            .Q(keystore[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=18, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/10352/vhdl-labs/lab3_traffic_light/cyclesampler.vhd(48[3] 55[10])
    defparam keystore_i0_i1.GSR = "DISABLED";
    
endmodule
