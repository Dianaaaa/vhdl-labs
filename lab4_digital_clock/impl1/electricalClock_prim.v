// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Tue Nov 17 21:14:41 2020
//
// Verilog Description of module electricalClock
//

module electricalClock (clk, rst_key, mode_key, up_key, down_key, 
            modedisplay, secDisp, PortA, PortB, din, sck, rck);   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(9[9:24])
    input clk;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(11[3:6])
    input rst_key;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(13[3:10])
    input mode_key;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(14[3:11])
    input up_key;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(15[3:9])
    input down_key;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(16[3:11])
    output [3:0]modedisplay;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(18[3:14])
    output secDisp;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(20[3:10])
    input PortA;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(22[3:8])
    input PortB;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(23[3:8])
    output din;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(25[3:6])
    output sck;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(26[3:6])
    output rck;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(27[3:6])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(11[3:6])
    
    wire GND_net, rst_key_c, mode_key_c, up_key_c, down_key_c, modedisplay_c_3, 
        modedisplay_c_2, modedisplay_c_1, modedisplay_c_0, secDisp_c, 
        PortA_c, PortB_c, din_c, sck_c, rck_c;
    wire [31:0]mode;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(35[8:12])
    
    wire sec, rst_key_state, mode_key_state, up_key_state, down_key_state;
    wire [31:0]act_of_re;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(44[8:17])
    wire [3:0]hL;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(46[8:10])
    wire [1:0]hH;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(47[8:10])
    wire [3:0]mL;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(48[8:10])
    wire [2:0]mH;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(49[8:10])
    wire [3:0]sL;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(50[8:10])
    wire [2:0]sH;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(51[8:10])
    wire [95:0]ctrlcode595;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(57[8:19])
    
    wire sec_N_2, VCC_net;
    wire [3:0]hLRec0;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(32[9:15])
    wire [3:0]mLRec0;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(35[9:15])
    wire [2:0]mHRec0;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(36[9:15])
    wire [3:0]sLRec0;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(38[9:15])
    wire [2:0]sHRec0;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(39[9:15])
    
    wire sec_ls, n7, n1454, n1453, n6832, n4642, n1840, clk_c_enable_60, 
        n1208, n4439, n3082, n547, n381, n8077, n7_adj_397, n14, 
        n1455, n612, n7616, n9, n4759, n2658, n1262, n1260, 
        n1336, n1773, n6828, n4434, n4547, n7367, clk_c_enable_50, 
        n7366, n2603, clk_c_enable_53, n6518, n13, n6889, n7628, 
        n7626, n6684, n9_adj_398;
    
    FD1S3AX secDisp_9 (.D(sec_N_2), .CK(clk_c), .Q(secDisp_c));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(183[3] 185[10])
    defparam secDisp_9.GSR = "DISABLED";
    IB down_key_pad (.I(down_key), .O(down_key_c));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(16[3:11])
    IB up_key_pad (.I(up_key), .O(up_key_c));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(15[3:9])
    IB mode_key_pad (.I(mode_key), .O(mode_key_c));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(14[3:11])
    IB rst_key_pad (.I(rst_key), .O(rst_key_c));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(13[3:10])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(11[3:6])
    OB rck_pad (.I(rck_c), .O(rck));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(27[3:6])
    OB sck_pad (.I(sck_c), .O(sck));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(26[3:6])
    OB din_pad (.I(din_c), .O(din));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(25[3:6])
    LUT4 i3739_3_lut_4_lut (.A(n8077), .B(clk_c_enable_53), .C(sH[0]), 
         .D(sHRec0[0]), .Z(n1455)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A !(D)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(35[8:12])
    defparam i3739_3_lut_4_lut.init = 16'h80f7;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i22_3_lut_4_lut (.A(n8077), .B(clk_c_enable_53), .C(mH[2]), .D(n9_adj_398), 
         .Z(n6684)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(35[8:12])
    defparam i22_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_1135_i1_3_lut_4_lut (.A(n8077), .B(clk_c_enable_53), .C(sL[0]), 
         .D(sLRec0[0]), .Z(n1773)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A !(D)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(35[8:12])
    defparam mux_1135_i1_3_lut_4_lut.init = 16'h80f7;
    LUT4 mux_1182_i1_3_lut_4_lut (.A(n8077), .B(clk_c_enable_53), .C(mH[0]), 
         .D(mHRec0[0]), .Z(n1840)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A !(D)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(35[8:12])
    defparam mux_1182_i1_3_lut_4_lut.init = 16'h80f7;
    LUT4 i1954_4_lut (.A(hLRec0[2]), .B(n6889), .C(n1336), .D(hLRec0[3]), 
         .Z(n547)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(32[9:15])
    defparam i1954_4_lut.init = 16'h5044;
    LUT4 i3736_3_lut_4_lut (.A(n8077), .B(clk_c_enable_53), .C(sH[1]), 
         .D(n4439), .Z(n1454)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(35[8:12])
    defparam i3736_3_lut_4_lut.init = 16'hf780;
    LUT4 i3731_3_lut_4_lut (.A(n8077), .B(clk_c_enable_53), .C(sH[2]), 
         .D(n4434), .Z(n1453)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(35[8:12])
    defparam i3731_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_652_i1_3_lut_4_lut (.A(n8077), .B(clk_c_enable_53), .C(mL[0]), 
         .D(mLRec0[0]), .Z(n1208)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A !(D)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(35[8:12])
    defparam mux_652_i1_3_lut_4_lut.init = 16'h80f7;
    OB secDisp_pad (.I(secDisp_c), .O(secDisp));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(20[3:10])
    OB modedisplay_pad_0 (.I(modedisplay_c_0), .O(modedisplay[0]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(18[3:14])
    OB modedisplay_pad_1 (.I(modedisplay_c_1), .O(modedisplay[1]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(18[3:14])
    LUT4 i30_3_lut_4_lut (.A(n8077), .B(clk_c_enable_53), .C(hL[3]), .D(n13), 
         .Z(n6518)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(35[8:12])
    defparam i30_3_lut_4_lut.init = 16'hf780;
    OB modedisplay_pad_2 (.I(modedisplay_c_2), .O(modedisplay[2]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(18[3:14])
    OB modedisplay_pad_3 (.I(modedisplay_c_3), .O(modedisplay[3]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(18[3:14])
    GSR GSR_INST (.GSR(n612));
    LUT4 sec_I_0_1_lut (.A(sec), .Z(sec_N_2)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(184[13:21])
    defparam sec_I_0_1_lut.init = 16'h5555;
    IB PortA_pad (.I(PortA), .O(PortA_c));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(22[3:8])
    IB PortB_pad (.I(PortB), .O(PortB_c));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(23[3:8])
    TSALL TSALL_INST (.TSALL(GND_net));
    Timer tm (.mH({mH}), .\mode[1] (mode[1]), .n7616(n7616), .clk_c(clk_c), 
          .\mode[0] (mode[0]), .mLRec0({Open_0, Open_1, Open_2, mLRec0[0]}), 
          .clk_c_enable_60(clk_c_enable_60), .n1208(n1208), .\mHRec0[0] (mHRec0[0]), 
          .n1840(n1840), .hL({hL}), .n7367(n7367), .n8077(n8077), .n4642(n4642), 
          .sLRec0({Open_3, Open_4, Open_5, sLRec0[0]}), .clk_c_enable_53(clk_c_enable_53), 
          .n1773(n1773), .sHRec0({Open_6, Open_7, sHRec0[0]}), .clk_c_enable_50(clk_c_enable_50), 
          .n1452({n1453, n1454, n1455}), .mL({mL}), .up_key_state(up_key_state), 
          .down_key_state(down_key_state), .sec_ls(sec_ls), .sec(sec), 
          .sL({sL}), .n2603(n2603), .\hH[0] (hH[0]), .n7366(n7366), 
          .n7(n7_adj_397), .\ctrlcode595[35] (ctrlcode595[35]), .\act_of_re[0] (act_of_re[0]), 
          .\act_of_re[31] (act_of_re[31]), .sH({sH}), .\hLRec0[1] (hLRec0[1]), 
          .\hLRec0[2] (hLRec0[2]), .n4759(n4759), .\ctrlcode595[17] (ctrlcode595[17]), 
          .n1336(n1336), .\hLRec0[3] (hLRec0[3]), .n7626(n7626), .n1260(n1260), 
          .n4547(n4547), .n7628(n7628), .n1262(n1262), .n6828(n6828), 
          .n6518(n6518), .\sHRec0[2] (sHRec0[2]), .n6684(n6684), .n547(n547), 
          .n7_adj_1(n7), .n4434(n4434), .n4439(n4439), .n9(n9_adj_398), 
          .n13(n13), .n6832(n6832), .n9_adj_2(n9), .n6889(n6889));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(170[5:10])
    ModeCtrler controller (.\mode[0] (mode[0]), .clk_c(clk_c), .mode_key_state(mode_key_state), 
            .n9(n9), .\hLRec0[3] (hLRec0[3]), .sec_ls(sec_ls), .n6832(n6832), 
            .\mode[1] (mode[1]), .\sHRec0[2] (sHRec0[2]), .n1260(n1260), 
            .sec(sec), .\hLRec0[2] (hLRec0[2]), .\hLRec0[1] (hLRec0[1]), 
            .\sHRec0[0] (sHRec0[0]), .n1262(n1262), .modedisplay_c_0(modedisplay_c_0), 
            .modedisplay_c_2(modedisplay_c_2), .modedisplay_c_3(modedisplay_c_3), 
            .modedisplay_c_1(modedisplay_c_1));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(167[14:24])
    RotaryEncoder re (.clk_c(clk_c), .PortA_c(PortA_c), .\act_of_re[0] (act_of_re[0]), 
            .PortB_c(PortB_c), .\act_of_re[31] (act_of_re[31]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(173[5:18])
    VLO i1 (.Z(GND_net));
    dataTo595 dt (.GND_net(GND_net), .clk_c(clk_c), .sck_c(sck_c), .\ctrlcode595[17] (ctrlcode595[17]), 
            .\hH[0] (hH[0]), .sH({sH}), .din_c(din_c), .n381(n381), 
            .sL({sL}), .\ctrlcode595[68] (ctrlcode595[68]), .\ctrlcode595[69] (ctrlcode595[69]), 
            .n4759(n4759), .n14(n14), .hL({hL}), .mH({mH}), .rst_key_state(rst_key_state), 
            .rck_c(rck_c), .\ctrlcode595[67] (ctrlcode595[67]), .\ctrlcode595[3] (ctrlcode595[3]), 
            .n3082(n3082), .\ctrlcode595[35] (ctrlcode595[35]), .mL({mL}), 
            .n2658(n2658), .\ctrlcode595[71] (ctrlcode595[71]), .\ctrlcode595[4] (ctrlcode595[4]), 
            .\ctrlcode595[5] (ctrlcode595[5]), .\ctrlcode595[36] (ctrlcode595[36]), 
            .\ctrlcode595[37] (ctrlcode595[37]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(179[5:14])
    CycleSampler_U0 rstkey (.clk_c(clk_c), .rst_key_state(rst_key_state), 
            .GND_net(GND_net), .rst_key_c(rst_key_c), .n612(n612));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(161[9:21])
    ClockDivider secondGen (.sec(sec), .clk_c(clk_c), .GND_net(GND_net), 
            .sec_ls(sec_ls), .clk_c_enable_53(clk_c_enable_53), .n8077(n8077), 
            .n7(n7), .clk_c_enable_50(clk_c_enable_50), .n6828(n6828), 
            .clk_c_enable_60(clk_c_enable_60));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(158[12:24])
    CycleSampler_U1 modekey (.clk_c(clk_c), .mode_key_state(mode_key_state), 
            .GND_net(GND_net), .mode_key_c(mode_key_c));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(162[10:22])
    CycleSampler_U2 downkey (.clk_c(clk_c), .down_key_state(down_key_state), 
            .GND_net(GND_net), .down_key_c(down_key_c));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(164[10:22])
    CycleSampler upkey (.clk_c(clk_c), .up_key_state(up_key_state), .GND_net(GND_net), 
            .up_key_c(up_key_c));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(163[8:20])
    TimeEncoder te (.\mH[0] (mH[0]), .\mH[2] (mH[2]), .n4642(n4642), .\hH[0] (hH[0]), 
            .\ctrlcode595[17] (ctrlcode595[17]), .n381(n381), .n2658(n2658), 
            .n3082(n3082), .hL({hL}), .n14(n14), .mL({mL}), .\ctrlcode595[37] (ctrlcode595[37]), 
            .n7(n7_adj_397), .n2603(n2603), .\ctrlcode595[4] (ctrlcode595[4]), 
            .\sH[0] (sH[0]), .\sH[2] (sH[2]), .n4547(n4547), .sL({sL}), 
            .\ctrlcode595[71] (ctrlcode595[71]), .\ctrlcode595[69] (ctrlcode595[69]), 
            .\ctrlcode595[68] (ctrlcode595[68]), .\ctrlcode595[36] (ctrlcode595[36]), 
            .n7628(n7628), .n7616(n7616), .\ctrlcode595[3] (ctrlcode595[3]), 
            .\ctrlcode595[67] (ctrlcode595[67]), .n7367(n7367), .n7366(n7366), 
            .\ctrlcode595[5] (ctrlcode595[5]), .n7626(n7626));   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(176[5:16])
    VHI i6684 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Timer
//

module Timer (mH, \mode[1] , n7616, clk_c, \mode[0] , mLRec0, clk_c_enable_60, 
            n1208, \mHRec0[0] , n1840, hL, n7367, n8077, n4642, 
            sLRec0, clk_c_enable_53, n1773, sHRec0, clk_c_enable_50, 
            n1452, mL, up_key_state, down_key_state, sec_ls, sec, 
            sL, n2603, \hH[0] , n7366, n7, \ctrlcode595[35] , \act_of_re[0] , 
            \act_of_re[31] , sH, \hLRec0[1] , \hLRec0[2] , n4759, 
            \ctrlcode595[17] , n1336, \hLRec0[3] , n7626, n1260, n4547, 
            n7628, n1262, n6828, n6518, \sHRec0[2] , n6684, n547, 
            n7_adj_1, n4434, n4439, n9, n13, n6832, n9_adj_2, 
            n6889);
    output [2:0]mH;
    input \mode[1] ;
    input n7616;
    input clk_c;
    input \mode[0] ;
    output [3:0]mLRec0;
    input clk_c_enable_60;
    input n1208;
    output \mHRec0[0] ;
    input n1840;
    output [3:0]hL;
    output n7367;
    output n8077;
    input n4642;
    output [3:0]sLRec0;
    input clk_c_enable_53;
    input n1773;
    output [2:0]sHRec0;
    input clk_c_enable_50;
    input [2:0]n1452;
    output [3:0]mL;
    input up_key_state;
    input down_key_state;
    output sec_ls;
    input sec;
    output [3:0]sL;
    output n2603;
    output \hH[0] ;
    output n7366;
    output n7;
    output \ctrlcode595[35] ;
    input \act_of_re[0] ;
    input \act_of_re[31] ;
    output [2:0]sH;
    output \hLRec0[1] ;
    output \hLRec0[2] ;
    output n4759;
    output \ctrlcode595[17] ;
    output n1336;
    output \hLRec0[3] ;
    input n7626;
    input n1260;
    input n4547;
    input n7628;
    input n1262;
    output n6828;
    input n6518;
    output \sHRec0[2] ;
    input n6684;
    input n547;
    output n7_adj_1;
    output n4434;
    output n4439;
    output n9;
    output n13;
    input n6832;
    output n9_adj_2;
    output n6889;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(11[3:6])
    
    wire n6937, n14, n6939;
    wire [2:0]mHRec0;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(36[9:15])
    wire [2:0]n1098;
    
    wire n7623, n6927, n6963;
    wire [1:0]hHRec0;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(33[9:15])
    
    wire clk_c_enable_61;
    wire [1:0]n1392;
    
    wire n7649, n7624, n2989, n6, n7617, clk_c_enable_55;
    wire [3:0]hLRec0;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(32[9:15])
    
    wire clk_c_enable_48;
    wire [3:0]n1323;
    
    wire n257, n7648, upkey_ls, downkey_ls, n7606, n7650, n6952, 
        n7613, n7614, n6921, n6_adj_378, n7463, clk_c_enable_45, 
        n6028, n2592, n6029, n977;
    wire [3:0]n1602;
    
    wire n6031, n3008, n7610, n7656, n5676, n1006, n6127, n7620;
    wire [3:0]mLRec0_c;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(35[9:15])
    
    wire n7658, n580, n7644, n6943, n992, n7651;
    wire [3:0]n1;
    
    wire n5665, n1022, n6_adj_379, n6119, n7645;
    wire [3:0]n1904;
    
    wire n7607, n7608, n7655, n5667, n7659, n5656, n6_adj_380, 
        n6129;
    wire [3:0]n1589;
    
    wire n1753, clk_c_enable_42, n6125, n22_adj_381, n20, n6950, 
        n7646, n7604, clk_c_enable_38, n3120, n13_c, n6935, n4, 
        n5658, n7618, n7630, n5660, n6117, n7622, n2341, clk_c_enable_39, 
        n6831, n16, n7560, n7559, n7561, n7636, n7635;
    wire [3:0]sLRec0_c;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(38[9:15])
    
    wire n7496, n7605, n7497, n5649, n6945, n6121, n6074, n16_adj_382, 
        n12, clk_c_enable_41, n6_adj_383, n6120, clk_c_enable_40, 
        n6130, n6126, n1039, n4_adj_384, n5651;
    wire [2:0]sHRec0_c;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(39[9:15])
    
    wire n7602, n4_adj_385, n2752, n5644, n5637, n6_adj_386, n6122, 
        n6837, n2956, n7627, n23, n7615, n6897, n7629;
    wire [2:0]n2;
    
    wire n10, n8, n7637;
    wire [2:0]n3;
    
    wire n6118, n7498, n5635;
    wire [3:0]n1848;
    
    wire n9_c, n7612, n10_adj_389, n7603, n7675, n7669;
    wire [3:0]n1769;
    
    wire n7666, n7663, n7660;
    wire [3:0]n1204;
    
    wire n7647;
    wire [3:0]n108;
    
    wire n6226, n6870;
    wire [3:0]n59;
    
    wire n4_adj_394, n7665, n7464, n7664;
    wire [1:0]n5;
    
    wire n7662, n7668, n7667, n7465, n7674, n7673, n6969, n7661, 
        n2339, n7634, n5674, n7642, n4_adj_396;
    
    LUT4 i1_4_lut (.A(mH[1]), .B(n6937), .C(n14), .D(mH[0]), .Z(n6939)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i1_4_lut.init = 16'hfcfd;
    LUT4 i4040_2_lut (.A(mHRec0[2]), .B(\mode[1] ), .Z(n1098[2])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i4040_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_14 (.A(n7623), .B(n6927), .C(n7616), .D(n6963), 
         .Z(n14)) /* synthesis lut_function=(A (B+!(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i1_4_lut_adj_14.init = 16'h888a;
    LUT4 i6151_2_lut (.A(mH[1]), .B(mH[0]), .Z(n6963)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6151_2_lut.init = 16'h8888;
    FD1P3AX hHRec0_i0_i0 (.D(n1392[0]), .SP(clk_c_enable_61), .CK(clk_c), 
            .Q(hHRec0[0])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam hHRec0_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_146 (.A(\mode[1] ), .B(\mode[0] ), .Z(n7649)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_146.init = 16'h2222;
    FD1P3AX mLRec0_i0_i0 (.D(n1208), .SP(clk_c_enable_60), .CK(clk_c), 
            .Q(mLRec0[0])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam mLRec0_i0_i0.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut (.A(\mode[1] ), .B(\mode[0] ), .C(n7624), 
         .D(n2989), .Z(n6)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_rep_114_3_lut (.A(\mode[1] ), .B(\mode[0] ), .C(n2989), 
         .Z(n7617)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_rep_114_3_lut.init = 16'h2020;
    FD1P3AX mHRec0_i0_i0 (.D(n1840), .SP(clk_c_enable_55), .CK(clk_c), 
            .Q(\mHRec0[0] )) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam mHRec0_i0_i0.GSR = "ENABLED";
    LUT4 n6_bdd_3_lut_6480_3_lut (.A(hL[1]), .B(hL[0]), .C(hL[2]), .Z(n7367)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam n6_bdd_3_lut_6480_3_lut.init = 16'hfdfd;
    LUT4 i1_4_lut_adj_15 (.A(n8077), .B(mH[1]), .C(n6), .D(n4642), .Z(n6937)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_15.init = 16'h5575;
    FD1P3AX sLRec0_i0_i0 (.D(n1773), .SP(clk_c_enable_53), .CK(clk_c), 
            .Q(sLRec0[0])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam sLRec0_i0_i0.GSR = "ENABLED";
    FD1P3AX sHRec0_i0_i0 (.D(n1452[0]), .SP(clk_c_enable_50), .CK(clk_c), 
            .Q(sHRec0[0])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam sHRec0_i0_i0.GSR = "ENABLED";
    FD1P3AX hLRec0_i0_i0 (.D(n1323[0]), .SP(clk_c_enable_48), .CK(clk_c), 
            .Q(hLRec0[0])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam hLRec0_i0_i0.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(n257), .B(mL[0]), .C(mL[3]), .D(n7648), .Z(n2989)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0002;
    FD1S3AX upkey_ls_186 (.D(up_key_state), .CK(clk_c), .Q(upkey_ls)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(199[3] 203[10])
    defparam upkey_ls_186.GSR = "DISABLED";
    FD1S3AX downkey_ls_187 (.D(down_key_state), .CK(clk_c), .Q(downkey_ls)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(199[3] 203[10])
    defparam downkey_ls_187.GSR = "DISABLED";
    FD1S3AX sec_ls_188 (.D(sec), .CK(clk_c), .Q(sec_ls)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(199[3] 203[10])
    defparam sec_ls_188.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut_4_lut (.A(\mode[0] ), .B(\mode[1] ), .C(n7606), 
         .D(n7650), .Z(n6952)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h11f1;
    LUT4 i2_3_lut_4_lut_4_lut (.A(hL[1]), .B(n7613), .C(n7614), .Z(n6921)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h4040;
    LUT4 n223_bdd_4_lut_6445_4_lut (.A(hL[1]), .B(hL[0]), .C(hL[3]), .D(n6_adj_378), 
         .Z(n7463)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam n223_bdd_4_lut_6445_4_lut.init = 16'h4f40;
    FD1P3AX sLRec1_1584__i0 (.D(n6028), .SP(clk_c_enable_45), .CK(clk_c), 
            .Q(sL[0]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam sLRec1_1584__i0.GSR = "ENABLED";
    LUT4 i4010_3_lut_3_lut (.A(hL[1]), .B(hL[2]), .C(hL[0]), .Z(n2603)) /* synthesis lut_function=(!(A (B (C)+!B !(C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i4010_3_lut_3_lut.init = 16'h7d7d;
    LUT4 i5226_4_lut (.A(hHRec0[0]), .B(\hH[0] ), .C(n2592), .D(\mode[0] ), 
         .Z(n6029)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A (B+(C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i5226_4_lut.init = 16'h03a3;
    LUT4 n6_bdd_3_lut_6422_3_lut_3_lut (.A(hL[1]), .B(hL[0]), .C(hL[2]), 
         .Z(n7366)) /* synthesis lut_function=(!(A (C)+!A !(B+!(C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam n6_bdd_3_lut_6422_3_lut_3_lut.init = 16'h4f4f;
    LUT4 i1_4_lut_adj_16 (.A(n8077), .B(n7623), .C(n6_adj_378), .D(n7614), 
         .Z(n2592)) /* synthesis lut_function=((B (C (D)))+!A) */ ;
    defparam i1_4_lut_adj_16.init = 16'hd555;
    LUT4 hL_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut (.A(hL[0]), .B(hL[2]), .C(hL[1]), 
         .Z(n7)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !((C)+!B))) */ ;
    defparam hL_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut.init = 16'h7979;
    LUT4 i5228_3_lut_3_lut (.A(hL[0]), .B(n977), .C(n1602[0]), .Z(n6031)) /* synthesis lut_function=(A (B (C))+!A ((C)+!B)) */ ;
    defparam i5228_3_lut_3_lut.init = 16'hd1d1;
    LUT4 mL_0__bdd_4_lut_6623 (.A(mL[0]), .B(mL[1]), .C(mL[2]), .D(mL[3]), 
         .Z(\ctrlcode595[35] )) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B+((D)+!C))) */ ;
    defparam mL_0__bdd_4_lut_6623.init = 16'hfd45;
    LUT4 i3853_2_lut_rep_147 (.A(hL[1]), .B(hL[0]), .Z(n7650)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3853_2_lut_rep_147.init = 16'heeee;
    LUT4 i2_4_lut_then_4_lut (.A(n3008), .B(\mode[0] ), .C(\mode[1] ), 
         .D(n7610), .Z(n7656)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i2_4_lut_then_4_lut.init = 16'hff83;
    LUT4 i2_4_lut (.A(mH[1]), .B(n5676), .C(n1006), .D(mH[0]), .Z(n6127)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+(D)))+!A (B (C+!(D))+!B !(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i2_4_lut.init = 16'hc9c6;
    LUT4 mux_652_i3_4_lut_else_4_lut (.A(mL[2]), .B(n7620), .C(mLRec0_c[2]), 
         .Z(n7658)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(66[4] 103[11])
    defparam mux_652_i3_4_lut_else_4_lut.init = 16'hb8b8;
    LUT4 i69_2_lut_rep_120_3_lut_4_lut (.A(\act_of_re[0] ), .B(\act_of_re[31] ), 
         .C(up_key_state), .D(upkey_ls), .Z(n7623)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(118[10:21])
    defparam i69_2_lut_rep_120_3_lut_4_lut.init = 16'h2f22;
    LUT4 i4989_4_lut (.A(n580), .B(mHRec0[1]), .C(n1006), .D(\mode[1] ), 
         .Z(n5676)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i4989_4_lut.init = 16'h05c5;
    LUT4 i1_3_lut_4_lut (.A(n7644), .B(n7610), .C(n6943), .D(sH[0]), 
         .Z(n992)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i1_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i6143_2_lut_rep_148 (.A(hL[1]), .B(hL[0]), .Z(n7651)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6143_2_lut_rep_148.init = 16'h8888;
    LUT4 i1664_2_lut_3_lut (.A(\hLRec0[1] ), .B(hLRec0[0]), .C(\hLRec0[2] ), 
         .Z(n1[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam i1664_2_lut_3_lut.init = 16'h7878;
    LUT4 i4056_3_lut_4_lut_3_lut (.A(hL[1]), .B(hL[0]), .C(hL[2]), .Z(n4759)) /* synthesis lut_function=(!(A (B+!(C))+!A !((C)+!B))) */ ;
    defparam i4056_3_lut_4_lut_3_lut.init = 16'h7171;
    LUT4 i2_2_lut_rep_121_3_lut_4_lut (.A(\act_of_re[0] ), .B(\act_of_re[31] ), 
         .C(up_key_state), .D(upkey_ls), .Z(n7624)) /* synthesis lut_function=(A (B (C+!(D)))+!A (C+!(D))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(118[10:21])
    defparam i2_2_lut_rep_121_3_lut_4_lut.init = 16'hd0dd;
    LUT4 i2_3_lut_4_lut (.A(hL[1]), .B(hL[0]), .C(\hH[0] ), .D(\ctrlcode595[17] ), 
         .Z(n6_adj_378)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0800;
    LUT4 i757_2_lut (.A(\hLRec0[1] ), .B(hLRec0[0]), .Z(n1336)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam i757_2_lut.init = 16'h4444;
    LUT4 i2_4_lut_adj_17 (.A(mL[3]), .B(n5665), .C(n1022), .D(n6_adj_379), 
         .Z(n6119)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (B (D)+!B !(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i2_4_lut_adj_17.init = 16'h39c6;
    LUT4 i1_2_lut_rep_142 (.A(\mode[1] ), .B(\mode[0] ), .Z(n7645)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_142.init = 16'h4444;
    LUT4 i4978_4_lut (.A(n7623), .B(n1904[3]), .C(n1022), .D(n7607), 
         .Z(n5665)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i4978_4_lut.init = 16'h05c5;
    LUT4 i4028_2_lut (.A(mLRec0_c[3]), .B(\mode[1] ), .Z(n1904[3])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i4028_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_18 (.A(n8077), .B(n7608), .C(n7624), .D(n7617), 
         .Z(n1022)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;
    defparam i1_4_lut_adj_18.init = 16'hfddd;
    LUT4 i2_4_lut_else_4_lut (.A(\mode[0] ), .B(\mode[1] ), .C(n7610), 
         .Z(n7655)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i2_4_lut_else_4_lut.init = 16'hf1f1;
    LUT4 i4980_4_lut (.A(n7623), .B(mLRec0_c[2]), .C(n1022), .D(\mode[1] ), 
         .Z(n5667)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i4980_4_lut.init = 16'h05c5;
    LUT4 mux_652_i3_4_lut_then_4_lut (.A(mL[2]), .B(n7620), .C(mLRec0[0]), 
         .D(mLRec0_c[2]), .Z(n7659)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B+(C (D)+!C !(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(66[4] 103[11])
    defparam mux_652_i3_4_lut_then_4_lut.init = 16'h8bb8;
    LUT4 i2_4_lut_adj_19 (.A(hL[3]), .B(n5656), .C(n977), .D(n6_adj_380), 
         .Z(n6129)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (B (D)+!B !(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i2_4_lut_adj_19.init = 16'h39c6;
    LUT4 i4969_4_lut (.A(n7623), .B(n1589[3]), .C(n977), .D(n1753), 
         .Z(n5656)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i4969_4_lut.init = 16'h05c5;
    LUT4 i4042_2_lut (.A(\hLRec0[3] ), .B(\mode[0] ), .Z(n1589[3])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i4042_2_lut.init = 16'heeee;
    FD1P3AX mHRec1_1586__i2 (.D(n6125), .SP(clk_c_enable_42), .CK(clk_c), 
            .Q(mH[2]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam mHRec1_1586__i2.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_20 (.A(n22_adj_381), .B(hL[2]), .C(n7651), .D(n7650), 
         .Z(n20)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i2_4_lut_adj_20.init = 16'hffec;
    LUT4 i2404_2_lut_4_lut (.A(n6950), .B(n7646), .C(n7604), .D(clk_c_enable_38), 
         .Z(n3120)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2404_2_lut_4_lut.init = 16'h8000;
    LUT4 i2_4_lut_adj_21 (.A(n6952), .B(n7650), .C(n7623), .D(n13_c), 
         .Z(n6935)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i2_4_lut_adj_21.init = 16'hfbbb;
    LUT4 i4971_4_lut (.A(n7623), .B(n1753), .C(n977), .D(n4), .Z(n5658)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i4971_4_lut.init = 16'h3505;
    FD1P3IX hHRec1_1585__i0 (.D(n6029), .SP(clk_c_enable_38), .CD(n3120), 
            .CK(clk_c), .Q(\hH[0] ));   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam hHRec1_1585__i0.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(\hLRec0[2] ), .B(\mode[0] ), .Z(n4)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i1_3_lut_4_lut_adj_22 (.A(n7623), .B(n7618), .C(n7630), .D(n6937), 
         .Z(n1006)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i1_3_lut_4_lut_adj_22.init = 16'hff80;
    LUT4 i2_4_lut_adj_23 (.A(hL[1]), .B(n5660), .C(n977), .D(hL[0]), 
         .Z(n6117)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+(D)))+!A (B (C+!(D))+!B !(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i2_4_lut_adj_23.init = 16'hc9c6;
    LUT4 mux_980_i2_4_lut (.A(\hLRec0[1] ), .B(n7622), .C(n1753), .D(\mode[0] ), 
         .Z(n1602[1])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam mux_980_i2_4_lut.init = 16'h303a;
    LUT4 i19_3_lut (.A(\mode[1] ), .B(n2341), .C(\mode[0] ), .Z(clk_c_enable_39)) /* synthesis lut_function=(A (B (C))+!A !(C)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i19_3_lut.init = 16'h8585;
    PFUMX i23 (.BLUT(n6921), .ALUT(n6831), .C0(hL[0]), .Z(n16));
    PFUMX i6503 (.BLUT(n7560), .ALUT(n7559), .C0(n1022), .Z(n7561));
    LUT4 n223_bdd_3_lut_4_lut (.A(n7636), .B(n7635), .C(mL[1]), .D(mL[0]), 
         .Z(n7560)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(118[10:53])
    defparam n223_bdd_3_lut_4_lut.init = 16'h2dd2;
    LUT4 n223_bdd_2_lut_6491 (.A(sLRec0_c[1]), .B(\mode[1] ), .Z(n7496)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n223_bdd_2_lut_6491.init = 16'h2222;
    LUT4 i198_2_lut_rep_102_3_lut_4_lut (.A(n7636), .B(n7635), .C(sL[3]), 
         .D(n7626), .Z(n7605)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(118[10:53])
    defparam i198_2_lut_rep_102_3_lut_4_lut.init = 16'h00d0;
    LUT4 n223_bdd_3_lut_6485_4_lut (.A(n7636), .B(n7635), .C(sL[1]), .D(sL[0]), 
         .Z(n7497)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(118[10:53])
    defparam n223_bdd_3_lut_6485_4_lut.init = 16'h2dd2;
    LUT4 i2_4_lut_adj_24 (.A(sH[2]), .B(n5649), .C(n992), .D(n6945), 
         .Z(n6121)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (B (D)+!B !(D))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i2_4_lut_adj_24.init = 16'hc639;
    LUT4 i4962_4_lut (.A(n7605), .B(n1260), .C(n992), .D(n6074), .Z(n5649)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i4962_4_lut.init = 16'h05c5;
    LUT4 i1_4_lut_adj_25 (.A(sH[1]), .B(n6943), .C(n16_adj_382), .D(n12), 
         .Z(n6945)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i1_4_lut_adj_25.init = 16'hfdfc;
    FD1P3AX mHRec1_1586__i1 (.D(n6127), .SP(clk_c_enable_42), .CK(clk_c), 
            .Q(mH[1]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam mHRec1_1586__i1.GSR = "ENABLED";
    FD1P3AX mLRec1_1587__i3 (.D(n6119), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(mL[3]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam mLRec1_1587__i3.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_26 (.A(n8077), .B(sH[1]), .C(n6_adj_383), .D(n4547), 
         .Z(n6943)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_26.init = 16'h5575;
    FD1P3AX mLRec1_1587__i2 (.D(n6120), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(mL[2]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam mLRec1_1587__i2.GSR = "ENABLED";
    FD1P3AX mLRec1_1587__i1 (.D(n7561), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(mL[1]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam mLRec1_1587__i1.GSR = "ENABLED";
    FD1P3AX hLRec1_1588__i3 (.D(n6129), .SP(clk_c_enable_40), .CK(clk_c), 
            .Q(hL[3]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam hLRec1_1588__i3.GSR = "ENABLED";
    FD1P3AX hLRec1_1588__i2 (.D(n6130), .SP(clk_c_enable_40), .CK(clk_c), 
            .Q(hL[2]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam hLRec1_1588__i2.GSR = "ENABLED";
    FD1P3AX hLRec1_1588__i1 (.D(n6117), .SP(clk_c_enable_40), .CK(clk_c), 
            .Q(hL[1]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam hLRec1_1588__i1.GSR = "ENABLED";
    FD1P3AX sHRec1_1590__i2 (.D(n6121), .SP(clk_c_enable_39), .CK(clk_c), 
            .Q(sH[2]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam sHRec1_1590__i2.GSR = "ENABLED";
    FD1P3AX sHRec1_1590__i1 (.D(n6126), .SP(clk_c_enable_39), .CK(clk_c), 
            .Q(sH[1]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam sHRec1_1590__i1.GSR = "ENABLED";
    LUT4 i185_2_lut_3_lut_4_lut (.A(n7636), .B(n7635), .C(mL[3]), .D(n7628), 
         .Z(n580)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(118[10:53])
    defparam i185_2_lut_3_lut_4_lut.init = 16'h00d0;
    LUT4 n1039_bdd_4_lut (.A(n1039), .B(n7623), .C(sL[0]), .D(sL[1]), 
         .Z(n4_adj_384)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (C+(D))))) */ ;
    defparam n1039_bdd_4_lut.init = 16'h5110;
    LUT4 i2_4_lut_adj_27 (.A(sH[1]), .B(n5651), .C(n992), .D(sH[0]), 
         .Z(n6126)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+(D)))+!A (B (C+!(D))+!B !(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i2_4_lut_adj_27.init = 16'hc9c6;
    LUT4 i4964_4_lut (.A(n7605), .B(sHRec0_c[1]), .C(n992), .D(\mode[1] ), 
         .Z(n5651)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i4964_4_lut.init = 16'h05c5;
    LUT4 i3967_4_lut (.A(\ctrlcode595[17] ), .B(n7602), .C(n4_adj_385), 
         .D(n2592), .Z(n2752)) /* synthesis lut_function=(A (B+(C (D)+!C !(D)))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i3967_4_lut.init = 16'hfcde;
    LUT4 i4957_4_lut (.A(n7623), .B(hHRec0[1]), .C(n2592), .D(\mode[0] ), 
         .Z(n5644)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i4957_4_lut.init = 16'h05c5;
    LUT4 i5032_4_lut_3_lut_4_lut (.A(sL[2]), .B(n1039), .C(n5637), .D(n4_adj_384), 
         .Z(n6_adj_386)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (C (D))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i5032_4_lut_3_lut_4_lut.init = 16'hf220;
    LUT4 i2_3_lut_4_lut_adj_28 (.A(sL[2]), .B(n1039), .C(n4_adj_384), 
         .D(n5637), .Z(n6122)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i2_3_lut_4_lut_adj_28.init = 16'h2dd2;
    LUT4 i2_3_lut_4_lut_adj_29 (.A(\mode[1] ), .B(n7622), .C(\mode[0] ), 
         .D(n6837), .Z(n2956)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i2_3_lut_4_lut_adj_29.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n7636), .B(n7635), .C(n7627), .D(n23), 
         .Z(n6831)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(118[10:53])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hd000;
    FD1P3AX hHRec1_1585__i1 (.D(n2752), .SP(clk_c_enable_38), .CK(clk_c), 
            .Q(\ctrlcode595[17] ));   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam hHRec1_1585__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_30 (.A(\mode[1] ), .B(n7622), .C(n7630), 
         .D(n7615), .Z(n6897)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i1_2_lut_3_lut_4_lut_adj_30.init = 16'h8000;
    LUT4 i1_2_lut_rep_104_3_lut_4_lut (.A(n7629), .B(\mode[0] ), .C(n7622), 
         .D(\mode[1] ), .Z(n7607)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_rep_104_3_lut_4_lut.init = 16'h2000;
    LUT4 i5207_4_lut (.A(n1262), .B(sH[0]), .C(n992), .D(n6074), .Z(n2[0])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A (B+(C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i5207_4_lut.init = 16'h03a3;
    LUT4 i21_3_lut_4_lut (.A(n7623), .B(n257), .C(\mode[0] ), .D(\mode[1] ), 
         .Z(clk_c_enable_45)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D)))) */ ;
    defparam i21_3_lut_4_lut.init = 16'he00f;
    LUT4 i4973_3_lut_4_lut (.A(n7636), .B(n7635), .C(n977), .D(n1602[1]), 
         .Z(n5660)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(118[10:53])
    defparam i4973_3_lut_4_lut.init = 16'hf202;
    LUT4 mux_980_i1_4_lut (.A(hLRec0[0]), .B(n7622), .C(n1753), .D(\mode[0] ), 
         .Z(n1602[0])) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam mux_980_i1_4_lut.init = 16'h3f3a;
    FD1P3AX sHRec1_1590__i0 (.D(n2[0]), .SP(clk_c_enable_39), .CK(clk_c), 
            .Q(sH[0]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam sHRec1_1590__i0.GSR = "ENABLED";
    LUT4 i23_3_lut (.A(mL[0]), .B(n10), .C(n1022), .Z(n8)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i23_3_lut.init = 16'h3535;
    LUT4 i24_4_lut (.A(mLRec0[0]), .B(n7622), .C(\mode[1] ), .D(n7615), 
         .Z(n10)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i24_4_lut.init = 16'hc505;
    LUT4 i1_2_lut_rep_134 (.A(\mode[1] ), .B(\mode[0] ), .Z(n7637)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_134.init = 16'h8888;
    LUT4 i1_2_lut_rep_105_3_lut_4_lut (.A(n7636), .B(n7635), .C(n7649), 
         .D(n7629), .Z(n7608)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(118[10:53])
    defparam i1_2_lut_rep_105_3_lut_4_lut.init = 16'hd000;
    LUT4 i6382_3_lut_4_lut (.A(n7623), .B(n257), .C(\mode[0] ), .D(\mode[1] ), 
         .Z(clk_c_enable_41)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+(D))))) */ ;
    defparam i6382_3_lut_4_lut.init = 16'h0e0f;
    FD1P3AX hLRec1_1588__i0 (.D(n6031), .SP(clk_c_enable_40), .CK(clk_c), 
            .Q(hL[0]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam hLRec1_1588__i0.GSR = "ENABLED";
    FD1P3AX mLRec1_1587__i0 (.D(n8), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(mL[0]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam mLRec1_1587__i0.GSR = "ENABLED";
    FD1P3AX mHRec1_1586__i0 (.D(n3[0]), .SP(clk_c_enable_42), .CK(clk_c), 
            .Q(mH[0]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam mHRec1_1586__i0.GSR = "ENABLED";
    LUT4 i6379_3_lut_4_lut (.A(n7623), .B(n257), .C(\mode[0] ), .D(\mode[1] ), 
         .Z(clk_c_enable_40)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C+(D))))) */ ;
    defparam i6379_3_lut_4_lut.init = 16'h00ef;
    LUT4 i2_3_lut_rep_107_4_lut (.A(n7636), .B(n7635), .C(n7637), .D(n6837), 
         .Z(n7610)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(118[10:53])
    defparam i2_3_lut_rep_107_4_lut.init = 16'hd000;
    LUT4 i2_2_lut_3_lut_4_lut_adj_31 (.A(\mode[1] ), .B(\mode[0] ), .C(n7624), 
         .D(n3008), .Z(n6_adj_383)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut_adj_31.init = 16'h8000;
    FD1P3AX sLRec1_1584__i3 (.D(n6118), .SP(clk_c_enable_45), .CK(clk_c), 
            .Q(sL[3]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam sLRec1_1584__i3.GSR = "ENABLED";
    LUT4 i5208_4_lut (.A(n1098[0]), .B(mH[0]), .C(n1006), .D(n6897), 
         .Z(n3[0])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A (B+(C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i5208_4_lut.init = 16'h03a3;
    LUT4 i3836_2_lut (.A(\mHRec0[0] ), .B(\mode[1] ), .Z(n1098[0])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i3836_2_lut.init = 16'heeee;
    FD1P3AX sLRec1_1584__i2 (.D(n6122), .SP(clk_c_enable_45), .CK(clk_c), 
            .Q(sL[2]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam sLRec1_1584__i2.GSR = "ENABLED";
    FD1P3AX sLRec1_1584__i1 (.D(n7498), .SP(clk_c_enable_45), .CK(clk_c), 
            .Q(sL[1]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam sLRec1_1584__i1.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_32 (.A(sL[3]), .B(n5635), .C(n1039), .D(n6_adj_386), 
         .Z(n6118)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (B (D)+!B !(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i2_4_lut_adj_32.init = 16'h39c6;
    LUT4 i4948_4_lut (.A(n7623), .B(n1848[3]), .C(n1039), .D(n2956), 
         .Z(n5635)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i4948_4_lut.init = 16'h05c5;
    LUT4 i4030_2_lut (.A(sLRec0_c[3]), .B(\mode[1] ), .Z(n1848[3])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i4030_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_109 (.A(n9_c), .B(n6828), .Z(n7612)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam i1_2_lut_rep_109.init = 16'h8888;
    LUT4 i1_2_lut_rep_100_3_lut_4_lut (.A(n9_c), .B(n6828), .C(hLRec0[0]), 
         .D(n10_adj_389), .Z(n7603)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam i1_2_lut_rep_100_3_lut_4_lut.init = 16'h8000;
    FD1P3AX hLRec0_i0_i3 (.D(n6518), .SP(clk_c_enable_48), .CK(clk_c), 
            .Q(\hLRec0[3] )) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam hLRec0_i0_i3.GSR = "ENABLED";
    LUT4 i4950_4_lut (.A(n7623), .B(sLRec0_c[2]), .C(n1039), .D(\mode[1] ), 
         .Z(n5637)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i4950_4_lut.init = 16'h05c5;
    FD1P3AX hLRec0_i0_i2 (.D(n1323[2]), .SP(clk_c_enable_48), .CK(clk_c), 
            .Q(\hLRec0[2] )) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam hLRec0_i0_i2.GSR = "ENABLED";
    FD1P3AX hLRec0_i0_i1 (.D(n1323[1]), .SP(clk_c_enable_48), .CK(clk_c), 
            .Q(\hLRec0[1] )) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam hLRec0_i0_i1.GSR = "ENABLED";
    FD1P3AX sHRec0_i0_i2 (.D(n1452[2]), .SP(clk_c_enable_50), .CK(clk_c), 
            .Q(\sHRec0[2] )) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam sHRec0_i0_i2.GSR = "ENABLED";
    FD1P3AX sHRec0_i0_i1 (.D(n1452[1]), .SP(clk_c_enable_50), .CK(clk_c), 
            .Q(sHRec0_c[1])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam sHRec0_i0_i1.GSR = "ENABLED";
    FD1P3AX sLRec0_i0_i3 (.D(n7675), .SP(clk_c_enable_53), .CK(clk_c), 
            .Q(sLRec0_c[3])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam sLRec0_i0_i3.GSR = "ENABLED";
    FD1P3AX sLRec0_i0_i2 (.D(n7669), .SP(clk_c_enable_53), .CK(clk_c), 
            .Q(sLRec0_c[2])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam sLRec0_i0_i2.GSR = "ENABLED";
    FD1P3AX sLRec0_i0_i1 (.D(n1769[1]), .SP(clk_c_enable_53), .CK(clk_c), 
            .Q(sLRec0_c[1])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam sLRec0_i0_i1.GSR = "ENABLED";
    FD1P3AX mHRec0_i0_i2 (.D(n6684), .SP(clk_c_enable_55), .CK(clk_c), 
            .Q(mHRec0[2])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam mHRec0_i0_i2.GSR = "ENABLED";
    FD1P3AX mHRec0_i0_i1 (.D(n7666), .SP(clk_c_enable_55), .CK(clk_c), 
            .Q(mHRec0[1])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam mHRec0_i0_i1.GSR = "ENABLED";
    FD1P3AX mLRec0_i0_i3 (.D(n7663), .SP(clk_c_enable_60), .CK(clk_c), 
            .Q(mLRec0_c[3])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam mLRec0_i0_i3.GSR = "ENABLED";
    FD1P3AX mLRec0_i0_i2 (.D(n7660), .SP(clk_c_enable_60), .CK(clk_c), 
            .Q(mLRec0_c[2])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam mLRec0_i0_i2.GSR = "ENABLED";
    FD1P3AX mLRec0_i0_i1 (.D(n1204[1]), .SP(clk_c_enable_60), .CK(clk_c), 
            .Q(mLRec0_c[1])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam mLRec0_i0_i1.GSR = "ENABLED";
    FD1P3AX hHRec0_i0_i1 (.D(n1392[1]), .SP(clk_c_enable_61), .CK(clk_c), 
            .Q(hHRec0[1])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam hHRec0_i0_i1.GSR = "ENABLED";
    PFUMX i6527 (.BLUT(n7658), .ALUT(n7659), .C0(mLRec0_c[1]), .Z(n7660));
    LUT4 i2_3_lut (.A(mHRec0[2]), .B(mHRec0[1]), .C(\mHRec0[0] ), .Z(n10_adj_389)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam i2_3_lut.init = 16'h2020;
    LUT4 i4073_3_lut_4_lut (.A(n9_c), .B(n6828), .C(n8077), .D(clk_c_enable_53), 
         .Z(clk_c_enable_55)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam i4073_3_lut_4_lut.init = 16'hf800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_33 (.A(n7626), .B(sL[3]), .C(sH[0]), 
         .D(n7623), .Z(n12)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B !(C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(165[11:19])
    defparam i1_2_lut_3_lut_4_lut_adj_33.init = 16'h4f0f;
    LUT4 i2_4_lut_adj_34 (.A(mLRec0_c[2]), .B(mLRec0_c[3]), .C(mLRec0_c[1]), 
         .D(mLRec0[0]), .Z(n9_c)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_4_lut_adj_34.init = 16'h0400;
    LUT4 i1_3_lut_rep_99_4_lut (.A(n7650), .B(n7606), .C(n7646), .D(n6950), 
         .Z(n7602)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i1_3_lut_rep_99_4_lut.init = 16'h4000;
    LUT4 mux_747_i3_4_lut (.A(n1[2]), .B(hL[2]), .C(n7620), .D(n547), 
         .Z(n1323[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(66[4] 103[11])
    defparam mux_747_i3_4_lut.init = 16'hc0ca;
    LUT4 mux_747_i2_4_lut (.A(n1[1]), .B(hL[1]), .C(n7620), .D(n547), 
         .Z(n1323[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(66[4] 103[11])
    defparam mux_747_i2_4_lut.init = 16'hc0ca;
    LUT4 i3_4_lut_adj_35 (.A(sHRec0[0]), .B(\sHRec0[2] ), .C(n7_adj_1), 
         .D(sHRec0_c[1]), .Z(n6828)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam i3_4_lut_adj_35.init = 16'h0080;
    LUT4 i1657_2_lut (.A(\hLRec0[1] ), .B(hLRec0[0]), .Z(n1[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(83[20:26])
    defparam i1657_2_lut.init = 16'h6666;
    LUT4 i3730_3_lut (.A(\sHRec0[2] ), .B(sHRec0_c[1]), .C(sHRec0[0]), 
         .Z(n4434)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(39[9:15])
    defparam i3730_3_lut.init = 16'h4a4a;
    LUT4 i1_2_lut_rep_112_4_lut (.A(n7648), .B(mL[3]), .C(mL[0]), .D(\mode[0] ), 
         .Z(n7615)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_2_lut_rep_112_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_rep_115_4_lut (.A(n7648), .B(mL[3]), .C(mL[0]), .D(n7649), 
         .Z(n7618)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_rep_115_4_lut.init = 16'h4000;
    LUT4 i3735_3_lut (.A(sHRec0_c[1]), .B(\sHRec0[2] ), .C(sHRec0[0]), 
         .Z(n4439)) /* synthesis lut_function=(!(A (C)+!A (B+!(C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(39[9:15])
    defparam i3735_3_lut.init = 16'h1a1a;
    LUT4 i2_4_lut_adj_36 (.A(sLRec0_c[2]), .B(sLRec0_c[3]), .C(sLRec0_c[1]), 
         .D(sLRec0[0]), .Z(n7_adj_1)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_4_lut_adj_36.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut_adj_37 (.A(mH[0]), .B(n7647), .C(n7649), 
         .D(n7629), .Z(n6927)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i1_2_lut_3_lut_4_lut_adj_37.init = 16'h8000;
    LUT4 mux_1135_i2_4_lut (.A(n108[1]), .B(sL[1]), .C(n7620), .D(n7_adj_1), 
         .Z(n1769[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(66[4] 103[11])
    defparam mux_1135_i2_4_lut.init = 16'hc0ca;
    LUT4 i1759_2_lut (.A(sLRec0_c[1]), .B(sLRec0[0]), .Z(n108[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(95[16:22])
    defparam i1759_2_lut.init = 16'h6666;
    LUT4 i23_3_lut_adj_38 (.A(mHRec0[1]), .B(mHRec0[2]), .C(\mHRec0[0] ), 
         .Z(n9)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(66[4] 103[11])
    defparam i23_3_lut_adj_38.init = 16'h2c2c;
    LUT4 i1438_3_lut_4_lut (.A(n7626), .B(sL[3]), .C(n7623), .D(n3008), 
         .Z(n2341)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(165[11:19])
    defparam i1438_3_lut_4_lut.init = 16'h4f40;
    LUT4 n6226_bdd_4_lut (.A(n6226), .B(n6870), .C(n7623), .D(n7645), 
         .Z(n1753)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n6226_bdd_4_lut.init = 16'hca00;
    LUT4 i6349_2_lut_rep_143 (.A(\ctrlcode595[17] ), .B(\hH[0] ), .Z(n7646)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i6349_2_lut_rep_143.init = 16'h1111;
    LUT4 i32_4_lut_4_lut (.A(\hLRec0[3] ), .B(\hLRec0[1] ), .C(hLRec0[0]), 
         .D(\hLRec0[2] ), .Z(n13)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(66[4] 103[11])
    defparam i32_4_lut_4_lut.init = 16'h6a8a;
    LUT4 i2_3_lut_4_lut_adj_39 (.A(\ctrlcode595[17] ), .B(\hH[0] ), .C(n6950), 
         .D(n257), .Z(n6226)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_39.init = 16'h1000;
    LUT4 mux_652_i2_4_lut (.A(n59[1]), .B(mL[1]), .C(n7620), .D(n9_c), 
         .Z(n1204[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(66[4] 103[11])
    defparam mux_652_i2_4_lut.init = 16'hc0ca;
    LUT4 i5144_4_lut_3_lut_4_lut (.A(mL[2]), .B(n1022), .C(n5667), .D(n4_adj_394), 
         .Z(n6_adj_379)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (C (D))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i5144_4_lut_3_lut_4_lut.init = 16'hf220;
    LUT4 i1708_2_lut (.A(mLRec0_c[1]), .B(mLRec0[0]), .Z(n59[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(89[18:24])
    defparam i1708_2_lut.init = 16'h6666;
    LUT4 i44_4_lut_4_lut_4_lut (.A(hL[1]), .B(\hH[0] ), .C(hL[3]), .D(\ctrlcode595[17] ), 
         .Z(n23)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i44_4_lut_4_lut_4_lut.init = 16'h5250;
    LUT4 mux_1182_i2_4_lut_then_3_lut (.A(mH[1]), .B(n7620), .C(\mHRec0[0] ), 
         .Z(n7665)) /* synthesis lut_function=(A (B+!(C))+!A !(B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(66[4] 103[11])
    defparam mux_1182_i2_4_lut_then_3_lut.init = 16'h8b8b;
    LUT4 i1_2_lut_rep_111_3_lut_4_lut_4_lut (.A(hL[2]), .B(hL[3]), .C(\mode[0] ), 
         .D(\mode[1] ), .Z(n7614)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_111_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 n223_bdd_4_lut_6494 (.A(hL[3]), .B(n257), .C(hL[0]), .D(hL[1]), 
         .Z(n7464)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam n223_bdd_4_lut_6494.init = 16'h0004;
    LUT4 mux_1182_i2_4_lut_else_3_lut (.A(mH[1]), .B(n7620), .C(\mHRec0[0] ), 
         .D(mHRec0[2]), .Z(n7664)) /* synthesis lut_function=(A (B+!((D)+!C))+!A !(B+((D)+!C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(66[4] 103[11])
    defparam mux_1182_i2_4_lut_else_3_lut.init = 16'h88b8;
    LUT4 mux_800_i2_4_lut (.A(n5[1]), .B(\ctrlcode595[17] ), .C(n7620), 
         .D(n6832), .Z(n1392[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(66[4] 103[11])
    defparam mux_800_i2_4_lut.init = 16'hcac0;
    LUT4 n1022_bdd_4_lut (.A(n1022), .B(n7623), .C(mL[0]), .D(mL[1]), 
         .Z(n4_adj_394)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (C+(D))))) */ ;
    defparam n1022_bdd_4_lut.init = 16'h5110;
    LUT4 i1642_2_lut (.A(hHRec0[1]), .B(hHRec0[0]), .Z(n5[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(81[31:37])
    defparam i1642_2_lut.init = 16'h6666;
    LUT4 i2_3_lut_4_lut_adj_40 (.A(n257), .B(n7624), .C(n7645), .D(hL[3]), 
         .Z(n22_adj_381)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i2_3_lut_4_lut_adj_40.init = 16'hff7f;
    LUT4 mux_652_i4_4_lut_then_1_lut (.A(mL[3]), .Z(n7662)) /* synthesis lut_function=(A) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(66[4] 103[11])
    defparam mux_652_i4_4_lut_then_1_lut.init = 16'haaaa;
    LUT4 mux_1135_i3_4_lut_then_4_lut (.A(sL[2]), .B(n7620), .C(sLRec0[0]), 
         .D(sLRec0_c[2]), .Z(n7668)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B+(C (D)+!C !(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(66[4] 103[11])
    defparam mux_1135_i3_4_lut_then_4_lut.init = 16'h8bb8;
    LUT4 i4077_3_lut_4_lut (.A(n10_adj_389), .B(n7612), .C(n8077), .D(clk_c_enable_53), 
         .Z(clk_c_enable_48)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(70[7] 96[14])
    defparam i4077_3_lut_4_lut.init = 16'hf800;
    LUT4 mux_1135_i3_4_lut_else_4_lut (.A(sL[2]), .B(n7620), .C(sLRec0_c[2]), 
         .Z(n7667)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(66[4] 103[11])
    defparam mux_1135_i3_4_lut_else_4_lut.init = 16'hb8b8;
    LUT4 i6388_4_lut_4_lut (.A(hL[2]), .B(n7465), .C(\mode[0] ), .D(\mode[1] ), 
         .Z(clk_c_enable_38)) /* synthesis lut_function=(!(A (C+(D))+!A (B (D)+!B (C+(D))))) */ ;
    defparam i6388_4_lut_4_lut.init = 16'h004f;
    LUT4 i1_2_lut_rep_124_3_lut_3_lut (.A(hL[2]), .B(\mode[0] ), .C(\mode[1] ), 
         .Z(n7627)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_rep_124_3_lut_3_lut.init = 16'h0404;
    PFUMX i6462 (.BLUT(n7497), .ALUT(n7496), .C0(n1039), .Z(n7498));
    LUT4 equal_529_i3_2_lut_rep_151 (.A(\mode[0] ), .B(\mode[1] ), .Z(n8077)) /* synthesis lut_function=(A+(B)) */ ;
    defparam equal_529_i3_2_lut_rep_151.init = 16'heeee;
    LUT4 i1_3_lut_3_lut (.A(hL[2]), .B(n23), .C(hL[0]), .Z(n6870)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_3_lut.init = 16'h4040;
    LUT4 mux_1135_i4_4_lut_then_1_lut (.A(sL[3]), .Z(n7674)) /* synthesis lut_function=(A) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(66[4] 103[11])
    defparam mux_1135_i4_4_lut_then_1_lut.init = 16'haaaa;
    LUT4 mux_1135_i4_4_lut_else_1_lut (.A(sLRec0_c[1]), .B(sLRec0[0]), .C(sLRec0_c[2]), 
         .D(sLRec0_c[3]), .Z(n7673)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(B (C (D))+!B (D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(66[4] 103[11])
    defparam mux_1135_i4_4_lut_else_1_lut.init = 16'h7b80;
    LUT4 i5110_4_lut_4_lut (.A(hL[2]), .B(n6935), .C(n6969), .D(n20), 
         .Z(n6_adj_380)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;
    defparam i5110_4_lut_4_lut.init = 16'h2f22;
    LUT4 i2_4_lut_4_lut (.A(hL[2]), .B(n6935), .C(n6952), .D(n5658), 
         .Z(n6130)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (B (D)+!B !(D))) */ ;
    defparam i2_4_lut_4_lut.init = 16'hc639;
    LUT4 i2_2_lut_3_lut_4_lut_4_lut_4_lut (.A(hL[2]), .B(n7645), .C(n23), 
         .D(n7651), .Z(n13_c)) /* synthesis lut_function=(!(A (D)+!A !(B (C+!(D))+!B !(D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h40ff;
    LUT4 i3_2_lut_3_lut_4_lut (.A(n10_adj_389), .B(n7612), .C(n8077), 
         .D(hLRec0[0]), .Z(n9_adj_2)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(70[7] 96[14])
    defparam i3_2_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 mux_652_i4_4_lut_else_1_lut (.A(mLRec0_c[1]), .B(mLRec0[0]), .C(mLRec0_c[2]), 
         .D(mLRec0_c[3]), .Z(n7661)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(B (C (D))+!B (D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(66[4] 103[11])
    defparam mux_652_i4_4_lut_else_1_lut.init = 16'h7b80;
    PFUMX i6525 (.BLUT(n7655), .ALUT(n7656), .C0(n7624), .Z(n1039));
    LUT4 i4_2_lut_rep_144 (.A(mH[2]), .B(mH[1]), .Z(n7647)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i4_2_lut_rep_144.init = 16'h2222;
    LUT4 i1_2_lut_rep_127_3_lut (.A(mH[2]), .B(mH[1]), .C(mH[0]), .Z(n7630)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_rep_127_3_lut.init = 16'h2020;
    LUT4 i2_3_lut_4_lut_adj_41 (.A(mL[2]), .B(n1022), .C(n4_adj_394), 
         .D(n5667), .Z(n6120)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i2_3_lut_4_lut_adj_41.init = 16'h2dd2;
    LUT4 i6167_2_lut_rep_145 (.A(mL[1]), .B(mL[2]), .Z(n7648)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6167_2_lut_rep_145.init = 16'heeee;
    LUT4 i6385_3_lut (.A(n2339), .B(\mode[0] ), .C(\mode[1] ), .Z(clk_c_enable_42)) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i6385_3_lut.init = 16'h2323;
    LUT4 i2_3_lut_rep_126_4_lut (.A(mL[1]), .B(mL[2]), .C(mL[0]), .D(mL[3]), 
         .Z(n7629)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_rep_126_4_lut.init = 16'h1000;
    LUT4 i6163_2_lut_rep_131 (.A(sL[1]), .B(sL[2]), .Z(n7634)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6163_2_lut_rep_131.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_42 (.A(sL[1]), .B(sL[2]), .C(sL[0]), .D(sL[3]), 
         .Z(n6837)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_42.init = 16'h1000;
    LUT4 i2_4_lut_adj_43 (.A(mH[2]), .B(n5674), .C(n1006), .D(n6939), 
         .Z(n6125)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (B (D)+!B !(D))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i2_4_lut_adj_43.init = 16'hc639;
    LUT4 i4987_4_lut (.A(n580), .B(n1098[2]), .C(n1006), .D(n6897), 
         .Z(n5674)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i4987_4_lut.init = 16'h05c5;
    LUT4 i68_2_lut_rep_132 (.A(upkey_ls), .B(up_key_state), .Z(n7635)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(118[26:52])
    defparam i68_2_lut_rep_132.init = 16'h2222;
    LUT4 i6157_2_lut_3_lut_4_lut (.A(upkey_ls), .B(up_key_state), .C(n8077), 
         .D(n7636), .Z(n6969)) /* synthesis lut_function=(!(A (B (C (D)))+!A (C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(118[26:52])
    defparam i6157_2_lut_3_lut_4_lut.init = 16'h2fff;
    LUT4 i1_2_lut_rep_101_3_lut_4_lut (.A(n257), .B(n7624), .C(n7650), 
         .D(n7614), .Z(n7604)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_101_3_lut_4_lut.init = 16'h0800;
    LUT4 n223_bdd_2_lut (.A(mLRec0_c[1]), .B(\mode[1] ), .Z(n7559)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n223_bdd_2_lut.init = 16'h2222;
    LUT4 i1_3_lut_rep_119_4_lut (.A(upkey_ls), .B(up_key_state), .C(\act_of_re[0] ), 
         .D(\act_of_re[31] ), .Z(n7622)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(118[26:52])
    defparam i1_3_lut_rep_119_4_lut.init = 16'h22f2;
    LUT4 mux_747_i1_4_lut (.A(hLRec0[0]), .B(hL[0]), .C(n7620), .D(n547), 
         .Z(n1323[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(66[4] 103[11])
    defparam mux_747_i1_4_lut.init = 16'hc0c5;
    LUT4 equal_1630_i3_2_lut_rep_133 (.A(\act_of_re[0] ), .B(\act_of_re[31] ), 
         .Z(n7636)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(118[10:21])
    defparam equal_1630_i3_2_lut_rep_133.init = 16'hdddd;
    LUT4 i23_3_lut_4_lut (.A(n7644), .B(n7610), .C(sH[0]), .D(n7605), 
         .Z(n16_adj_382)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i23_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_2_lut_rep_103_3_lut_4_lut (.A(hL[3]), .B(n7627), .C(n7624), 
         .D(n257), .Z(n7606)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_rep_103_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_110_3_lut_4_lut (.A(upkey_ls), .B(up_key_state), .C(n257), 
         .D(n7636), .Z(n7613)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(118[26:52])
    defparam i1_2_lut_rep_110_3_lut_4_lut.init = 16'hd000;
    LUT4 i1439_3_lut_4_lut (.A(n7628), .B(mL[3]), .C(n7623), .D(n2989), 
         .Z(n2339)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(140[11:19])
    defparam i1439_3_lut_4_lut.init = 16'h4f40;
    LUT4 i1_2_lut_rep_139 (.A(hHRec0[1]), .B(hHRec0[0]), .Z(n7642)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam i1_2_lut_rep_139.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut_adj_44 (.A(hHRec0[1]), .B(hHRec0[0]), .C(hLRec0[0]), 
         .D(\hLRec0[1] ), .Z(n6889)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(61[3] 104[10])
    defparam i1_2_lut_3_lut_4_lut_adj_44.init = 16'h2000;
    LUT4 i5225_4_lut (.A(n1848[0]), .B(sL[0]), .C(n1039), .D(n2956), 
         .Z(n6028)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A (B+(C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i5225_4_lut.init = 16'h03a3;
    LUT4 i3896_2_lut (.A(sLRec0[0]), .B(\mode[1] ), .Z(n1848[0])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(115[4] 192[13])
    defparam i3896_2_lut.init = 16'heeee;
    LUT4 i3_4_lut_adj_45 (.A(sL[3]), .B(n257), .C(sL[0]), .D(n7634), 
         .Z(n3008)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i3_4_lut_adj_45.init = 16'h0004;
    LUT4 i83_4_lut (.A(\act_of_re[0] ), .B(downkey_ls), .C(\act_of_re[31] ), 
         .D(down_key_state), .Z(n257)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(127[13:61])
    defparam i83_4_lut.init = 16'ha0ec;
    LUT4 i1932_2_lut_rep_117_3_lut_4_lut (.A(\mode[0] ), .B(\mode[1] ), 
         .C(sec_ls), .D(sec), .Z(n7620)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam i1932_2_lut_rep_117_3_lut_4_lut.init = 16'h0e00;
    LUT4 i1_2_lut_3_lut (.A(\mode[0] ), .B(\mode[1] ), .C(n16), .Z(n977)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1_4_lut_adj_46 (.A(clk_c_enable_53), .B(n8077), .C(n7603), .D(n4_adj_396), 
         .Z(clk_c_enable_61)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(66[4] 103[11])
    defparam i1_4_lut_adj_46.init = 16'ha888;
    LUT4 i1_4_lut_adj_47 (.A(\hLRec0[2] ), .B(\hLRec0[3] ), .C(\hLRec0[1] ), 
         .D(n7642), .Z(n4_adj_396)) /* synthesis lut_function=(!(A+(B (C)+!B !(C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(66[4] 103[11])
    defparam i1_4_lut_adj_47.init = 16'h1404;
    PFUMX i6446 (.BLUT(n7464), .ALUT(n7463), .C0(n7623), .Z(n7465));
    LUT4 i1_3_lut_4_lut_adj_48 (.A(\mode[0] ), .B(\mode[1] ), .C(\hH[0] ), 
         .D(n5644), .Z(n4_adj_385)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_48.init = 16'h1fe0;
    LUT4 mux_800_i1_4_lut (.A(hHRec0[0]), .B(\hH[0] ), .C(n7620), .D(n6832), 
         .Z(n1392[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(66[4] 103[11])
    defparam mux_800_i1_4_lut.init = 16'hc5c0;
    LUT4 i4_2_lut_rep_141 (.A(sH[2]), .B(sH[1]), .Z(n7644)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i4_2_lut_rep_141.init = 16'h2222;
    LUT4 i2_3_lut_4_lut_adj_49 (.A(sH[2]), .B(sH[1]), .C(sH[0]), .D(n2956), 
         .Z(n6074)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_49.init = 16'h2000;
    PFUMX i6537 (.BLUT(n7673), .ALUT(n7674), .C0(n7620), .Z(n7675));
    LUT4 i6365_3_lut_4_lut (.A(hL[1]), .B(hL[2]), .C(hL[3]), .D(hL[0]), 
         .Z(n6950)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timer1.vhd(130[14:22])
    defparam i6365_3_lut_4_lut.init = 16'h0001;
    PFUMX i6533 (.BLUT(n7667), .ALUT(n7668), .C0(sLRec0_c[1]), .Z(n7669));
    PFUMX i6531 (.BLUT(n7664), .ALUT(n7665), .C0(mHRec0[1]), .Z(n7666));
    PFUMX i6529 (.BLUT(n7661), .ALUT(n7662), .C0(n7620), .Z(n7663));
    
endmodule
//
// Verilog Description of module ModeCtrler
//

module ModeCtrler (\mode[0] , clk_c, mode_key_state, n9, \hLRec0[3] , 
            sec_ls, n6832, \mode[1] , \sHRec0[2] , n1260, sec, \hLRec0[2] , 
            \hLRec0[1] , \sHRec0[0] , n1262, modedisplay_c_0, modedisplay_c_2, 
            modedisplay_c_3, modedisplay_c_1);
    output \mode[0] ;
    input clk_c;
    input mode_key_state;
    input n9;
    input \hLRec0[3] ;
    input sec_ls;
    output n6832;
    output \mode[1] ;
    input \sHRec0[2] ;
    output n1260;
    input sec;
    input \hLRec0[2] ;
    input \hLRec0[1] ;
    input \sHRec0[0] ;
    output n1262;
    output modedisplay_c_0;
    output modedisplay_c_2;
    output modedisplay_c_3;
    output modedisplay_c_1;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(11[3:6])
    wire [1:0]moderec;   // c:/users/10352/vhdl-labs/lab4_digital_clock/modectrler.vhd(19[9:16])
    
    wire modekey_ls, moderec_1__N_149, n7638, n7;
    wire [1:0]n13;
    
    FD1S3AX mode_i1 (.D(moderec[0]), .CK(clk_c), .Q(\mode[0] )) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=14, LSE_RCOL=24, LSE_LLINE=167, LSE_RLINE=167 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/modectrler.vhd(43[3] 46[10])
    defparam mode_i1.GSR = "DISABLED";
    FD1S3AX modekey_ls_21 (.D(mode_key_state), .CK(clk_c), .Q(modekey_ls)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=14, LSE_RCOL=24, LSE_LLINE=167, LSE_RLINE=167 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/modectrler.vhd(43[3] 46[10])
    defparam modekey_ls_21.GSR = "DISABLED";
    FD1P3AX moderec_1583__i0 (.D(n7638), .SP(moderec_1__N_149), .CK(clk_c), 
            .Q(moderec[0]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/modectrler.vhd(34[15:22])
    defparam moderec_1583__i0.GSR = "ENABLED";
    LUT4 i5_4_lut (.A(n9), .B(n7), .C(\hLRec0[3] ), .D(sec_ls), .Z(n6832)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/modectrler.vhd(43[3] 46[10])
    defparam i5_4_lut.init = 16'h0080;
    LUT4 i1_2_lut (.A(\mode[1] ), .B(\sHRec0[2] ), .Z(n1260)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/modectrler.vhd(43[3] 46[10])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_3_lut (.A(sec), .B(\hLRec0[2] ), .C(\hLRec0[1] ), .Z(n7)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/modectrler.vhd(43[3] 46[10])
    defparam i1_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_adj_13 (.A(\mode[1] ), .B(\sHRec0[0] ), .Z(n1262)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/modectrler.vhd(43[3] 46[10])
    defparam i1_2_lut_adj_13.init = 16'heeee;
    LUT4 moderec_1__I_1_2_lut (.A(mode_key_state), .B(modekey_ls), .Z(moderec_1__N_149)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/modectrler.vhd(30[8:38])
    defparam moderec_1__I_1_2_lut.init = 16'h4444;
    FD1P3AX moderec_1583__i1 (.D(n13[1]), .SP(moderec_1__N_149), .CK(clk_c), 
            .Q(moderec[1]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/modectrler.vhd(34[15:22])
    defparam moderec_1583__i1.GSR = "ENABLED";
    FD1S3AX mode_i2 (.D(moderec[1]), .CK(clk_c), .Q(\mode[1] )) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=14, LSE_RCOL=24, LSE_LLINE=167, LSE_RLINE=167 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/modectrler.vhd(43[3] 46[10])
    defparam mode_i2.GSR = "DISABLED";
    LUT4 i5002_2_lut (.A(moderec[1]), .B(moderec[0]), .Z(n13[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/modectrler.vhd(34[15:22])
    defparam i5002_2_lut.init = 16'h6666;
    LUT4 i3838_2_lut (.A(moderec[0]), .B(moderec[1]), .Z(modedisplay_c_0)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/modectrler.vhd(52[6] 58[12])
    defparam i3838_2_lut.init = 16'heeee;
    LUT4 i3824_2_lut (.A(moderec[0]), .B(moderec[1]), .Z(modedisplay_c_2)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/modectrler.vhd(52[6] 58[12])
    defparam i3824_2_lut.init = 16'hbbbb;
    LUT4 i6399_2_lut (.A(moderec[0]), .B(moderec[1]), .Z(modedisplay_c_3)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i6399_2_lut.init = 16'h7777;
    LUT4 i1808_1_lut_rep_135 (.A(moderec[0]), .Z(n7638)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/modectrler.vhd(52[6] 58[12])
    defparam i1808_1_lut_rep_135.init = 16'h5555;
    LUT4 i3820_2_lut_2_lut (.A(moderec[0]), .B(moderec[1]), .Z(modedisplay_c_1)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/modectrler.vhd(52[6] 58[12])
    defparam i3820_2_lut_2_lut.init = 16'hdddd;
    
endmodule
//
// Verilog Description of module RotaryEncoder
//

module RotaryEncoder (clk_c, PortA_c, \act_of_re[0] , PortB_c, \act_of_re[31] );
    input clk_c;
    input PortA_c;
    output \act_of_re[0] ;
    input PortB_c;
    output \act_of_re[31] ;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(11[3:6])
    
    wire int_times, n3115, PA_ls, clk_c_enable_14, n4541, n6772, 
        act_cache_tmp, clk_c_enable_10, n17;
    
    FD1S3AX int_times_33 (.D(n3115), .CK(clk_c), .Q(int_times)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=18, LSE_LLINE=173, LSE_RLINE=173 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/rotaryencoder.vhd(35[2] 55[9])
    defparam int_times_33.GSR = "DISABLED";
    FD1S3AX PA_ls_31 (.D(PortA_c), .CK(clk_c), .Q(PA_ls)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=18, LSE_LLINE=173, LSE_RLINE=173 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/rotaryencoder.vhd(28[2] 30[9])
    defparam PA_ls_31.GSR = "DISABLED";
    FD1P3IX act_cache__i1 (.D(n6772), .SP(clk_c_enable_14), .CD(n4541), 
            .CK(clk_c), .Q(\act_of_re[0] )) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=18, LSE_LLINE=173, LSE_RLINE=173 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/rotaryencoder.vhd(35[2] 55[9])
    defparam act_cache__i1.GSR = "DISABLED";
    FD1P3AX act_cache_tmp_32 (.D(PortB_c), .SP(clk_c_enable_10), .CK(clk_c), 
            .Q(act_cache_tmp)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=18, LSE_LLINE=173, LSE_RLINE=173 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/rotaryencoder.vhd(35[2] 55[9])
    defparam act_cache_tmp_32.GSR = "DISABLED";
    FD1P3IX act_cache__i2 (.D(n17), .SP(clk_c_enable_14), .CD(n4541), 
            .CK(clk_c), .Q(\act_of_re[31] )) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=18, LSE_LLINE=173, LSE_RLINE=173 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/rotaryencoder.vhd(35[2] 55[9])
    defparam act_cache__i2.GSR = "DISABLED";
    LUT4 i15_2_lut (.A(PortB_c), .B(act_cache_tmp), .Z(n6772)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/rotaryencoder.vhd(44[4] 50[11])
    defparam i15_2_lut.init = 16'h6666;
    LUT4 i6342_2_lut_2_lut_4_lut_3_lut (.A(PortA_c), .B(PA_ls), .C(int_times), 
         .Z(n4541)) /* synthesis lut_function=(A (B+!(C))+!A ((C)+!B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/rotaryencoder.vhd(43[9:50])
    defparam i6342_2_lut_2_lut_4_lut_3_lut.init = 16'hdbdb;
    LUT4 i19_2_lut (.A(PortB_c), .B(act_cache_tmp), .Z(n17)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/rotaryencoder.vhd(44[7:38])
    defparam i19_2_lut.init = 16'h2222;
    LUT4 i2399_3_lut_4_lut_3_lut (.A(PortA_c), .B(PA_ls), .C(int_times), 
         .Z(n3115)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/rotaryencoder.vhd(43[9:50])
    defparam i2399_3_lut_4_lut_3_lut.init = 16'hd4d4;
    LUT4 i2_3_lut_rep_136 (.A(PortA_c), .B(PA_ls), .C(int_times), .Z(clk_c_enable_10)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_rep_136.init = 16'h0404;
    LUT4 i2386_1_lut_3_lut (.A(PortA_c), .B(PA_ls), .C(int_times), .Z(clk_c_enable_14)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i2386_1_lut_3_lut.init = 16'hfbfb;
    
endmodule
//
// Verilog Description of module dataTo595
//

module dataTo595 (GND_net, clk_c, sck_c, \ctrlcode595[17] , \hH[0] , 
            sH, din_c, n381, sL, \ctrlcode595[68] , \ctrlcode595[69] , 
            n4759, n14, hL, mH, rst_key_state, rck_c, \ctrlcode595[67] , 
            \ctrlcode595[3] , n3082, \ctrlcode595[35] , mL, n2658, 
            \ctrlcode595[71] , \ctrlcode595[4] , \ctrlcode595[5] , \ctrlcode595[36] , 
            \ctrlcode595[37] );
    input GND_net;
    input clk_c;
    output sck_c;
    input \ctrlcode595[17] ;
    input \hH[0] ;
    input [2:0]sH;
    output din_c;
    output n381;
    input [3:0]sL;
    input \ctrlcode595[68] ;
    input \ctrlcode595[69] ;
    input n4759;
    input n14;
    input [3:0]hL;
    input [2:0]mH;
    input rst_key_state;
    output rck_c;
    input \ctrlcode595[67] ;
    input \ctrlcode595[3] ;
    input n3082;
    input \ctrlcode595[35] ;
    input [3:0]mL;
    output n2658;
    input \ctrlcode595[71] ;
    input \ctrlcode595[4] ;
    input \ctrlcode595[5] ;
    input \ctrlcode595[36] ;
    input \ctrlcode595[37] ;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(11[3:6])
    
    wire n2672;
    wire [15:0]n369;
    
    wire n2673, n5970;
    wire [31:0]shift_clock_cnt;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(26[9:24])
    wire [31:0]n133;
    
    wire n5971;
    wire [2:0]codeP;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(32[9:14])
    
    wire n2337;
    wire [2:0]n12;
    
    wire n7631, n7328, n7632, n7329, n5969, n5968, n5967, shift_clock_ls, 
        sck_N_375;
    wire [15:0]n33;
    
    wire clk_c_enable_28, n7076, n7077, n7078, n7473, n2687, din_N_372, 
        din_N_365, n7474, n7071, din_N_369, din_N_368, n7672, n2680, 
        n3096, n7476, n7477, n2576, n3092, n6942, n6255, n6256, 
        din_N_371, din_N_370, n7684, n7449, n3094, n2577, n7652, 
        n6, n3083, n7653, n7052, n3090, n7080, n3124, n7493, 
        n3123, n2681, n3086, n7494, n2588, n3088;
    wire [0:0]n1348;
    
    wire n2666;
    wire [0:0]n1963;
    wire [0:0]n1977;
    
    wire n2688, n7621, n4, clk_c_enable_57, n6782, n3, n5982, 
        n5981, n5980, n5979, n5978, n5977, n5976, n5975, n5974, 
        n5973, n7475, n5972, n7472, n7619, n7678, n7448, n6102, 
        n7681, n7609, n7671, n7670, n7677, n7676, n7680, n7679, 
        n7683, n7682, n49, n7159, n58, n50, n7471, n41, n60, 
        n54, n42, n51, n39, n7470, n56, n46, n6940, n6_adj_377, 
        n7447;
    
    LUT4 i3980_2_lut (.A(n2672), .B(n369[13]), .Z(n2673)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(120[27:36])
    defparam i3980_2_lut.init = 16'h2222;
    CCU2D shift_clock_cnt_1589_add_4_9 (.A0(shift_clock_cnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5970), .COUT(n5971), .S0(n133[7]), 
          .S1(n133[8]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589_add_4_9.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_9.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_9.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1589_add_4_9.INJECT1_1 = "NO";
    FD1S3IX codeP__i0 (.D(n12[0]), .CK(clk_c), .CD(n2337), .Q(codeP[0])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=14, LSE_LLINE=179, LSE_RLINE=179 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(112[3] 133[10])
    defparam codeP__i0.GSR = "DISABLED";
    LUT4 n7328_bdd_2_lut_3_lut_4_lut (.A(n369[13]), .B(n7631), .C(n7328), 
         .D(n7632), .Z(n7329)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(117[27:36])
    defparam n7328_bdd_2_lut_3_lut_4_lut.init = 16'hfffe;
    CCU2D shift_clock_cnt_1589_add_4_7 (.A0(shift_clock_cnt[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5969), .COUT(n5970), .S0(n133[5]), 
          .S1(n133[6]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589_add_4_7.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_7.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_7.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1589_add_4_7.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_1589_add_4_5 (.A0(shift_clock_cnt[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5968), .COUT(n5969), .S0(n133[3]), 
          .S1(n133[4]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589_add_4_5.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_5.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_5.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1589_add_4_5.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_1589_add_4_3 (.A0(shift_clock_cnt[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5967), .COUT(n5968), .S0(n133[1]), 
          .S1(n133[2]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589_add_4_3.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_3.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_3.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1589_add_4_3.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_1589_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(shift_clock_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n5967), .S1(n133[0]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589_add_4_1.INIT0 = 16'hF000;
    defparam shift_clock_cnt_1589_add_4_1.INIT1 = 16'h0555;
    defparam shift_clock_cnt_1589_add_4_1.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1589_add_4_1.INJECT1_1 = "NO";
    FD1S3AX shift_clock_ls_56 (.D(sck_c), .CK(clk_c), .Q(shift_clock_ls)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=14, LSE_LLINE=179, LSE_RLINE=179 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(70[3] 72[10])
    defparam shift_clock_ls_56.GSR = "DISABLED";
    FD1S3AY shift_clock_55 (.D(sck_N_375), .CK(clk_c), .Q(sck_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=14, LSE_LLINE=179, LSE_RLINE=179 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(54[3] 63[10])
    defparam shift_clock_55.GSR = "ENABLED";
    FD1P3AY shift_cnt_FSM__i0 (.D(n369[15]), .SP(clk_c_enable_28), .CK(clk_c), 
            .Q(n33[0]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(86[17:26])
    defparam shift_cnt_FSM__i0.GSR = "ENABLED";
    L6MUX21 i6267 (.D0(n7076), .D1(n7077), .SD(codeP[1]), .Z(n7078));
    LUT4 n379_bdd_4_lut_6655 (.A(n369[6]), .B(\ctrlcode595[17] ), .C(n369[7]), 
         .D(\hH[0] ), .Z(n7328)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+(D))+!B !(C (D)))) */ ;
    defparam n379_bdd_4_lut_6655.init = 16'hcffb;
    LUT4 sH_1__bdd_3_lut (.A(sH[1]), .B(sH[2]), .C(sH[0]), .Z(n7473)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;
    defparam sH_1__bdd_3_lut.init = 16'hebeb;
    LUT4 i2_3_lut (.A(n369[6]), .B(n369[7]), .C(n369[5]), .Z(n2687)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(86[17:26])
    defparam i2_3_lut.init = 16'hfefe;
    FD1P3AX din_58 (.D(din_N_365), .SP(din_N_372), .CK(clk_c), .Q(din_c)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=14, LSE_LLINE=179, LSE_RLINE=179 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(112[3] 133[10])
    defparam din_58.GSR = "ENABLED";
    LUT4 sH_1__bdd_4_lut_6464 (.A(sH[1]), .B(sH[2]), .C(sH[0]), .D(n369[6]), 
         .Z(n7474)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A !(B (C (D)))) */ ;
    defparam sH_1__bdd_4_lut_6464.init = 16'hb7fd;
    LUT4 i6367_3_lut (.A(n2687), .B(n381), .C(n369[3]), .Z(n7071)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(120[27:36])
    defparam i6367_3_lut.init = 16'hfefe;
    PFUMX i6266 (.BLUT(din_N_369), .ALUT(din_N_368), .C0(codeP[0]), .Z(n7077));
    LUT4 i6322_3_lut_4_lut (.A(n369[7]), .B(n369[6]), .C(n7672), .D(n2680), 
         .Z(n3096)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(119[27:36])
    defparam i6322_3_lut_4_lut.init = 16'hf1e0;
    LUT4 ctrlcode595_71__bdd_4_lut (.A(sL[3]), .B(sL[2]), .C(sL[0]), .D(sL[1]), 
         .Z(n7476)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A !((C (D)+!C !(D))+!B))) */ ;
    defparam ctrlcode595_71__bdd_4_lut.init = 16'h53b7;
    LUT4 i6325_3_lut_4_lut (.A(n369[7]), .B(n369[6]), .C(n7477), .D(n2576), 
         .Z(n3092)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(119[27:36])
    defparam i6325_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i5444 (.BLUT(n6942), .ALUT(n6255), .C0(codeP[0]), .Z(n6256));
    PFUMX i6265 (.BLUT(din_N_371), .ALUT(din_N_370), .C0(codeP[0]), .Z(n7076));
    LUT4 i6320_3_lut_4_lut (.A(n369[7]), .B(n369[6]), .C(n7684), .D(n7449), 
         .Z(n3094)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(119[27:36])
    defparam i6320_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1864_3_lut (.A(\ctrlcode595[68] ), .B(\ctrlcode595[69] ), .C(n369[5]), 
         .Z(n2577)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(121[27:36])
    defparam i1864_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_149 (.A(n369[15]), .B(n33[0]), .Z(n7652)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_149.init = 16'heeee;
    LUT4 i2_2_lut_3_lut (.A(n369[15]), .B(n33[0]), .C(n369[8]), .Z(n6)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'hfefe;
    LUT4 i4015_2_lut_3_lut (.A(n369[15]), .B(n33[0]), .C(n3083), .Z(din_N_370)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i4015_2_lut_3_lut.init = 16'h1010;
    LUT4 i2_3_lut_rep_150 (.A(n369[9]), .B(n369[12]), .C(n369[10]), .Z(n7653)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(118[27:36])
    defparam i2_3_lut_rep_150.init = 16'hfefe;
    PFUMX i2374 (.BLUT(n2577), .ALUT(n3092), .C0(n7052), .Z(n3090));
    LUT4 i1_2_lut_rep_128_4_lut (.A(n369[9]), .B(n369[12]), .C(n369[10]), 
         .D(n369[11]), .Z(n7631)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(118[27:36])
    defparam i1_2_lut_rep_128_4_lut.init = 16'hfffe;
    PFUMX i6269 (.BLUT(n4759), .ALUT(n14), .C0(hL[3]), .Z(n7080));
    FD1P3IX shift_cnt_FSM__i3 (.D(n369[2]), .SP(clk_c_enable_28), .CD(n3124), 
            .CK(clk_c), .Q(n369[3]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(86[17:26])
    defparam shift_cnt_FSM__i3.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i2 (.D(n369[1]), .SP(clk_c_enable_28), .CD(n3124), 
            .CK(clk_c), .Q(n369[2]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(86[17:26])
    defparam shift_cnt_FSM__i2.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i1 (.D(n33[0]), .SP(clk_c_enable_28), .CD(n3124), 
            .CK(clk_c), .Q(n369[1]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(86[17:26])
    defparam shift_cnt_FSM__i1.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i7 (.D(n369[6]), .SP(clk_c_enable_28), .CD(n3124), 
            .CK(clk_c), .Q(n369[7]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(86[17:26])
    defparam shift_cnt_FSM__i7.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i6 (.D(n369[5]), .SP(clk_c_enable_28), .CD(n3124), 
            .CK(clk_c), .Q(n369[6]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(86[17:26])
    defparam shift_cnt_FSM__i6.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i5 (.D(n381), .SP(clk_c_enable_28), .CD(n3124), 
            .CK(clk_c), .Q(n369[5]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(86[17:26])
    defparam shift_cnt_FSM__i5.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i4 (.D(n369[3]), .SP(clk_c_enable_28), .CD(n3124), 
            .CK(clk_c), .Q(n381));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(86[17:26])
    defparam shift_cnt_FSM__i4.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i9 (.D(n369[8]), .SP(clk_c_enable_28), .CD(n3124), 
            .CK(clk_c), .Q(n369[9]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(86[17:26])
    defparam shift_cnt_FSM__i9.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i8 (.D(n369[7]), .SP(clk_c_enable_28), .CD(n3124), 
            .CK(clk_c), .Q(n369[8]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(86[17:26])
    defparam shift_cnt_FSM__i8.GSR = "ENABLED";
    LUT4 mH_2__bdd_4_lut_6515 (.A(mH[2]), .B(mH[0]), .C(n381), .D(mH[1]), 
         .Z(n7493)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !((C (D))+!B))) */ ;
    defparam mH_2__bdd_4_lut_6515.init = 16'h7391;
    FD1P3IX shift_cnt_FSM__i10 (.D(n369[9]), .SP(clk_c_enable_28), .CD(n3124), 
            .CK(clk_c), .Q(n369[10]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(86[17:26])
    defparam shift_cnt_FSM__i10.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i31 (.D(n133[31]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i31.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i15 (.D(n369[14]), .SP(clk_c_enable_28), .CD(n3124), 
            .CK(clk_c), .Q(n369[15]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(86[17:26])
    defparam shift_cnt_FSM__i15.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i14 (.D(n369[13]), .SP(clk_c_enable_28), .CD(n3124), 
            .CK(clk_c), .Q(n369[14]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(86[17:26])
    defparam shift_cnt_FSM__i14.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i13 (.D(n369[12]), .SP(clk_c_enable_28), .CD(n3124), 
            .CK(clk_c), .Q(n369[13]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(86[17:26])
    defparam shift_cnt_FSM__i13.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i12 (.D(n369[11]), .SP(clk_c_enable_28), .CD(n3124), 
            .CK(clk_c), .Q(n369[12]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(86[17:26])
    defparam shift_cnt_FSM__i12.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i11 (.D(n369[10]), .SP(clk_c_enable_28), .CD(n3124), 
            .CK(clk_c), .Q(n369[11]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(86[17:26])
    defparam shift_cnt_FSM__i11.GSR = "ENABLED";
    PFUMX i2370 (.BLUT(n2681), .ALUT(n3096), .C0(n7052), .Z(n3086));
    LUT4 sH_2__bdd_4_lut_6642 (.A(sH[2]), .B(sH[0]), .C(n381), .D(sH[1]), 
         .Z(n7494)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !((C (D))+!B))) */ ;
    defparam sH_2__bdd_4_lut_6642.init = 16'h7391;
    PFUMX i2372 (.BLUT(n2588), .ALUT(n3094), .C0(n7052), .Z(n3088));
    LUT4 i3844_2_lut (.A(n33[0]), .B(rst_key_state), .Z(rck_c)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(97[3] 103[10])
    defparam i3844_2_lut.init = 16'heeee;
    PFUMX i1958 (.BLUT(n1348[0]), .ALUT(n2666), .C0(n7071), .Z(n2672));
    FD1S3IX shift_clock_cnt_1589__i30 (.D(n133[30]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i30.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i29 (.D(n133[29]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i29.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i28 (.D(n133[28]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i28.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i27 (.D(n133[27]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i27.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i26 (.D(n133[26]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i26.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i25 (.D(n133[25]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i25.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i24 (.D(n133[24]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i24.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i23 (.D(n133[23]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i23.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i22 (.D(n133[22]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i22.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i21 (.D(n133[21]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i21.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i20 (.D(n133[20]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i20.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i19 (.D(n133[19]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i19.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i18 (.D(n133[18]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i18.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i17 (.D(n133[17]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i17.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i16 (.D(n133[16]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i16.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i15 (.D(n133[15]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i15.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i14 (.D(n133[14]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i14.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i13 (.D(n133[13]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i13.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i12 (.D(n133[12]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i12.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i11 (.D(n133[11]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i11.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i10 (.D(n133[10]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i10.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i9 (.D(n133[9]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i9.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i8 (.D(n133[8]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i8.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i7 (.D(n133[7]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i7.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i6 (.D(n133[6]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i6.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i5 (.D(n133[5]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i5.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i4 (.D(n133[4]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i4.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i3 (.D(n133[3]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i3.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i2 (.D(n133[2]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i2.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_1589__i1 (.D(n133[1]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i1.GSR = "ENABLED";
    PFUMX i1974 (.BLUT(n1963[0]), .ALUT(n1977[0]), .C0(n7071), .Z(n2688));
    LUT4 i1_3_lut_4_lut (.A(n369[13]), .B(n7621), .C(n6256), .D(n33[0]), 
         .Z(n4)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(120[27:36])
    defparam i1_3_lut_4_lut.init = 16'h00fe;
    FD1S3IX shift_clock_cnt_1589__i0 (.D(n133[0]), .CK(clk_c), .CD(n3123), 
            .Q(shift_clock_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589__i0.GSR = "ENABLED";
    FD1P3IX codeP__i2 (.D(n6782), .SP(clk_c_enable_57), .CD(n2337), .CK(clk_c), 
            .Q(codeP[2])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=14, LSE_LLINE=179, LSE_RLINE=179 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(112[3] 133[10])
    defparam codeP__i2.GSR = "DISABLED";
    FD1P3IX codeP__i1 (.D(n3), .SP(clk_c_enable_57), .CD(n2337), .CK(clk_c), 
            .Q(codeP[1])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=14, LSE_LLINE=179, LSE_RLINE=179 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(112[3] 133[10])
    defparam codeP__i1.GSR = "DISABLED";
    CCU2D shift_clock_cnt_1589_add_4_33 (.A0(shift_clock_cnt[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5982), .S0(n133[31]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589_add_4_33.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_33.INIT1 = 16'h0000;
    defparam shift_clock_cnt_1589_add_4_33.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1589_add_4_33.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_1589_add_4_31 (.A0(shift_clock_cnt[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5981), .COUT(n5982), .S0(n133[29]), 
          .S1(n133[30]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589_add_4_31.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_31.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_31.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1589_add_4_31.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_1589_add_4_29 (.A0(shift_clock_cnt[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5980), .COUT(n5981), .S0(n133[27]), 
          .S1(n133[28]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589_add_4_29.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_29.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_29.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1589_add_4_29.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_1589_add_4_27 (.A0(shift_clock_cnt[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5979), .COUT(n5980), .S0(n133[25]), 
          .S1(n133[26]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589_add_4_27.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_27.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_27.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1589_add_4_27.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_1589_add_4_25 (.A0(shift_clock_cnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5978), .COUT(n5979), .S0(n133[23]), 
          .S1(n133[24]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589_add_4_25.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_25.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_25.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1589_add_4_25.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_1589_add_4_23 (.A0(shift_clock_cnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5977), .COUT(n5978), .S0(n133[21]), 
          .S1(n133[22]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589_add_4_23.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_23.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_23.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1589_add_4_23.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_1589_add_4_21 (.A0(shift_clock_cnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5976), .COUT(n5977), .S0(n133[19]), 
          .S1(n133[20]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589_add_4_21.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_21.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_21.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1589_add_4_21.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_1589_add_4_19 (.A0(shift_clock_cnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5975), .COUT(n5976), .S0(n133[17]), 
          .S1(n133[18]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589_add_4_19.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_19.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_19.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1589_add_4_19.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_1589_add_4_17 (.A0(shift_clock_cnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5974), .COUT(n5975), .S0(n133[15]), 
          .S1(n133[16]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589_add_4_17.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_17.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_17.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1589_add_4_17.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_1589_add_4_15 (.A0(shift_clock_cnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5973), .COUT(n5974), .S0(n133[13]), 
          .S1(n133[14]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589_add_4_15.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_15.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_15.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1589_add_4_15.INJECT1_1 = "NO";
    LUT4 i1984_3_lut (.A(n7494), .B(n7475), .C(n2687), .Z(n1977[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(122[27:36])
    defparam i1984_3_lut.init = 16'hcaca;
    CCU2D shift_clock_cnt_1589_add_4_13 (.A0(shift_clock_cnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5972), .COUT(n5973), .S0(n133[11]), 
          .S1(n133[12]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589_add_4_13.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_13.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_13.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1589_add_4_13.INJECT1_1 = "NO";
    LUT4 i1953_3_lut (.A(n7493), .B(n7472), .C(n2687), .Z(n2666)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(120[27:36])
    defparam i1953_3_lut.init = 16'hcaca;
    CCU2D shift_clock_cnt_1589_add_4_11 (.A0(shift_clock_cnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5971), .COUT(n5972), .S0(n133[9]), 
          .S1(n133[10]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(58[21:36])
    defparam shift_clock_cnt_1589_add_4_11.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_11.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_1589_add_4_11.INJECT1_0 = "NO";
    defparam shift_clock_cnt_1589_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_116_3_lut (.A(n369[11]), .B(n7653), .C(n369[13]), 
         .Z(n7619)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(117[27:36])
    defparam i1_2_lut_rep_116_3_lut.init = 16'hfefe;
    LUT4 i15_3_lut (.A(codeP[0]), .B(codeP[2]), .C(codeP[1]), .Z(n6782)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(129[14:19])
    defparam i15_3_lut.init = 16'h6c6c;
    LUT4 i3848_4_lut_4_lut (.A(n33[0]), .B(n7631), .C(n2673), .D(n7621), 
         .Z(din_N_368)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(86[17:26])
    defparam i3848_4_lut_4_lut.init = 16'h5554;
    LUT4 i1380_2_lut (.A(codeP[0]), .B(codeP[1]), .Z(n3)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(129[14:19])
    defparam i1380_2_lut.init = 16'h6666;
    LUT4 i6317_3_lut_4_lut (.A(mH[0]), .B(mH[1]), .C(mH[2]), .D(n369[2]), 
         .Z(n1348[0])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(120[27:36])
    defparam i6317_3_lut_4_lut.init = 16'h717c;
    LUT4 i6315_3_lut_4_lut (.A(sH[0]), .B(sH[1]), .C(sH[2]), .D(n369[2]), 
         .Z(n1963[0])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(122[27:36])
    defparam i6315_3_lut_4_lut.init = 16'h717c;
    LUT4 i1863_3_lut (.A(n7678), .B(\ctrlcode595[67] ), .C(n369[3]), .Z(n2576)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(121[27:36])
    defparam i1863_3_lut.init = 16'hcaca;
    PFUMX i6442 (.BLUT(n7448), .ALUT(\ctrlcode595[3] ), .C0(n369[3]), 
          .Z(n7449));
    LUT4 i6329_4_lut (.A(n7329), .B(n3082), .C(n381), .D(n6102), .Z(n3083)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam i6329_4_lut.init = 16'hccca;
    LUT4 i1966_3_lut (.A(n7681), .B(\ctrlcode595[35] ), .C(n369[3]), .Z(n2680)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(119[27:36])
    defparam i1966_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut (.A(n369[2]), .B(n369[3]), .C(n7652), .D(n369[1]), 
         .Z(n6102)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_129 (.A(n369[8]), .B(n369[14]), .Z(n7632)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(120[27:36])
    defparam i1_2_lut_rep_129.init = 16'heeee;
    LUT4 i1_2_lut_rep_106_3_lut_4_lut (.A(n369[8]), .B(n369[14]), .C(n369[13]), 
         .D(n369[15]), .Z(n7609)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(120[27:36])
    defparam i1_2_lut_rep_106_3_lut_4_lut.init = 16'hfffe;
    LUT4 i6313_3_lut_then_4_lut (.A(n369[7]), .B(mL[3]), .C(mL[0]), .D(mL[2]), 
         .Z(n7671)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A !(B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(119[27:36])
    defparam i6313_3_lut_then_4_lut.init = 16'hba3f;
    LUT4 i6313_3_lut_else_4_lut (.A(n369[7]), .B(mL[3]), .C(mL[0]), .D(mL[2]), 
         .Z(n7670)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)+!C !(D)))+!A !(B (C+!(D))+!B !(C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(119[27:36])
    defparam i6313_3_lut_else_4_lut.init = 16'h69df;
    LUT4 i1_2_lut_rep_118_3_lut (.A(n369[8]), .B(n369[14]), .C(n369[15]), 
         .Z(n7621)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(120[27:36])
    defparam i1_2_lut_rep_118_3_lut.init = 16'hfefe;
    LUT4 sck_I_0_69_2_lut_rep_130 (.A(sck_c), .B(shift_clock_ls), .Z(clk_c_enable_28)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(82[8:46])
    defparam sck_I_0_69_2_lut_rep_130.init = 16'h2222;
    LUT4 i6371_4_lut (.A(n369[7]), .B(n369[6]), .C(n369[5]), .D(n381), 
         .Z(n7052)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(119[27:36])
    defparam i6371_4_lut.init = 16'heeef;
    LUT4 i6273_then_4_lut (.A(n369[2]), .B(sL[3]), .C(sL[1]), .D(sL[2]), 
         .Z(n7677)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B+!(C (D)+!C !(D)))) */ ;
    defparam i6273_then_4_lut.init = 16'hc7dc;
    LUT4 i6273_else_4_lut (.A(n369[2]), .B(sL[3]), .C(sL[1]), .D(sL[2]), 
         .Z(n7676)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+!(D))+!B (C+(D)))) */ ;
    defparam i6273_else_4_lut.init = 16'hfbde;
    LUT4 i6276_then_4_lut (.A(n369[2]), .B(mL[3]), .C(mL[1]), .D(mL[2]), 
         .Z(n7680)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B+!(C (D)+!C !(D)))) */ ;
    defparam i6276_then_4_lut.init = 16'hc7dc;
    LUT4 i6276_else_4_lut (.A(n369[2]), .B(mL[3]), .C(mL[1]), .D(mL[2]), 
         .Z(n7679)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+!(D))+!B (C+(D)))) */ ;
    defparam i6276_else_4_lut.init = 16'hfbde;
    LUT4 i6454_then_4_lut (.A(n369[7]), .B(hL[3]), .C(hL[1]), .D(hL[0]), 
         .Z(n7683)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A !(B (C+!(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam i6454_then_4_lut.init = 16'hb6a9;
    LUT4 i6454_else_4_lut (.A(n369[7]), .B(hL[3]), .C(hL[1]), .D(hL[0]), 
         .Z(n7682)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D)))+!A (B (C (D))))) */ ;
    defparam i6454_else_4_lut.init = 16'h3dff;
    LUT4 i1_2_lut (.A(sck_c), .B(n3123), .Z(sck_N_375)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i1945_4_lut (.A(\ctrlcode595[17] ), .B(\hH[0] ), .C(n369[3]), 
         .D(n369[2]), .Z(n2658)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C+(D))))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(118[27:36])
    defparam i1945_4_lut.init = 16'h313a;
    LUT4 i6393_4_lut (.A(n49), .B(n7159), .C(n58), .D(n50), .Z(n3123)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(59[8:25])
    defparam i6393_4_lut.init = 16'h0004;
    LUT4 i2409_2_lut_3_lut (.A(sck_c), .B(shift_clock_ls), .C(n369[15]), 
         .Z(n3124)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(82[8:46])
    defparam i2409_2_lut_3_lut.init = 16'h2020;
    LUT4 mH_1__bdd_4_lut_6508 (.A(mH[1]), .B(mH[2]), .C(mH[0]), .D(n369[6]), 
         .Z(n7471)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A !(B (C (D)))) */ ;
    defparam mH_1__bdd_4_lut_6508.init = 16'hb7fd;
    LUT4 i17_4_lut (.A(shift_clock_cnt[0]), .B(shift_clock_cnt[18]), .C(shift_clock_cnt[28]), 
         .D(shift_clock_cnt[2]), .Z(n49)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(59[8:25])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i6392_4_lut (.A(n41), .B(n60), .C(n54), .D(n42), .Z(n7159)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(59[8:25])
    defparam i6392_4_lut.init = 16'h0001;
    LUT4 i3_4_lut_adj_8 (.A(clk_c_enable_57), .B(codeP[0]), .C(codeP[1]), 
         .D(codeP[2]), .Z(n2337)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_8.init = 16'h0800;
    LUT4 i1854_2_lut (.A(codeP[0]), .B(clk_c_enable_57), .Z(n12[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(112[3] 133[10])
    defparam i1854_2_lut.init = 16'h6666;
    PFUMX i6452 (.BLUT(n7476), .ALUT(\ctrlcode595[71] ), .C0(n369[7]), 
          .Z(n7477));
    LUT4 i1875_3_lut (.A(\ctrlcode595[4] ), .B(\ctrlcode595[5] ), .C(n369[5]), 
         .Z(n2588)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(117[27:36])
    defparam i1875_3_lut.init = 16'hcaca;
    PFUMX i6450 (.BLUT(n7474), .ALUT(n7473), .C0(n369[7]), .Z(n7475));
    LUT4 i26_4_lut (.A(n51), .B(n39), .C(shift_clock_cnt[1]), .D(shift_clock_cnt[4]), 
         .Z(n58)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(59[8:25])
    defparam i26_4_lut.init = 16'hffef;
    LUT4 i18_4_lut (.A(shift_clock_cnt[8]), .B(shift_clock_cnt[11]), .C(shift_clock_cnt[16]), 
         .D(shift_clock_cnt[21]), .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(59[8:25])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i1967_3_lut (.A(\ctrlcode595[36] ), .B(\ctrlcode595[37] ), .C(n369[5]), 
         .Z(n2681)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(119[27:36])
    defparam i1967_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_adj_9 (.A(sck_c), .B(rst_key_state), .C(n369[15]), .D(shift_clock_ls), 
         .Z(clk_c_enable_57)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(115[8:46])
    defparam i3_4_lut_adj_9.init = 16'h1000;
    LUT4 i9_2_lut (.A(shift_clock_cnt[27]), .B(shift_clock_cnt[30]), .Z(n41)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(59[8:25])
    defparam i9_2_lut.init = 16'heeee;
    LUT4 mH_1__bdd_3_lut (.A(mH[1]), .B(mH[2]), .C(mH[0]), .Z(n7470)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;
    defparam mH_1__bdd_3_lut.init = 16'hebeb;
    LUT4 i28_4_lut (.A(shift_clock_cnt[10]), .B(n56), .C(n46), .D(shift_clock_cnt[20]), 
         .Z(n60)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(59[8:25])
    defparam i28_4_lut.init = 16'hfffe;
    LUT4 i22_4_lut (.A(shift_clock_cnt[19]), .B(shift_clock_cnt[5]), .C(shift_clock_cnt[22]), 
         .D(shift_clock_cnt[6]), .Z(n54)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(59[8:25])
    defparam i22_4_lut.init = 16'hfffe;
    PFUMX i6448 (.BLUT(n7471), .ALUT(n7470), .C0(n369[7]), .Z(n7472));
    LUT4 i10_2_lut (.A(shift_clock_cnt[7]), .B(shift_clock_cnt[14]), .Z(n42)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(59[8:25])
    defparam i10_2_lut.init = 16'heeee;
    LUT4 i24_4_lut (.A(shift_clock_cnt[29]), .B(shift_clock_cnt[3]), .C(shift_clock_cnt[13]), 
         .D(shift_clock_cnt[31]), .Z(n56)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(59[8:25])
    defparam i24_4_lut.init = 16'hfffe;
    LUT4 i14_2_lut (.A(shift_clock_cnt[15]), .B(shift_clock_cnt[23]), .Z(n46)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(59[8:25])
    defparam i14_2_lut.init = 16'heeee;
    LUT4 i19_4_lut (.A(shift_clock_cnt[25]), .B(shift_clock_cnt[9]), .C(shift_clock_cnt[26]), 
         .D(shift_clock_cnt[12]), .Z(n51)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(59[8:25])
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i7_2_lut (.A(shift_clock_cnt[17]), .B(shift_clock_cnt[24]), .Z(n39)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(59[8:25])
    defparam i7_2_lut.init = 16'heeee;
    LUT4 i3_4_lut_adj_10 (.A(n3088), .B(n6), .C(n7619), .D(n369[14]), 
         .Z(din_N_371)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(117[27:36])
    defparam i3_4_lut_adj_10.init = 16'hfcfe;
    LUT4 i1_3_lut (.A(n2688), .B(n7653), .C(n369[11]), .Z(n6255)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(122[27:36])
    defparam i1_3_lut.init = 16'hcece;
    LUT4 i2_4_lut (.A(n6940), .B(n3090), .C(n369[12]), .D(n369[10]), 
         .Z(n6942)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(117[27:36])
    defparam i2_4_lut.init = 16'hfafe;
    LUT4 i4_4_lut (.A(n369[10]), .B(n6940), .C(n7609), .D(n6_adj_377), 
         .Z(din_N_369)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(118[27:36])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 din_I_6_2_lut (.A(sck_c), .B(shift_clock_ls), .Z(din_N_372)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(115[8:46])
    defparam din_I_6_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_adj_11 (.A(n369[11]), .B(n369[9]), .Z(n6940)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(118[27:36])
    defparam i1_2_lut_adj_11.init = 16'heeee;
    LUT4 codeP_2__I_0_i7_4_lut (.A(n7078), .B(codeP[1]), .C(codeP[2]), 
         .D(n4), .Z(din_N_365)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(116[5] 124[14])
    defparam codeP_2__I_0_i7_4_lut.init = 16'h3a0a;
    LUT4 n7080_bdd_4_lut_6461 (.A(hL[1]), .B(hL[0]), .C(hL[3]), .D(hL[2]), 
         .Z(n7447)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A (B (C+(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam n7080_bdd_4_lut_6461.init = 16'he7fa;
    PFUMX i6543 (.BLUT(n7682), .ALUT(n7683), .C0(hL[2]), .Z(n7684));
    LUT4 i1_3_lut_adj_12 (.A(n3086), .B(n33[0]), .C(n369[12]), .Z(n6_adj_377)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/datato595.vhd(118[27:36])
    defparam i1_3_lut_adj_12.init = 16'hcece;
    PFUMX i6541 (.BLUT(n7679), .ALUT(n7680), .C0(mL[0]), .Z(n7681));
    PFUMX i6539 (.BLUT(n7676), .ALUT(n7677), .C0(sL[0]), .Z(n7678));
    PFUMX i6535 (.BLUT(n7670), .ALUT(n7671), .C0(mL[1]), .Z(n7672));
    LUT4 n7447_bdd_3_lut (.A(n7447), .B(n7080), .C(n369[2]), .Z(n7448)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n7447_bdd_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module CycleSampler_U0
//

module CycleSampler_U0 (clk_c, rst_key_state, GND_net, rst_key_c, n612);
    input clk_c;
    output rst_key_state;
    input GND_net;
    input rst_key_c;
    output n612;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(11[3:6])
    
    wire keysamplerpulse, keysamplerpulse_N_144, keysamplerpulse_ls, keystate_N_142;
    wire [2:0]keystore;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(21[9:17])
    
    wire keystore_2__N_139, btnstate_N_138;
    wire [31:0]keysamplerpulsecnt;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(18[9:27])
    wire [31:0]n133;
    
    wire n5903, n3118, n5918, n5917, n5916, n5915, n5914, n5913, 
        n5912, n5911, n5910, n5909, n5908, n5907, n5906, n5905, 
        n5904, n49, n50, n45, n40, n7031, n29, n48, n42, n30, 
        n7003, n44, n34;
    
    FD1S3AX keysamplerpulse_31 (.D(keysamplerpulse_N_144), .CK(clk_c), .Q(keysamplerpulse)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=9, LSE_RCOL=21, LSE_LLINE=161, LSE_RLINE=161 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(28[3] 34[10])
    defparam keysamplerpulse_31.GSR = "DISABLED";
    FD1S3AX keysamplerpulse_ls_32 (.D(keysamplerpulse), .CK(clk_c), .Q(keysamplerpulse_ls)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=9, LSE_RCOL=21, LSE_LLINE=161, LSE_RLINE=161 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(40[3] 42[10])
    defparam keysamplerpulse_ls_32.GSR = "DISABLED";
    FD1S3AX keystate_34 (.D(keystate_N_142), .CK(clk_c), .Q(rst_key_state)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=9, LSE_RCOL=21, LSE_LLINE=161, LSE_RLINE=161 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(48[3] 55[10])
    defparam keystate_34.GSR = "DISABLED";
    FD1P3AX keystore_i0_i0 (.D(btnstate_N_138), .SP(keystore_2__N_139), 
            .CK(clk_c), .Q(keystore[0])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=9, LSE_RCOL=21, LSE_LLINE=161, LSE_RLINE=161 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(48[3] 55[10])
    defparam keystore_i0_i0.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_1579_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n5903), .S1(n133[0]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579_add_4_1.INIT0 = 16'hF000;
    defparam keysamplerpulsecnt_1579_add_4_1.INIT1 = 16'h0555;
    defparam keysamplerpulsecnt_1579_add_4_1.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1579_add_4_1.INJECT1_1 = "NO";
    FD1S3IX keysamplerpulsecnt_1579__i0 (.D(n133[0]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i0.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i31 (.D(n133[31]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i31.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i30 (.D(n133[30]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i30.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i29 (.D(n133[29]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i29.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i28 (.D(n133[28]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i28.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i27 (.D(n133[27]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i27.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i26 (.D(n133[26]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i26.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i25 (.D(n133[25]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i25.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i24 (.D(n133[24]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i24.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i23 (.D(n133[23]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i23.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i22 (.D(n133[22]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i22.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i21 (.D(n133[21]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i21.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i20 (.D(n133[20]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i20.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i19 (.D(n133[19]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i19.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i18 (.D(n133[18]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i18.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i17 (.D(n133[17]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i17.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i16 (.D(n133[16]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i16.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i15 (.D(n133[15]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i15.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i14 (.D(n133[14]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i14.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i13 (.D(n133[13]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i13.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i12 (.D(n133[12]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i12.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i11 (.D(n133[11]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i11.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i10 (.D(n133[10]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i10.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i9 (.D(n133[9]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i9.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i8 (.D(n133[8]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i8.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i7 (.D(n133[7]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i7.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i6 (.D(n133[6]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i6.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i5 (.D(n133[5]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i5.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i4 (.D(n133[4]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i4.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i3 (.D(n133[3]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i3.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i2 (.D(n133[2]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i2.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1579__i1 (.D(n133[1]), .CK(clk_c), .CD(n3118), 
            .Q(keysamplerpulsecnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579__i1.GSR = "DISABLED";
    FD1P3AX keystore_i0_i2 (.D(keystore[1]), .SP(keystore_2__N_139), .CK(clk_c), 
            .Q(keystore[2])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=9, LSE_RCOL=21, LSE_LLINE=161, LSE_RLINE=161 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(48[3] 55[10])
    defparam keystore_i0_i2.GSR = "DISABLED";
    FD1P3AX keystore_i0_i1 (.D(keystore[0]), .SP(keystore_2__N_139), .CK(clk_c), 
            .Q(keystore[1])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=9, LSE_RCOL=21, LSE_LLINE=161, LSE_RLINE=161 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(48[3] 55[10])
    defparam keystore_i0_i1.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_1579_add_4_33 (.A0(keysamplerpulsecnt[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5918), .S0(n133[31]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579_add_4_33.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_33.INIT1 = 16'h0000;
    defparam keysamplerpulsecnt_1579_add_4_33.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1579_add_4_33.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1579_add_4_31 (.A0(keysamplerpulsecnt[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5917), .COUT(n5918), .S0(n133[29]), 
          .S1(n133[30]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579_add_4_31.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_31.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_31.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1579_add_4_31.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1579_add_4_29 (.A0(keysamplerpulsecnt[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5916), .COUT(n5917), .S0(n133[27]), 
          .S1(n133[28]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579_add_4_29.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_29.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_29.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1579_add_4_29.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1579_add_4_27 (.A0(keysamplerpulsecnt[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5915), .COUT(n5916), .S0(n133[25]), 
          .S1(n133[26]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579_add_4_27.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_27.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_27.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1579_add_4_27.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1579_add_4_25 (.A0(keysamplerpulsecnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5914), .COUT(n5915), .S0(n133[23]), 
          .S1(n133[24]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579_add_4_25.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_25.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_25.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1579_add_4_25.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1579_add_4_23 (.A0(keysamplerpulsecnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5913), .COUT(n5914), .S0(n133[21]), 
          .S1(n133[22]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579_add_4_23.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_23.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_23.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1579_add_4_23.INJECT1_1 = "NO";
    LUT4 keysamplerpulse_I_0_37_2_lut (.A(keysamplerpulse), .B(keysamplerpulse_ls), 
         .Z(keystore_2__N_139)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(49[8:54])
    defparam keysamplerpulse_I_0_37_2_lut.init = 16'h2222;
    CCU2D keysamplerpulsecnt_1579_add_4_21 (.A0(keysamplerpulsecnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5912), .COUT(n5913), .S0(n133[19]), 
          .S1(n133[20]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579_add_4_21.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_21.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_21.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1579_add_4_21.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1579_add_4_19 (.A0(keysamplerpulsecnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5911), .COUT(n5912), .S0(n133[17]), 
          .S1(n133[18]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579_add_4_19.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_19.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_19.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1579_add_4_19.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1579_add_4_17 (.A0(keysamplerpulsecnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5910), .COUT(n5911), .S0(n133[15]), 
          .S1(n133[16]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579_add_4_17.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_17.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_17.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1579_add_4_17.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1579_add_4_15 (.A0(keysamplerpulsecnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5909), .COUT(n5910), .S0(n133[13]), 
          .S1(n133[14]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579_add_4_15.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_15.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_15.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1579_add_4_15.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1579_add_4_13 (.A0(keysamplerpulsecnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5908), .COUT(n5909), .S0(n133[11]), 
          .S1(n133[12]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579_add_4_13.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_13.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_13.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1579_add_4_13.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1579_add_4_11 (.A0(keysamplerpulsecnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5907), .COUT(n5908), .S0(n133[9]), 
          .S1(n133[10]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579_add_4_11.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_11.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_11.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1579_add_4_11.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1579_add_4_9 (.A0(keysamplerpulsecnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5906), .COUT(n5907), .S0(n133[7]), 
          .S1(n133[8]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579_add_4_9.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_9.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_9.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1579_add_4_9.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1579_add_4_7 (.A0(keysamplerpulsecnt[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5905), .COUT(n5906), .S0(n133[5]), 
          .S1(n133[6]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579_add_4_7.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_7.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_7.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1579_add_4_7.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1579_add_4_5 (.A0(keysamplerpulsecnt[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5904), .COUT(n5905), .S0(n133[3]), 
          .S1(n133[4]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579_add_4_5.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_5.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_5.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1579_add_4_5.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1579_add_4_3 (.A0(keysamplerpulsecnt[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5903), .COUT(n5904), .S0(n133[1]), 
          .S1(n133[2]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1579_add_4_3.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_3.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1579_add_4_3.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1579_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(keysamplerpulse), .B(n3118), .Z(keysamplerpulse_N_144)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i6352_4_lut (.A(keysamplerpulsecnt[10]), .B(n49), .C(keysamplerpulsecnt[12]), 
         .D(n50), .Z(n3118)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i6352_4_lut.init = 16'h0020;
    LUT4 btnstate_I_0_1_lut (.A(rst_key_c), .Z(btnstate_N_138)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(52[18:30])
    defparam btnstate_I_0_1_lut.init = 16'h5555;
    LUT4 i23_4_lut (.A(n45), .B(keysamplerpulsecnt[31]), .C(n40), .D(n7031), 
         .Z(n49)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i23_4_lut.init = 16'hfeff;
    LUT4 i24_4_lut (.A(n29), .B(n48), .C(n42), .D(n30), .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i24_4_lut.init = 16'hfffe;
    LUT4 i19_4_lut (.A(keysamplerpulsecnt[23]), .B(keysamplerpulsecnt[13]), 
         .C(keysamplerpulsecnt[29]), .D(keysamplerpulsecnt[3]), .Z(n45)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i14_4_lut (.A(keysamplerpulsecnt[0]), .B(keysamplerpulsecnt[18]), 
         .C(keysamplerpulsecnt[28]), .D(keysamplerpulsecnt[2]), .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i6219_4_lut (.A(keysamplerpulsecnt[14]), .B(keysamplerpulsecnt[15]), 
         .C(keysamplerpulsecnt[6]), .D(n7003), .Z(n7031)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6219_4_lut.init = 16'h8000;
    LUT4 i3_2_lut (.A(keysamplerpulsecnt[8]), .B(keysamplerpulsecnt[11]), 
         .Z(n29)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i213_1_lut (.A(rst_key_state), .Z(n612)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(48[3] 55[10])
    defparam i213_1_lut.init = 16'h5555;
    LUT4 i22_4_lut (.A(keysamplerpulsecnt[1]), .B(n44), .C(n34), .D(keysamplerpulsecnt[4]), 
         .Z(n48)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i22_4_lut.init = 16'hfffe;
    LUT4 i16_4_lut (.A(keysamplerpulsecnt[26]), .B(keysamplerpulsecnt[17]), 
         .C(keysamplerpulsecnt[9]), .D(keysamplerpulsecnt[24]), .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i4_2_lut (.A(keysamplerpulsecnt[21]), .B(keysamplerpulsecnt[25]), 
         .Z(n30)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i18_4_lut (.A(keysamplerpulsecnt[19]), .B(keysamplerpulsecnt[5]), 
         .C(keysamplerpulsecnt[22]), .D(keysamplerpulsecnt[20]), .Z(n44)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i8_2_lut (.A(keysamplerpulsecnt[27]), .B(keysamplerpulsecnt[30]), 
         .Z(n34)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i8_2_lut.init = 16'heeee;
    LUT4 i6191_2_lut (.A(keysamplerpulsecnt[16]), .B(keysamplerpulsecnt[7]), 
         .Z(n7003)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6191_2_lut.init = 16'h8888;
    LUT4 i2_3_lut (.A(keystore[2]), .B(keystore[1]), .C(keystore[0]), 
         .Z(keystate_N_142)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(54[14:57])
    defparam i2_3_lut.init = 16'h8080;
    
endmodule
//
// Verilog Description of module ClockDivider
//

module ClockDivider (sec, clk_c, GND_net, sec_ls, clk_c_enable_53, 
            n8077, n7, clk_c_enable_50, n6828, clk_c_enable_60);
    output sec;
    input clk_c;
    input GND_net;
    input sec_ls;
    output clk_c_enable_53;
    input n8077;
    input n7;
    output clk_c_enable_50;
    input n6828;
    output clk_c_enable_60;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(11[3:6])
    
    wire clk_out_N_68, n5891;
    wire [31:0]seccnt;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(17[9:15])
    wire [31:0]n133;
    
    wire n5892, n5902, n5890, n5901, n40, n32, n7019, n6961, 
        n7033, n38, n28, n42, n3117, n5900, n5899, n5889, n5898, 
        n36, n5888, n5897, n24, n5896, n5887, n5895, n5894, 
        n5893, n43, n44;
    
    FD1S3AX sec_16 (.D(clk_out_N_68), .CK(clk_c), .Q(sec)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=28, LSE_LCOL=12, LSE_RCOL=24, LSE_LLINE=158, LSE_RLINE=158 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(22[3] 31[10])
    defparam sec_16.GSR = "ENABLED";
    CCU2D seccnt_1578_add_4_11 (.A0(seccnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5891), .COUT(n5892), .S0(n133[9]), .S1(n133[10]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578_add_4_11.INIT0 = 16'hfaaa;
    defparam seccnt_1578_add_4_11.INIT1 = 16'hfaaa;
    defparam seccnt_1578_add_4_11.INJECT1_0 = "NO";
    defparam seccnt_1578_add_4_11.INJECT1_1 = "NO";
    CCU2D seccnt_1578_add_4_33 (.A0(seccnt[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5902), .S0(n133[31]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578_add_4_33.INIT0 = 16'hfaaa;
    defparam seccnt_1578_add_4_33.INIT1 = 16'h0000;
    defparam seccnt_1578_add_4_33.INJECT1_0 = "NO";
    defparam seccnt_1578_add_4_33.INJECT1_1 = "NO";
    CCU2D seccnt_1578_add_4_9 (.A0(seccnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5890), .COUT(n5891), .S0(n133[7]), .S1(n133[8]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578_add_4_9.INIT0 = 16'hfaaa;
    defparam seccnt_1578_add_4_9.INIT1 = 16'hfaaa;
    defparam seccnt_1578_add_4_9.INJECT1_0 = "NO";
    defparam seccnt_1578_add_4_9.INJECT1_1 = "NO";
    CCU2D seccnt_1578_add_4_31 (.A0(seccnt[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5901), .COUT(n5902), .S0(n133[29]), .S1(n133[30]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578_add_4_31.INIT0 = 16'hfaaa;
    defparam seccnt_1578_add_4_31.INIT1 = 16'hfaaa;
    defparam seccnt_1578_add_4_31.INJECT1_0 = "NO";
    defparam seccnt_1578_add_4_31.INJECT1_1 = "NO";
    LUT4 i17_4_lut (.A(seccnt[29]), .B(seccnt[3]), .C(seccnt[13]), .D(seccnt[31]), 
         .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(27[8:22])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i9_2_lut (.A(seccnt[6]), .B(seccnt[23]), .Z(n32)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(27[8:22])
    defparam i9_2_lut.init = 16'heeee;
    LUT4 i6221_4_lut (.A(seccnt[8]), .B(n7019), .C(n6961), .D(seccnt[16]), 
         .Z(n7033)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6221_4_lut.init = 16'h8000;
    LUT4 i19_4_lut (.A(seccnt[26]), .B(n38), .C(n28), .D(seccnt[9]), 
         .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(27[8:22])
    defparam i19_4_lut.init = 16'hfffe;
    FD1S3IX seccnt_1578__i0 (.D(n133[0]), .CK(clk_c), .CD(n3117), .Q(seccnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i0.GSR = "ENABLED";
    CCU2D seccnt_1578_add_4_29 (.A0(seccnt[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5900), .COUT(n5901), .S0(n133[27]), .S1(n133[28]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578_add_4_29.INIT0 = 16'hfaaa;
    defparam seccnt_1578_add_4_29.INIT1 = 16'hfaaa;
    defparam seccnt_1578_add_4_29.INJECT1_0 = "NO";
    defparam seccnt_1578_add_4_29.INJECT1_1 = "NO";
    CCU2D seccnt_1578_add_4_27 (.A0(seccnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5899), .COUT(n5900), .S0(n133[25]), .S1(n133[26]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578_add_4_27.INIT0 = 16'hfaaa;
    defparam seccnt_1578_add_4_27.INIT1 = 16'hfaaa;
    defparam seccnt_1578_add_4_27.INJECT1_0 = "NO";
    defparam seccnt_1578_add_4_27.INJECT1_1 = "NO";
    CCU2D seccnt_1578_add_4_7 (.A0(seccnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5889), .COUT(n5890), .S0(n133[5]), .S1(n133[6]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578_add_4_7.INIT0 = 16'hfaaa;
    defparam seccnt_1578_add_4_7.INIT1 = 16'hfaaa;
    defparam seccnt_1578_add_4_7.INJECT1_0 = "NO";
    defparam seccnt_1578_add_4_7.INJECT1_1 = "NO";
    CCU2D seccnt_1578_add_4_25 (.A0(seccnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5898), .COUT(n5899), .S0(n133[23]), .S1(n133[24]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578_add_4_25.INIT0 = 16'hfaaa;
    defparam seccnt_1578_add_4_25.INIT1 = 16'hfaaa;
    defparam seccnt_1578_add_4_25.INJECT1_0 = "NO";
    defparam seccnt_1578_add_4_25.INJECT1_1 = "NO";
    LUT4 i13_4_lut (.A(seccnt[18]), .B(seccnt[21]), .C(seccnt[2]), .D(seccnt[25]), 
         .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(27[8:22])
    defparam i13_4_lut.init = 16'hfffe;
    CCU2D seccnt_1578_add_4_5 (.A0(seccnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5888), .COUT(n5889), .S0(n133[3]), .S1(n133[4]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578_add_4_5.INIT0 = 16'hfaaa;
    defparam seccnt_1578_add_4_5.INIT1 = 16'hfaaa;
    defparam seccnt_1578_add_4_5.INJECT1_0 = "NO";
    defparam seccnt_1578_add_4_5.INJECT1_1 = "NO";
    CCU2D seccnt_1578_add_4_23 (.A0(seccnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5897), .COUT(n5898), .S0(n133[21]), .S1(n133[22]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578_add_4_23.INIT0 = 16'hfaaa;
    defparam seccnt_1578_add_4_23.INIT1 = 16'hfaaa;
    defparam seccnt_1578_add_4_23.INJECT1_0 = "NO";
    defparam seccnt_1578_add_4_23.INJECT1_1 = "NO";
    FD1S3IX seccnt_1578__i31 (.D(n133[31]), .CK(clk_c), .CD(n3117), .Q(seccnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i31.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i30 (.D(n133[30]), .CK(clk_c), .CD(n3117), .Q(seccnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i30.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i29 (.D(n133[29]), .CK(clk_c), .CD(n3117), .Q(seccnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i29.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i28 (.D(n133[28]), .CK(clk_c), .CD(n3117), .Q(seccnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i28.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i27 (.D(n133[27]), .CK(clk_c), .CD(n3117), .Q(seccnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i27.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i26 (.D(n133[26]), .CK(clk_c), .CD(n3117), .Q(seccnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i26.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i25 (.D(n133[25]), .CK(clk_c), .CD(n3117), .Q(seccnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i25.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i24 (.D(n133[24]), .CK(clk_c), .CD(n3117), .Q(seccnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i24.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i23 (.D(n133[23]), .CK(clk_c), .CD(n3117), .Q(seccnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i23.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i22 (.D(n133[22]), .CK(clk_c), .CD(n3117), .Q(seccnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i22.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i21 (.D(n133[21]), .CK(clk_c), .CD(n3117), .Q(seccnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i21.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i20 (.D(n133[20]), .CK(clk_c), .CD(n3117), .Q(seccnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i20.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i19 (.D(n133[19]), .CK(clk_c), .CD(n3117), .Q(seccnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i19.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i18 (.D(n133[18]), .CK(clk_c), .CD(n3117), .Q(seccnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i18.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i17 (.D(n133[17]), .CK(clk_c), .CD(n3117), .Q(seccnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i17.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i16 (.D(n133[16]), .CK(clk_c), .CD(n3117), .Q(seccnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i16.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i15 (.D(n133[15]), .CK(clk_c), .CD(n3117), .Q(seccnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i15.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i14 (.D(n133[14]), .CK(clk_c), .CD(n3117), .Q(seccnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i14.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i13 (.D(n133[13]), .CK(clk_c), .CD(n3117), .Q(seccnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i13.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i12 (.D(n133[12]), .CK(clk_c), .CD(n3117), .Q(seccnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i12.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i11 (.D(n133[11]), .CK(clk_c), .CD(n3117), .Q(seccnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i11.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i10 (.D(n133[10]), .CK(clk_c), .CD(n3117), .Q(seccnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i10.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i9 (.D(n133[9]), .CK(clk_c), .CD(n3117), .Q(seccnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i9.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i8 (.D(n133[8]), .CK(clk_c), .CD(n3117), .Q(seccnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i8.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i7 (.D(n133[7]), .CK(clk_c), .CD(n3117), .Q(seccnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i7.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i6 (.D(n133[6]), .CK(clk_c), .CD(n3117), .Q(seccnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i6.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i5 (.D(n133[5]), .CK(clk_c), .CD(n3117), .Q(seccnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i5.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i4 (.D(n133[4]), .CK(clk_c), .CD(n3117), .Q(seccnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i4.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i3 (.D(n133[3]), .CK(clk_c), .CD(n3117), .Q(seccnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i3.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i2 (.D(n133[2]), .CK(clk_c), .CD(n3117), .Q(seccnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i2.GSR = "ENABLED";
    FD1S3IX seccnt_1578__i1 (.D(n133[1]), .CK(clk_c), .CD(n3117), .Q(seccnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578__i1.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(seccnt[0]), .B(seccnt[28]), .Z(n24)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(27[8:22])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i6207_4_lut (.A(seccnt[22]), .B(seccnt[20]), .C(seccnt[10]), 
         .D(seccnt[15]), .Z(n7019)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6207_4_lut.init = 16'h8000;
    LUT4 i6149_2_lut (.A(seccnt[17]), .B(seccnt[19]), .Z(n6961)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6149_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_7 (.A(sec), .B(n3117), .Z(clk_out_N_68)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_7.init = 16'h6666;
    LUT4 i15_4_lut (.A(seccnt[1]), .B(seccnt[27]), .C(seccnt[4]), .D(seccnt[30]), 
         .Z(n38)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(27[8:22])
    defparam i15_4_lut.init = 16'hfffe;
    CCU2D seccnt_1578_add_4_21 (.A0(seccnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5896), .COUT(n5897), .S0(n133[19]), .S1(n133[20]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578_add_4_21.INIT0 = 16'hfaaa;
    defparam seccnt_1578_add_4_21.INIT1 = 16'hfaaa;
    defparam seccnt_1578_add_4_21.INJECT1_0 = "NO";
    defparam seccnt_1578_add_4_21.INJECT1_1 = "NO";
    CCU2D seccnt_1578_add_4_3 (.A0(seccnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5887), .COUT(n5888), .S0(n133[1]), .S1(n133[2]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578_add_4_3.INIT0 = 16'hfaaa;
    defparam seccnt_1578_add_4_3.INIT1 = 16'hfaaa;
    defparam seccnt_1578_add_4_3.INJECT1_0 = "NO";
    defparam seccnt_1578_add_4_3.INJECT1_1 = "NO";
    CCU2D seccnt_1578_add_4_19 (.A0(seccnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5895), .COUT(n5896), .S0(n133[17]), .S1(n133[18]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578_add_4_19.INIT0 = 16'hfaaa;
    defparam seccnt_1578_add_4_19.INIT1 = 16'hfaaa;
    defparam seccnt_1578_add_4_19.INJECT1_0 = "NO";
    defparam seccnt_1578_add_4_19.INJECT1_1 = "NO";
    CCU2D seccnt_1578_add_4_17 (.A0(seccnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5894), .COUT(n5895), .S0(n133[15]), .S1(n133[16]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578_add_4_17.INIT0 = 16'hfaaa;
    defparam seccnt_1578_add_4_17.INIT1 = 16'hfaaa;
    defparam seccnt_1578_add_4_17.INJECT1_0 = "NO";
    defparam seccnt_1578_add_4_17.INJECT1_1 = "NO";
    CCU2D seccnt_1578_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n5887), .S1(n133[0]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578_add_4_1.INIT0 = 16'hF000;
    defparam seccnt_1578_add_4_1.INIT1 = 16'h0555;
    defparam seccnt_1578_add_4_1.INJECT1_0 = "NO";
    defparam seccnt_1578_add_4_1.INJECT1_1 = "NO";
    CCU2D seccnt_1578_add_4_15 (.A0(seccnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5893), .COUT(n5894), .S0(n133[13]), .S1(n133[14]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578_add_4_15.INIT0 = 16'hfaaa;
    defparam seccnt_1578_add_4_15.INIT1 = 16'hfaaa;
    defparam seccnt_1578_add_4_15.INJECT1_0 = "NO";
    defparam seccnt_1578_add_4_15.INJECT1_1 = "NO";
    LUT4 i5_2_lut (.A(seccnt[12]), .B(seccnt[24]), .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(27[8:22])
    defparam i5_2_lut.init = 16'heeee;
    CCU2D seccnt_1578_add_4_13 (.A0(seccnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(seccnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5892), .COUT(n5893), .S0(n133[11]), .S1(n133[12]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(26[12:18])
    defparam seccnt_1578_add_4_13.INIT0 = 16'hfaaa;
    defparam seccnt_1578_add_4_13.INIT1 = 16'hfaaa;
    defparam seccnt_1578_add_4_13.INJECT1_0 = "NO";
    defparam seccnt_1578_add_4_13.INJECT1_1 = "NO";
    LUT4 i6345_4_lut (.A(seccnt[7]), .B(n43), .C(seccnt[11]), .D(n44), 
         .Z(n3117)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(27[8:22])
    defparam i6345_4_lut.init = 16'h0020;
    LUT4 i1185_2_lut_rep_138 (.A(sec), .B(sec_ls), .Z(clk_c_enable_53)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(22[3] 31[10])
    defparam i1185_2_lut_rep_138.init = 16'h2222;
    LUT4 i4075_3_lut_4_lut (.A(sec), .B(sec_ls), .C(n8077), .D(n7), 
         .Z(clk_c_enable_50)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(22[3] 31[10])
    defparam i4075_3_lut_4_lut.init = 16'h2220;
    LUT4 i4071_3_lut_4_lut (.A(sec), .B(sec_ls), .C(n8077), .D(n6828), 
         .Z(clk_c_enable_60)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(22[3] 31[10])
    defparam i4071_3_lut_4_lut.init = 16'h2220;
    LUT4 i20_4_lut (.A(seccnt[14]), .B(n40), .C(n32), .D(seccnt[5]), 
         .Z(n43)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(27[8:22])
    defparam i20_4_lut.init = 16'hfffe;
    LUT4 i21_4_lut (.A(n7033), .B(n42), .C(n36), .D(n24), .Z(n44)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/clockdivider.vhd(27[8:22])
    defparam i21_4_lut.init = 16'hfffd;
    
endmodule
//
// Verilog Description of module CycleSampler_U1
//

module CycleSampler_U1 (clk_c, mode_key_state, GND_net, mode_key_c);
    input clk_c;
    output mode_key_state;
    input GND_net;
    input mode_key_c;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(11[3:6])
    
    wire keysamplerpulse, keysamplerpulse_N_144, keysamplerpulse_ls, keystate_N_142, 
        n9, n7029;
    wire [31:0]keysamplerpulsecnt;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(18[9:27])
    
    wire n3119;
    wire [2:0]keystore;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(21[9:17])
    
    wire keystore_2__N_139, btnstate_N_138, n47, n45, n46, n43, 
        n38, n40, n28;
    wire [31:0]n133;
    
    wire n5934, n5933, n5932, n5931, n5930, n5929, n5928, n5927, 
        n5926, n5925, n42, n32, n5924, n5923, n5922, n5921, 
        n5920, n5919;
    
    FD1S3AX keysamplerpulse_31 (.D(keysamplerpulse_N_144), .CK(clk_c), .Q(keysamplerpulse)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=22, LSE_LLINE=162, LSE_RLINE=162 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(28[3] 34[10])
    defparam keysamplerpulse_31.GSR = "DISABLED";
    FD1S3AX keysamplerpulse_ls_32 (.D(keysamplerpulse), .CK(clk_c), .Q(keysamplerpulse_ls)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=22, LSE_LLINE=162, LSE_RLINE=162 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(40[3] 42[10])
    defparam keysamplerpulse_ls_32.GSR = "DISABLED";
    FD1S3AX keystate_34 (.D(keystate_N_142), .CK(clk_c), .Q(mode_key_state)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=22, LSE_LLINE=162, LSE_RLINE=162 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(48[3] 55[10])
    defparam keystate_34.GSR = "DISABLED";
    LUT4 i6355_4_lut (.A(n9), .B(n7029), .C(keysamplerpulsecnt[10]), .D(keysamplerpulsecnt[16]), 
         .Z(n3119)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i6355_4_lut.init = 16'h4000;
    FD1P3AX keystore_i0_i0 (.D(btnstate_N_138), .SP(keystore_2__N_139), 
            .CK(clk_c), .Q(keystore[0])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=22, LSE_LLINE=162, LSE_RLINE=162 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(48[3] 55[10])
    defparam keystore_i0_i0.GSR = "DISABLED";
    FD1P3AX keystore_i0_i2 (.D(keystore[1]), .SP(keystore_2__N_139), .CK(clk_c), 
            .Q(keystore[2])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=22, LSE_LLINE=162, LSE_RLINE=162 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(48[3] 55[10])
    defparam keystore_i0_i2.GSR = "DISABLED";
    FD1P3AX keystore_i0_i1 (.D(keystore[0]), .SP(keystore_2__N_139), .CK(clk_c), 
            .Q(keystore[1])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=22, LSE_LLINE=162, LSE_RLINE=162 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(48[3] 55[10])
    defparam keystore_i0_i1.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(n47), .B(keysamplerpulsecnt[15]), .C(n45), .D(n46), 
         .Z(n9)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    LUT4 i6217_4_lut (.A(keysamplerpulsecnt[14]), .B(keysamplerpulsecnt[12]), 
         .C(keysamplerpulsecnt[6]), .D(keysamplerpulsecnt[7]), .Z(n7029)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6217_4_lut.init = 16'h8000;
    LUT4 i22_4_lut (.A(n43), .B(keysamplerpulsecnt[3]), .C(n38), .D(keysamplerpulsecnt[2]), 
         .Z(n47)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i22_4_lut.init = 16'hfffe;
    LUT4 i20_4_lut (.A(keysamplerpulsecnt[31]), .B(n40), .C(n28), .D(keysamplerpulsecnt[27]), 
         .Z(n45)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i20_4_lut.init = 16'hfffe;
    FD1S3IX keysamplerpulsecnt_1580__i0 (.D(n133[0]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i0.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_1580_add_4_33 (.A0(keysamplerpulsecnt[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5934), .S0(n133[31]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580_add_4_33.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_33.INIT1 = 16'h0000;
    defparam keysamplerpulsecnt_1580_add_4_33.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1580_add_4_33.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1580_add_4_31 (.A0(keysamplerpulsecnt[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5933), .COUT(n5934), .S0(n133[29]), 
          .S1(n133[30]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580_add_4_31.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_31.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_31.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1580_add_4_31.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1580_add_4_29 (.A0(keysamplerpulsecnt[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5932), .COUT(n5933), .S0(n133[27]), 
          .S1(n133[28]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580_add_4_29.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_29.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_29.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1580_add_4_29.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1580_add_4_27 (.A0(keysamplerpulsecnt[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5931), .COUT(n5932), .S0(n133[25]), 
          .S1(n133[26]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580_add_4_27.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_27.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_27.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1580_add_4_27.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1580_add_4_25 (.A0(keysamplerpulsecnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5930), .COUT(n5931), .S0(n133[23]), 
          .S1(n133[24]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580_add_4_25.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_25.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_25.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1580_add_4_25.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1580_add_4_23 (.A0(keysamplerpulsecnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5929), .COUT(n5930), .S0(n133[21]), 
          .S1(n133[22]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580_add_4_23.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_23.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_23.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1580_add_4_23.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1580_add_4_21 (.A0(keysamplerpulsecnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5928), .COUT(n5929), .S0(n133[19]), 
          .S1(n133[20]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580_add_4_21.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_21.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_21.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1580_add_4_21.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1580_add_4_19 (.A0(keysamplerpulsecnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5927), .COUT(n5928), .S0(n133[17]), 
          .S1(n133[18]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580_add_4_19.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_19.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_19.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1580_add_4_19.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1580_add_4_17 (.A0(keysamplerpulsecnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5926), .COUT(n5927), .S0(n133[15]), 
          .S1(n133[16]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580_add_4_17.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_17.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_17.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1580_add_4_17.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1580_add_4_15 (.A0(keysamplerpulsecnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5925), .COUT(n5926), .S0(n133[13]), 
          .S1(n133[14]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580_add_4_15.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_15.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_15.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1580_add_4_15.INJECT1_1 = "NO";
    LUT4 i21_4_lut (.A(keysamplerpulsecnt[23]), .B(n42), .C(n32), .D(keysamplerpulsecnt[21]), 
         .Z(n46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i21_4_lut.init = 16'hfffe;
    LUT4 keysamplerpulse_I_0_37_2_lut (.A(keysamplerpulse), .B(keysamplerpulse_ls), 
         .Z(keystore_2__N_139)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(49[8:54])
    defparam keysamplerpulse_I_0_37_2_lut.init = 16'h2222;
    FD1S3IX keysamplerpulsecnt_1580__i31 (.D(n133[31]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i31.GSR = "DISABLED";
    LUT4 btnstate_I_0_1_lut (.A(mode_key_c), .Z(btnstate_N_138)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(52[18:30])
    defparam btnstate_I_0_1_lut.init = 16'h5555;
    FD1S3IX keysamplerpulsecnt_1580__i30 (.D(n133[30]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i30.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i29 (.D(n133[29]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i29.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i28 (.D(n133[28]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i28.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i27 (.D(n133[27]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i27.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i26 (.D(n133[26]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i26.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i25 (.D(n133[25]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i25.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i24 (.D(n133[24]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i24.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i23 (.D(n133[23]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i23.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i22 (.D(n133[22]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i22.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i21 (.D(n133[21]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i21.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i20 (.D(n133[20]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i20.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i19 (.D(n133[19]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i19.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i18 (.D(n133[18]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i18.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i17 (.D(n133[17]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i17.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i16 (.D(n133[16]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i16.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i15 (.D(n133[15]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i15.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i14 (.D(n133[14]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i14.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i13 (.D(n133[13]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i13.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i12 (.D(n133[12]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i12.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i11 (.D(n133[11]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i11.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i10 (.D(n133[10]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i10.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i9 (.D(n133[9]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i9.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i8 (.D(n133[8]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i8.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i7 (.D(n133[7]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i7.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i6 (.D(n133[6]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i6.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i5 (.D(n133[5]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i5.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i4 (.D(n133[4]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i4.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i3 (.D(n133[3]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i3.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i2 (.D(n133[2]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i2.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1580__i1 (.D(n133[1]), .CK(clk_c), .CD(n3119), 
            .Q(keysamplerpulsecnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580__i1.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_1580_add_4_13 (.A0(keysamplerpulsecnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5924), .COUT(n5925), .S0(n133[11]), 
          .S1(n133[12]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580_add_4_13.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_13.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_13.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1580_add_4_13.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1580_add_4_11 (.A0(keysamplerpulsecnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5923), .COUT(n5924), .S0(n133[9]), 
          .S1(n133[10]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580_add_4_11.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_11.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_11.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1580_add_4_11.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1580_add_4_9 (.A0(keysamplerpulsecnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5922), .COUT(n5923), .S0(n133[7]), 
          .S1(n133[8]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580_add_4_9.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_9.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_9.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1580_add_4_9.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1580_add_4_7 (.A0(keysamplerpulsecnt[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5921), .COUT(n5922), .S0(n133[5]), 
          .S1(n133[6]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580_add_4_7.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_7.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_7.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1580_add_4_7.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1580_add_4_5 (.A0(keysamplerpulsecnt[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5920), .COUT(n5921), .S0(n133[3]), 
          .S1(n133[4]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580_add_4_5.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_5.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_5.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1580_add_4_5.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1580_add_4_3 (.A0(keysamplerpulsecnt[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5919), .COUT(n5920), .S0(n133[1]), 
          .S1(n133[2]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580_add_4_3.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_3.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1580_add_4_3.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1580_add_4_3.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1580_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n5919), .S1(n133[0]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1580_add_4_1.INIT0 = 16'hF000;
    defparam keysamplerpulsecnt_1580_add_4_1.INIT1 = 16'h0555;
    defparam keysamplerpulsecnt_1580_add_4_1.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1580_add_4_1.INJECT1_1 = "NO";
    LUT4 i18_4_lut (.A(keysamplerpulsecnt[8]), .B(keysamplerpulsecnt[19]), 
         .C(keysamplerpulsecnt[13]), .D(keysamplerpulsecnt[22]), .Z(n43)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut (.A(keystore[2]), .B(keystore[1]), .C(keystore[0]), 
         .Z(keystate_N_142)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(54[14:57])
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i13_3_lut (.A(keysamplerpulsecnt[11]), .B(keysamplerpulsecnt[30]), 
         .C(keysamplerpulsecnt[1]), .Z(n38)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i13_3_lut.init = 16'hfefe;
    LUT4 i15_4_lut (.A(keysamplerpulsecnt[17]), .B(keysamplerpulsecnt[24]), 
         .C(keysamplerpulsecnt[20]), .D(keysamplerpulsecnt[0]), .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(keysamplerpulsecnt[29]), .B(keysamplerpulsecnt[28]), 
         .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i17_4_lut (.A(keysamplerpulsecnt[5]), .B(keysamplerpulsecnt[18]), 
         .C(keysamplerpulsecnt[9]), .D(keysamplerpulsecnt[4]), .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(keysamplerpulse), .B(n3119), .Z(keysamplerpulse_N_144)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i7_2_lut (.A(keysamplerpulsecnt[25]), .B(keysamplerpulsecnt[26]), 
         .Z(n32)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i7_2_lut.init = 16'heeee;
    
endmodule
//
// Verilog Description of module CycleSampler_U2
//

module CycleSampler_U2 (clk_c, down_key_state, GND_net, down_key_c);
    input clk_c;
    output down_key_state;
    input GND_net;
    input down_key_c;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(11[3:6])
    wire [2:0]keystore;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(21[9:17])
    
    wire keystore_2__N_139, btnstate_N_138, keysamplerpulse, keysamplerpulse_N_144, 
        keysamplerpulse_ls, keystate_N_142, n5952;
    wire [31:0]keysamplerpulsecnt;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(18[9:27])
    wire [31:0]n133;
    
    wire n5953, n5951, n5966, n5965, n5964, n5963, n5962, n5961, 
        n5960, n5959, n5958, n5957, n5956, n5955, n3122, n5954, 
        n9, n7025, n47, n45, n46, n43, n38, n40, n28, n42, 
        n32;
    
    FD1P3AX keystore_i0_i0 (.D(btnstate_N_138), .SP(keystore_2__N_139), 
            .CK(clk_c), .Q(keystore[0])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=22, LSE_LLINE=164, LSE_RLINE=164 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(48[3] 55[10])
    defparam keystore_i0_i0.GSR = "DISABLED";
    FD1S3AX keysamplerpulse_31 (.D(keysamplerpulse_N_144), .CK(clk_c), .Q(keysamplerpulse)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=22, LSE_LLINE=164, LSE_RLINE=164 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(28[3] 34[10])
    defparam keysamplerpulse_31.GSR = "DISABLED";
    FD1S3AX keysamplerpulse_ls_32 (.D(keysamplerpulse), .CK(clk_c), .Q(keysamplerpulse_ls)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=22, LSE_LLINE=164, LSE_RLINE=164 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(40[3] 42[10])
    defparam keysamplerpulse_ls_32.GSR = "DISABLED";
    FD1S3AX keystate_34 (.D(keystate_N_142), .CK(clk_c), .Q(down_key_state)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=22, LSE_LLINE=164, LSE_RLINE=164 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(48[3] 55[10])
    defparam keystate_34.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_1582_add_4_5 (.A0(keysamplerpulsecnt[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5952), .COUT(n5953), .S0(n133[3]), 
          .S1(n133[4]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582_add_4_5.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_5.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_5.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1582_add_4_5.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1582_add_4_3 (.A0(keysamplerpulsecnt[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5951), .COUT(n5952), .S0(n133[1]), 
          .S1(n133[2]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582_add_4_3.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_3.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_3.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1582_add_4_3.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1582_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n5951), .S1(n133[0]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582_add_4_1.INIT0 = 16'hF000;
    defparam keysamplerpulsecnt_1582_add_4_1.INIT1 = 16'h0555;
    defparam keysamplerpulsecnt_1582_add_4_1.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1582_add_4_1.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1582_add_4_33 (.A0(keysamplerpulsecnt[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5966), .S0(n133[31]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582_add_4_33.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_33.INIT1 = 16'h0000;
    defparam keysamplerpulsecnt_1582_add_4_33.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1582_add_4_33.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1582_add_4_31 (.A0(keysamplerpulsecnt[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5965), .COUT(n5966), .S0(n133[29]), 
          .S1(n133[30]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582_add_4_31.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_31.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_31.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1582_add_4_31.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1582_add_4_29 (.A0(keysamplerpulsecnt[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5964), .COUT(n5965), .S0(n133[27]), 
          .S1(n133[28]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582_add_4_29.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_29.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_29.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1582_add_4_29.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1582_add_4_27 (.A0(keysamplerpulsecnt[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5963), .COUT(n5964), .S0(n133[25]), 
          .S1(n133[26]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582_add_4_27.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_27.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_27.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1582_add_4_27.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1582_add_4_25 (.A0(keysamplerpulsecnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5962), .COUT(n5963), .S0(n133[23]), 
          .S1(n133[24]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582_add_4_25.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_25.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_25.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1582_add_4_25.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1582_add_4_23 (.A0(keysamplerpulsecnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5961), .COUT(n5962), .S0(n133[21]), 
          .S1(n133[22]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582_add_4_23.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_23.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_23.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1582_add_4_23.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1582_add_4_21 (.A0(keysamplerpulsecnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5960), .COUT(n5961), .S0(n133[19]), 
          .S1(n133[20]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582_add_4_21.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_21.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_21.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1582_add_4_21.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1582_add_4_19 (.A0(keysamplerpulsecnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5959), .COUT(n5960), .S0(n133[17]), 
          .S1(n133[18]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582_add_4_19.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_19.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_19.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1582_add_4_19.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1582_add_4_17 (.A0(keysamplerpulsecnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5958), .COUT(n5959), .S0(n133[15]), 
          .S1(n133[16]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582_add_4_17.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_17.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_17.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1582_add_4_17.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1582_add_4_15 (.A0(keysamplerpulsecnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5957), .COUT(n5958), .S0(n133[13]), 
          .S1(n133[14]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582_add_4_15.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_15.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_15.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1582_add_4_15.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1582_add_4_13 (.A0(keysamplerpulsecnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5956), .COUT(n5957), .S0(n133[11]), 
          .S1(n133[12]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582_add_4_13.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_13.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_13.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1582_add_4_13.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1582_add_4_11 (.A0(keysamplerpulsecnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5955), .COUT(n5956), .S0(n133[9]), 
          .S1(n133[10]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582_add_4_11.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_11.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_11.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1582_add_4_11.INJECT1_1 = "NO";
    FD1S3IX keysamplerpulsecnt_1582__i0 (.D(n133[0]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i0.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_1582_add_4_9 (.A0(keysamplerpulsecnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5954), .COUT(n5955), .S0(n133[7]), 
          .S1(n133[8]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582_add_4_9.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_9.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_9.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1582_add_4_9.INJECT1_1 = "NO";
    FD1S3IX keysamplerpulsecnt_1582__i31 (.D(n133[31]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i31.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i30 (.D(n133[30]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i30.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i29 (.D(n133[29]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i29.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i28 (.D(n133[28]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i28.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i27 (.D(n133[27]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i27.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i26 (.D(n133[26]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i26.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i25 (.D(n133[25]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i25.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i24 (.D(n133[24]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i24.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i23 (.D(n133[23]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i23.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i22 (.D(n133[22]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i22.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i21 (.D(n133[21]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i21.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i20 (.D(n133[20]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i20.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i19 (.D(n133[19]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i19.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i18 (.D(n133[18]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i18.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i17 (.D(n133[17]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i17.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i16 (.D(n133[16]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i16.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i15 (.D(n133[15]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i15.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i14 (.D(n133[14]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i14.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i13 (.D(n133[13]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i13.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i12 (.D(n133[12]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i12.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i11 (.D(n133[11]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i11.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i10 (.D(n133[10]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i10.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i9 (.D(n133[9]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i9.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i8 (.D(n133[8]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i8.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i7 (.D(n133[7]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i7.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i6 (.D(n133[6]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i6.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i5 (.D(n133[5]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i5.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i4 (.D(n133[4]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i4.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i3 (.D(n133[3]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i3.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i2 (.D(n133[2]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i2.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1582__i1 (.D(n133[1]), .CK(clk_c), .CD(n3122), 
            .Q(keysamplerpulsecnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582__i1.GSR = "DISABLED";
    FD1P3AX keystore_i0_i2 (.D(keystore[1]), .SP(keystore_2__N_139), .CK(clk_c), 
            .Q(keystore[2])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=22, LSE_LLINE=164, LSE_RLINE=164 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(48[3] 55[10])
    defparam keystore_i0_i2.GSR = "DISABLED";
    FD1P3AX keystore_i0_i1 (.D(keystore[0]), .SP(keystore_2__N_139), .CK(clk_c), 
            .Q(keystore[1])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=10, LSE_RCOL=22, LSE_LLINE=164, LSE_RLINE=164 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(48[3] 55[10])
    defparam keystore_i0_i1.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_1582_add_4_7 (.A0(keysamplerpulsecnt[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5953), .COUT(n5954), .S0(n133[5]), 
          .S1(n133[6]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1582_add_4_7.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_7.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1582_add_4_7.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1582_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(keysamplerpulse), .B(n3122), .Z(keysamplerpulse_N_144)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i6361_4_lut (.A(n9), .B(n7025), .C(keysamplerpulsecnt[10]), .D(keysamplerpulsecnt[16]), 
         .Z(n3122)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i6361_4_lut.init = 16'h4000;
    LUT4 i1_4_lut (.A(n47), .B(keysamplerpulsecnt[15]), .C(n45), .D(n46), 
         .Z(n9)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    LUT4 i6213_4_lut (.A(keysamplerpulsecnt[14]), .B(keysamplerpulsecnt[12]), 
         .C(keysamplerpulsecnt[6]), .D(keysamplerpulsecnt[7]), .Z(n7025)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6213_4_lut.init = 16'h8000;
    LUT4 i22_4_lut (.A(n43), .B(keysamplerpulsecnt[3]), .C(n38), .D(keysamplerpulsecnt[2]), 
         .Z(n47)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i22_4_lut.init = 16'hfffe;
    LUT4 i20_4_lut (.A(keysamplerpulsecnt[31]), .B(n40), .C(n28), .D(keysamplerpulsecnt[27]), 
         .Z(n45)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i20_4_lut.init = 16'hfffe;
    LUT4 i21_4_lut (.A(keysamplerpulsecnt[23]), .B(n42), .C(n32), .D(keysamplerpulsecnt[21]), 
         .Z(n46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i21_4_lut.init = 16'hfffe;
    LUT4 i18_4_lut (.A(keysamplerpulsecnt[8]), .B(keysamplerpulsecnt[19]), 
         .C(keysamplerpulsecnt[13]), .D(keysamplerpulsecnt[22]), .Z(n43)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i13_3_lut (.A(keysamplerpulsecnt[11]), .B(keysamplerpulsecnt[30]), 
         .C(keysamplerpulsecnt[1]), .Z(n38)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i13_3_lut.init = 16'hfefe;
    LUT4 i15_4_lut (.A(keysamplerpulsecnt[17]), .B(keysamplerpulsecnt[24]), 
         .C(keysamplerpulsecnt[20]), .D(keysamplerpulsecnt[0]), .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(keysamplerpulsecnt[29]), .B(keysamplerpulsecnt[28]), 
         .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i17_4_lut (.A(keysamplerpulsecnt[5]), .B(keysamplerpulsecnt[18]), 
         .C(keysamplerpulsecnt[9]), .D(keysamplerpulsecnt[4]), .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i7_2_lut (.A(keysamplerpulsecnt[25]), .B(keysamplerpulsecnt[26]), 
         .Z(n32)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i7_2_lut.init = 16'heeee;
    LUT4 i2_3_lut (.A(keystore[2]), .B(keystore[1]), .C(keystore[0]), 
         .Z(keystate_N_142)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(54[14:57])
    defparam i2_3_lut.init = 16'h8080;
    LUT4 keysamplerpulse_I_0_37_2_lut (.A(keysamplerpulse), .B(keysamplerpulse_ls), 
         .Z(keystore_2__N_139)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(49[8:54])
    defparam keysamplerpulse_I_0_37_2_lut.init = 16'h2222;
    LUT4 btnstate_I_0_1_lut (.A(down_key_c), .Z(btnstate_N_138)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(52[18:30])
    defparam btnstate_I_0_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module CycleSampler
//

module CycleSampler (clk_c, up_key_state, GND_net, up_key_c);
    input clk_c;
    output up_key_state;
    input GND_net;
    input up_key_c;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/topdesign.vhd(11[3:6])
    wire [2:0]keystore;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(21[9:17])
    
    wire keystore_2__N_139, btnstate_N_138, keysamplerpulse, keysamplerpulse_N_144, 
        keysamplerpulse_ls, keystate_N_142, n5950;
    wire [31:0]keysamplerpulsecnt;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(18[9:27])
    wire [31:0]n133;
    
    wire n5949, n5948, n5947, n5946, n5945, n5944, n5943, n5942, 
        n3121, n5941, n5940, n5939, n5938, n5937, n5936, n5935, 
        n9, n7027, n47, n45, n46, n43, n38, n40, n28, n42, 
        n32;
    
    FD1P3AX keystore_i0_i0 (.D(btnstate_N_138), .SP(keystore_2__N_139), 
            .CK(clk_c), .Q(keystore[0])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=8, LSE_RCOL=20, LSE_LLINE=163, LSE_RLINE=163 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(48[3] 55[10])
    defparam keystore_i0_i0.GSR = "DISABLED";
    FD1S3AX keysamplerpulse_31 (.D(keysamplerpulse_N_144), .CK(clk_c), .Q(keysamplerpulse)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=8, LSE_RCOL=20, LSE_LLINE=163, LSE_RLINE=163 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(28[3] 34[10])
    defparam keysamplerpulse_31.GSR = "DISABLED";
    FD1S3AX keysamplerpulse_ls_32 (.D(keysamplerpulse), .CK(clk_c), .Q(keysamplerpulse_ls)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=8, LSE_RCOL=20, LSE_LLINE=163, LSE_RLINE=163 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(40[3] 42[10])
    defparam keysamplerpulse_ls_32.GSR = "DISABLED";
    FD1S3AX keystate_34 (.D(keystate_N_142), .CK(clk_c), .Q(up_key_state)) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=8, LSE_RCOL=20, LSE_LLINE=163, LSE_RLINE=163 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(48[3] 55[10])
    defparam keystate_34.GSR = "DISABLED";
    FD1P3AX keystore_i0_i2 (.D(keystore[1]), .SP(keystore_2__N_139), .CK(clk_c), 
            .Q(keystore[2])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=8, LSE_RCOL=20, LSE_LLINE=163, LSE_RLINE=163 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(48[3] 55[10])
    defparam keystore_i0_i2.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_1581_add_4_33 (.A0(keysamplerpulsecnt[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5950), .S0(n133[31]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581_add_4_33.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_33.INIT1 = 16'h0000;
    defparam keysamplerpulsecnt_1581_add_4_33.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1581_add_4_33.INJECT1_1 = "NO";
    FD1P3AX keystore_i0_i1 (.D(keystore[0]), .SP(keystore_2__N_139), .CK(clk_c), 
            .Q(keystore[1])) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=8, LSE_RCOL=20, LSE_LLINE=163, LSE_RLINE=163 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(48[3] 55[10])
    defparam keystore_i0_i1.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_1581_add_4_31 (.A0(keysamplerpulsecnt[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5949), .COUT(n5950), .S0(n133[29]), 
          .S1(n133[30]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581_add_4_31.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_31.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_31.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1581_add_4_31.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1581_add_4_29 (.A0(keysamplerpulsecnt[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5948), .COUT(n5949), .S0(n133[27]), 
          .S1(n133[28]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581_add_4_29.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_29.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_29.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1581_add_4_29.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1581_add_4_27 (.A0(keysamplerpulsecnt[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5947), .COUT(n5948), .S0(n133[25]), 
          .S1(n133[26]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581_add_4_27.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_27.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_27.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1581_add_4_27.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1581_add_4_25 (.A0(keysamplerpulsecnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5946), .COUT(n5947), .S0(n133[23]), 
          .S1(n133[24]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581_add_4_25.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_25.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_25.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1581_add_4_25.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1581_add_4_23 (.A0(keysamplerpulsecnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5945), .COUT(n5946), .S0(n133[21]), 
          .S1(n133[22]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581_add_4_23.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_23.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_23.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1581_add_4_23.INJECT1_1 = "NO";
    LUT4 keysamplerpulse_I_0_37_2_lut (.A(keysamplerpulse), .B(keysamplerpulse_ls), 
         .Z(keystore_2__N_139)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(49[8:54])
    defparam keysamplerpulse_I_0_37_2_lut.init = 16'h2222;
    CCU2D keysamplerpulsecnt_1581_add_4_21 (.A0(keysamplerpulsecnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5944), .COUT(n5945), .S0(n133[19]), 
          .S1(n133[20]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581_add_4_21.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_21.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_21.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1581_add_4_21.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1581_add_4_19 (.A0(keysamplerpulsecnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5943), .COUT(n5944), .S0(n133[17]), 
          .S1(n133[18]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581_add_4_19.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_19.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_19.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1581_add_4_19.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1581_add_4_17 (.A0(keysamplerpulsecnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5942), .COUT(n5943), .S0(n133[15]), 
          .S1(n133[16]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581_add_4_17.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_17.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_17.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1581_add_4_17.INJECT1_1 = "NO";
    FD1S3IX keysamplerpulsecnt_1581__i0 (.D(n133[0]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i0.GSR = "DISABLED";
    CCU2D keysamplerpulsecnt_1581_add_4_15 (.A0(keysamplerpulsecnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5941), .COUT(n5942), .S0(n133[13]), 
          .S1(n133[14]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581_add_4_15.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_15.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_15.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1581_add_4_15.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1581_add_4_13 (.A0(keysamplerpulsecnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5940), .COUT(n5941), .S0(n133[11]), 
          .S1(n133[12]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581_add_4_13.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_13.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_13.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1581_add_4_13.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1581_add_4_11 (.A0(keysamplerpulsecnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5939), .COUT(n5940), .S0(n133[9]), 
          .S1(n133[10]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581_add_4_11.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_11.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_11.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1581_add_4_11.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1581_add_4_9 (.A0(keysamplerpulsecnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5938), .COUT(n5939), .S0(n133[7]), 
          .S1(n133[8]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581_add_4_9.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_9.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_9.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1581_add_4_9.INJECT1_1 = "NO";
    LUT4 btnstate_I_0_1_lut (.A(up_key_c), .Z(btnstate_N_138)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(52[18:30])
    defparam btnstate_I_0_1_lut.init = 16'h5555;
    CCU2D keysamplerpulsecnt_1581_add_4_7 (.A0(keysamplerpulsecnt[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5937), .COUT(n5938), .S0(n133[5]), 
          .S1(n133[6]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581_add_4_7.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_7.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_7.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1581_add_4_7.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1581_add_4_5 (.A0(keysamplerpulsecnt[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5936), .COUT(n5937), .S0(n133[3]), 
          .S1(n133[4]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581_add_4_5.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_5.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_5.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1581_add_4_5.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1581_add_4_3 (.A0(keysamplerpulsecnt[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(keysamplerpulsecnt[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5935), .COUT(n5936), .S0(n133[1]), 
          .S1(n133[2]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581_add_4_3.INIT0 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_3.INIT1 = 16'hfaaa;
    defparam keysamplerpulsecnt_1581_add_4_3.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1581_add_4_3.INJECT1_1 = "NO";
    CCU2D keysamplerpulsecnt_1581_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(keysamplerpulsecnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n5935), .S1(n133[0]));   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581_add_4_1.INIT0 = 16'hF000;
    defparam keysamplerpulsecnt_1581_add_4_1.INIT1 = 16'h0555;
    defparam keysamplerpulsecnt_1581_add_4_1.INJECT1_0 = "NO";
    defparam keysamplerpulsecnt_1581_add_4_1.INJECT1_1 = "NO";
    FD1S3IX keysamplerpulsecnt_1581__i31 (.D(n133[31]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i31.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i30 (.D(n133[30]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i30.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i29 (.D(n133[29]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i29.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i28 (.D(n133[28]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i28.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i27 (.D(n133[27]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i27.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i26 (.D(n133[26]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i26.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i25 (.D(n133[25]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i25.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i24 (.D(n133[24]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i24.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i23 (.D(n133[23]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i23.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i22 (.D(n133[22]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i22.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i21 (.D(n133[21]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i21.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i20 (.D(n133[20]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i20.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i19 (.D(n133[19]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i19.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i18 (.D(n133[18]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i18.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i17 (.D(n133[17]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i17.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i16 (.D(n133[16]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i16.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i15 (.D(n133[15]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i15.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i14 (.D(n133[14]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i14.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i13 (.D(n133[13]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i13.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i12 (.D(n133[12]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i12.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i11 (.D(n133[11]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i11.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i10 (.D(n133[10]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i10.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i9 (.D(n133[9]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i9.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i8 (.D(n133[8]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i8.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i7 (.D(n133[7]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i7.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i6 (.D(n133[6]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i6.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i5 (.D(n133[5]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i5.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i4 (.D(n133[4]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i4.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i3 (.D(n133[3]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i3.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i2 (.D(n133[2]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i2.GSR = "DISABLED";
    FD1S3IX keysamplerpulsecnt_1581__i1 (.D(n133[1]), .CK(clk_c), .CD(n3121), 
            .Q(keysamplerpulsecnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(29[24:42])
    defparam keysamplerpulsecnt_1581__i1.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(keysamplerpulse), .B(n3121), .Z(keysamplerpulse_N_144)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i6358_4_lut (.A(n9), .B(n7027), .C(keysamplerpulsecnt[10]), .D(keysamplerpulsecnt[16]), 
         .Z(n3121)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i6358_4_lut.init = 16'h4000;
    LUT4 i1_4_lut (.A(n47), .B(keysamplerpulsecnt[15]), .C(n45), .D(n46), 
         .Z(n9)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    LUT4 i6215_4_lut (.A(keysamplerpulsecnt[14]), .B(keysamplerpulsecnt[12]), 
         .C(keysamplerpulsecnt[6]), .D(keysamplerpulsecnt[7]), .Z(n7027)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6215_4_lut.init = 16'h8000;
    LUT4 i22_4_lut (.A(n43), .B(keysamplerpulsecnt[3]), .C(n38), .D(keysamplerpulsecnt[2]), 
         .Z(n47)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i22_4_lut.init = 16'hfffe;
    LUT4 i20_4_lut (.A(keysamplerpulsecnt[31]), .B(n40), .C(n28), .D(keysamplerpulsecnt[27]), 
         .Z(n45)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i20_4_lut.init = 16'hfffe;
    LUT4 i21_4_lut (.A(keysamplerpulsecnt[23]), .B(n42), .C(n32), .D(keysamplerpulsecnt[21]), 
         .Z(n46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i21_4_lut.init = 16'hfffe;
    LUT4 i18_4_lut (.A(keysamplerpulsecnt[8]), .B(keysamplerpulsecnt[19]), 
         .C(keysamplerpulsecnt[13]), .D(keysamplerpulsecnt[22]), .Z(n43)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i13_3_lut (.A(keysamplerpulsecnt[11]), .B(keysamplerpulsecnt[30]), 
         .C(keysamplerpulsecnt[1]), .Z(n38)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i13_3_lut.init = 16'hfefe;
    LUT4 i15_4_lut (.A(keysamplerpulsecnt[17]), .B(keysamplerpulsecnt[24]), 
         .C(keysamplerpulsecnt[20]), .D(keysamplerpulsecnt[0]), .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(keysamplerpulsecnt[29]), .B(keysamplerpulsecnt[28]), 
         .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i17_4_lut (.A(keysamplerpulsecnt[5]), .B(keysamplerpulsecnt[18]), 
         .C(keysamplerpulsecnt[9]), .D(keysamplerpulsecnt[4]), .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i7_2_lut (.A(keysamplerpulsecnt[25]), .B(keysamplerpulsecnt[26]), 
         .Z(n32)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(30[8:33])
    defparam i7_2_lut.init = 16'heeee;
    LUT4 i2_3_lut (.A(keystore[2]), .B(keystore[1]), .C(keystore[0]), 
         .Z(keystate_N_142)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/cyclesampler.vhd(54[14:57])
    defparam i2_3_lut.init = 16'h8080;
    
endmodule
//
// Verilog Description of module TimeEncoder
//

module TimeEncoder (\mH[0] , \mH[2] , n4642, \hH[0] , \ctrlcode595[17] , 
            n381, n2658, n3082, hL, n14, mL, \ctrlcode595[37] , 
            n7, n2603, \ctrlcode595[4] , \sH[0] , \sH[2] , n4547, 
            sL, \ctrlcode595[71] , \ctrlcode595[69] , \ctrlcode595[68] , 
            \ctrlcode595[36] , n7628, n7616, \ctrlcode595[3] , \ctrlcode595[67] , 
            n7367, n7366, \ctrlcode595[5] , n7626);
    input \mH[0] ;
    input \mH[2] ;
    output n4642;
    input \hH[0] ;
    input \ctrlcode595[17] ;
    input n381;
    input n2658;
    output n3082;
    input [3:0]hL;
    output n14;
    input [3:0]mL;
    output \ctrlcode595[37] ;
    input n7;
    input n2603;
    output \ctrlcode595[4] ;
    input \sH[0] ;
    input \sH[2] ;
    output n4547;
    input [3:0]sL;
    output \ctrlcode595[71] ;
    output \ctrlcode595[69] ;
    output \ctrlcode595[68] ;
    output \ctrlcode595[36] ;
    output n7628;
    output n7616;
    output \ctrlcode595[3] ;
    output \ctrlcode595[67] ;
    input n7367;
    input n7366;
    output \ctrlcode595[5] ;
    output n7626;
    
    
    LUT4 i3940_2_lut (.A(\mH[0] ), .B(\mH[2] ), .Z(n4642)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3940_2_lut.init = 16'heeee;
    LUT4 i2366_3_lut_4_lut (.A(\hH[0] ), .B(\ctrlcode595[17] ), .C(n381), 
         .D(n2658), .Z(n3082)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timeencoder.vhd(52[43:45])
    defparam i2366_3_lut_4_lut.init = 16'hdfd0;
    LUT4 i4007_2_lut_2_lut_3_lut (.A(hL[1]), .B(hL[2]), .C(hL[0]), .Z(n14)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timeencoder.vhd(48[44:46])
    defparam i4007_2_lut_2_lut_3_lut.init = 16'hbfbf;
    LUT4 mL_2__bdd_4_lut (.A(mL[2]), .B(mL[3]), .C(mL[1]), .D(mL[0]), 
         .Z(\ctrlcode595[37] )) /* synthesis lut_function=(!(A (B (C+!(D)))+!A !(B+((D)+!C)))) */ ;
    defparam mL_2__bdd_4_lut.init = 16'h7f67;
    PFUMX hL_3__I_0_Mux_4_i15 (.BLUT(n7), .ALUT(n2603), .C0(hL[3]), .Z(\ctrlcode595[4] )) /* synthesis LSE_LINE_FILE_ID=28, LSE_LCOL=5, LSE_RCOL=16, LSE_LLINE=176, LSE_RLINE=176 */ ;
    LUT4 i3845_2_lut (.A(\sH[0] ), .B(\sH[2] ), .Z(n4547)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3845_2_lut.init = 16'heeee;
    LUT4 sL_0__bdd_4_lut_6624 (.A(sL[0]), .B(sL[3]), .C(sL[1]), .D(sL[2]), 
         .Z(\ctrlcode595[71] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam sL_0__bdd_4_lut_6624.init = 16'hf67d;
    LUT4 sL_1__bdd_4_lut (.A(sL[1]), .B(sL[3]), .C(sL[2]), .D(sL[0]), 
         .Z(\ctrlcode595[69] )) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A !(((D)+!C)+!B))) */ ;
    defparam sL_1__bdd_4_lut.init = 16'h7f3d;
    LUT4 sL_3__bdd_4_lut_6628 (.A(sL[3]), .B(sL[1]), .C(sL[0]), .D(sL[2]), 
         .Z(\ctrlcode595[68] )) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C (D)+!C !(D))))) */ ;
    defparam sL_3__bdd_4_lut_6628.init = 16'h3ee7;
    LUT4 mL_3__bdd_4_lut_6507 (.A(mL[3]), .B(mL[1]), .C(mL[0]), .D(mL[2]), 
         .Z(\ctrlcode595[36] )) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C (D)+!C !(D))))) */ ;
    defparam mL_3__bdd_4_lut_6507.init = 16'h3ee7;
    LUT4 i2_2_lut_rep_125_3_lut (.A(mL[0]), .B(mL[1]), .C(mL[2]), .Z(n7628)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timeencoder.vhd(56[46:48])
    defparam i2_2_lut_rep_125_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_rep_113_3_lut_4_lut (.A(mL[0]), .B(mL[1]), .C(mL[3]), 
         .D(mL[2]), .Z(n7616)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timeencoder.vhd(56[46:48])
    defparam i1_2_lut_rep_113_3_lut_4_lut.init = 16'hffdf;
    LUT4 hL_1__bdd_4_lut (.A(hL[1]), .B(hL[3]), .C(hL[0]), .D(hL[2]), 
         .Z(\ctrlcode595[3] )) /* synthesis lut_function=(A (B+!(C))+!A (B ((D)+!C)+!B !(C+(D)))) */ ;
    defparam hL_1__bdd_4_lut.init = 16'hce8f;
    LUT4 sL_2__bdd_4_lut (.A(sL[2]), .B(sL[1]), .C(sL[3]), .D(sL[0]), 
         .Z(\ctrlcode595[67] )) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (B (C+!(D))+!B !(D))) */ ;
    defparam sL_2__bdd_4_lut.init = 16'he0fd;
    PFUMX i6423 (.BLUT(n7367), .ALUT(n7366), .C0(hL[3]), .Z(\ctrlcode595[5] ));
    LUT4 i2_2_lut_rep_123_3_lut (.A(sL[0]), .B(sL[1]), .C(sL[2]), .Z(n7626)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/10352/vhdl-labs/lab4_digital_clock/timeencoder.vhd(64[43:45])
    defparam i2_2_lut_rep_123_3_lut.init = 16'hfdfd;
    
endmodule
