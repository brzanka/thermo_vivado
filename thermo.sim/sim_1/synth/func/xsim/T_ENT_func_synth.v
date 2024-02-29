// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Sep 11 12:59:58 2023
// Host        : 1991PC1 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/praktykant2/workspace_vivado/thermo/thermo.sim/sim_1/synth/func/xsim/T_ENT_func_synth.v
// Design      : ENT
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module ENT
   (current_temp,
    desired_temp,
    display_select,
    cool,
    heat,
    clk,
    temp_display,
    a_c_on,
    furnace_on);
  input [6:0]current_temp;
  input [6:0]desired_temp;
  input display_select;
  input cool;
  input heat;
  input clk;
  output [6:0]temp_display;
  output a_c_on;
  output furnace_on;

  wire a_c_on;
  wire a_c_on1;
  wire a_c_on_OBUF;
  wire a_c_on_i_10_n_0;
  wire a_c_on_i_3_n_0;
  wire a_c_on_i_4_n_0;
  wire a_c_on_i_5_n_0;
  wire a_c_on_i_6_n_0;
  wire a_c_on_i_7_n_0;
  wire a_c_on_i_8_n_0;
  wire a_c_on_i_9_n_0;
  wire a_c_on_reg__0;
  wire a_c_on_reg_i_2_n_1;
  wire a_c_on_reg_i_2_n_2;
  wire a_c_on_reg_i_2_n_3;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire cool;
  wire cool_IBUF;
  wire cool_reg;
  wire [6:0]current_temp;
  wire [6:0]current_temp_IBUF;
  wire [6:0]current_temp_reg;
  wire [6:0]desired_temp;
  wire [6:0]desired_temp_IBUF;
  wire [6:0]desired_temp_reg;
  wire display_select;
  wire display_select_IBUF;
  wire furnace_on;
  wire furnace_on0;
  wire furnace_on1;
  wire furnace_on_OBUF;
  wire furnace_on_i_10_n_0;
  wire furnace_on_i_3_n_0;
  wire furnace_on_i_4_n_0;
  wire furnace_on_i_5_n_0;
  wire furnace_on_i_6_n_0;
  wire furnace_on_i_7_n_0;
  wire furnace_on_i_8_n_0;
  wire furnace_on_i_9_n_0;
  wire furnace_on_reg_i_2_n_1;
  wire furnace_on_reg_i_2_n_2;
  wire furnace_on_reg_i_2_n_3;
  wire heat;
  wire heat_IBUF;
  wire heat_reg;
  wire [6:0]temp_display;
  wire [6:0]temp_display_OBUF;
  wire [6:0]temp_display_reg;
  wire [3:0]NLW_a_c_on_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_furnace_on_reg_i_2_O_UNCONNECTED;

  OBUF a_c_on_OBUF_inst
       (.I(a_c_on_OBUF),
        .O(a_c_on));
  LUT2 #(
    .INIT(4'h8)) 
    a_c_on_i_1
       (.I0(a_c_on1),
        .I1(cool_reg),
        .O(a_c_on_reg__0));
  LUT4 #(
    .INIT(16'h9009)) 
    a_c_on_i_10
       (.I0(current_temp_reg[0]),
        .I1(desired_temp_reg[0]),
        .I2(current_temp_reg[1]),
        .I3(desired_temp_reg[1]),
        .O(a_c_on_i_10_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    a_c_on_i_3
       (.I0(current_temp_reg[6]),
        .I1(desired_temp_reg[6]),
        .O(a_c_on_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    a_c_on_i_4
       (.I0(current_temp_reg[4]),
        .I1(desired_temp_reg[4]),
        .I2(desired_temp_reg[5]),
        .I3(current_temp_reg[5]),
        .O(a_c_on_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    a_c_on_i_5
       (.I0(current_temp_reg[2]),
        .I1(desired_temp_reg[2]),
        .I2(desired_temp_reg[3]),
        .I3(current_temp_reg[3]),
        .O(a_c_on_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    a_c_on_i_6
       (.I0(current_temp_reg[0]),
        .I1(desired_temp_reg[0]),
        .I2(desired_temp_reg[1]),
        .I3(current_temp_reg[1]),
        .O(a_c_on_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    a_c_on_i_7
       (.I0(desired_temp_reg[6]),
        .I1(current_temp_reg[6]),
        .O(a_c_on_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    a_c_on_i_8
       (.I0(current_temp_reg[4]),
        .I1(desired_temp_reg[4]),
        .I2(current_temp_reg[5]),
        .I3(desired_temp_reg[5]),
        .O(a_c_on_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    a_c_on_i_9
       (.I0(current_temp_reg[2]),
        .I1(desired_temp_reg[2]),
        .I2(current_temp_reg[3]),
        .I3(desired_temp_reg[3]),
        .O(a_c_on_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    a_c_on_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_c_on_reg__0),
        .Q(a_c_on_OBUF),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 a_c_on_reg_i_2
       (.CI(1'b0),
        .CO({a_c_on1,a_c_on_reg_i_2_n_1,a_c_on_reg_i_2_n_2,a_c_on_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({a_c_on_i_3_n_0,a_c_on_i_4_n_0,a_c_on_i_5_n_0,a_c_on_i_6_n_0}),
        .O(NLW_a_c_on_reg_i_2_O_UNCONNECTED[3:0]),
        .S({a_c_on_i_7_n_0,a_c_on_i_8_n_0,a_c_on_i_9_n_0,a_c_on_i_10_n_0}));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF cool_IBUF_inst
       (.I(cool),
        .O(cool_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    cool_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cool_IBUF),
        .Q(cool_reg),
        .R(1'b0));
  IBUF \current_temp_IBUF[0]_inst 
       (.I(current_temp[0]),
        .O(current_temp_IBUF[0]));
  IBUF \current_temp_IBUF[1]_inst 
       (.I(current_temp[1]),
        .O(current_temp_IBUF[1]));
  IBUF \current_temp_IBUF[2]_inst 
       (.I(current_temp[2]),
        .O(current_temp_IBUF[2]));
  IBUF \current_temp_IBUF[3]_inst 
       (.I(current_temp[3]),
        .O(current_temp_IBUF[3]));
  IBUF \current_temp_IBUF[4]_inst 
       (.I(current_temp[4]),
        .O(current_temp_IBUF[4]));
  IBUF \current_temp_IBUF[5]_inst 
       (.I(current_temp[5]),
        .O(current_temp_IBUF[5]));
  IBUF \current_temp_IBUF[6]_inst 
       (.I(current_temp[6]),
        .O(current_temp_IBUF[6]));
  FDRE #(
    .INIT(1'b0)) 
    \current_temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(current_temp_IBUF[0]),
        .Q(current_temp_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_temp_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(current_temp_IBUF[1]),
        .Q(current_temp_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_temp_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(current_temp_IBUF[2]),
        .Q(current_temp_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_temp_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(current_temp_IBUF[3]),
        .Q(current_temp_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_temp_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(current_temp_IBUF[4]),
        .Q(current_temp_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_temp_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(current_temp_IBUF[5]),
        .Q(current_temp_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_temp_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(current_temp_IBUF[6]),
        .Q(current_temp_reg[6]),
        .R(1'b0));
  IBUF \desired_temp_IBUF[0]_inst 
       (.I(desired_temp[0]),
        .O(desired_temp_IBUF[0]));
  IBUF \desired_temp_IBUF[1]_inst 
       (.I(desired_temp[1]),
        .O(desired_temp_IBUF[1]));
  IBUF \desired_temp_IBUF[2]_inst 
       (.I(desired_temp[2]),
        .O(desired_temp_IBUF[2]));
  IBUF \desired_temp_IBUF[3]_inst 
       (.I(desired_temp[3]),
        .O(desired_temp_IBUF[3]));
  IBUF \desired_temp_IBUF[4]_inst 
       (.I(desired_temp[4]),
        .O(desired_temp_IBUF[4]));
  IBUF \desired_temp_IBUF[5]_inst 
       (.I(desired_temp[5]),
        .O(desired_temp_IBUF[5]));
  IBUF \desired_temp_IBUF[6]_inst 
       (.I(desired_temp[6]),
        .O(desired_temp_IBUF[6]));
  FDRE #(
    .INIT(1'b0)) 
    \desired_temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(desired_temp_IBUF[0]),
        .Q(desired_temp_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \desired_temp_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(desired_temp_IBUF[1]),
        .Q(desired_temp_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \desired_temp_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(desired_temp_IBUF[2]),
        .Q(desired_temp_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \desired_temp_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(desired_temp_IBUF[3]),
        .Q(desired_temp_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \desired_temp_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(desired_temp_IBUF[4]),
        .Q(desired_temp_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \desired_temp_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(desired_temp_IBUF[5]),
        .Q(desired_temp_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \desired_temp_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(desired_temp_IBUF[6]),
        .Q(desired_temp_reg[6]),
        .R(1'b0));
  IBUF display_select_IBUF_inst
       (.I(display_select),
        .O(display_select_IBUF));
  OBUF furnace_on_OBUF_inst
       (.I(furnace_on_OBUF),
        .O(furnace_on));
  LUT2 #(
    .INIT(4'h8)) 
    furnace_on_i_1
       (.I0(furnace_on1),
        .I1(heat_reg),
        .O(furnace_on0));
  LUT4 #(
    .INIT(16'h9009)) 
    furnace_on_i_10
       (.I0(desired_temp_reg[0]),
        .I1(current_temp_reg[0]),
        .I2(desired_temp_reg[1]),
        .I3(current_temp_reg[1]),
        .O(furnace_on_i_10_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    furnace_on_i_3
       (.I0(desired_temp_reg[6]),
        .I1(current_temp_reg[6]),
        .O(furnace_on_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    furnace_on_i_4
       (.I0(desired_temp_reg[4]),
        .I1(current_temp_reg[4]),
        .I2(current_temp_reg[5]),
        .I3(desired_temp_reg[5]),
        .O(furnace_on_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    furnace_on_i_5
       (.I0(desired_temp_reg[2]),
        .I1(current_temp_reg[2]),
        .I2(current_temp_reg[3]),
        .I3(desired_temp_reg[3]),
        .O(furnace_on_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    furnace_on_i_6
       (.I0(desired_temp_reg[0]),
        .I1(current_temp_reg[0]),
        .I2(current_temp_reg[1]),
        .I3(desired_temp_reg[1]),
        .O(furnace_on_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    furnace_on_i_7
       (.I0(current_temp_reg[6]),
        .I1(desired_temp_reg[6]),
        .O(furnace_on_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    furnace_on_i_8
       (.I0(desired_temp_reg[4]),
        .I1(current_temp_reg[4]),
        .I2(desired_temp_reg[5]),
        .I3(current_temp_reg[5]),
        .O(furnace_on_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    furnace_on_i_9
       (.I0(desired_temp_reg[2]),
        .I1(current_temp_reg[2]),
        .I2(desired_temp_reg[3]),
        .I3(current_temp_reg[3]),
        .O(furnace_on_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    furnace_on_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(furnace_on0),
        .Q(furnace_on_OBUF),
        .R(a_c_on_reg__0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 furnace_on_reg_i_2
       (.CI(1'b0),
        .CO({furnace_on1,furnace_on_reg_i_2_n_1,furnace_on_reg_i_2_n_2,furnace_on_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({furnace_on_i_3_n_0,furnace_on_i_4_n_0,furnace_on_i_5_n_0,furnace_on_i_6_n_0}),
        .O(NLW_furnace_on_reg_i_2_O_UNCONNECTED[3:0]),
        .S({furnace_on_i_7_n_0,furnace_on_i_8_n_0,furnace_on_i_9_n_0,furnace_on_i_10_n_0}));
  IBUF heat_IBUF_inst
       (.I(heat),
        .O(heat_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    heat_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(heat_IBUF),
        .Q(heat_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp_display[0]_i_1 
       (.I0(current_temp_reg[0]),
        .I1(desired_temp_reg[0]),
        .I2(display_select_IBUF),
        .O(temp_display_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp_display[1]_i_1 
       (.I0(current_temp_reg[1]),
        .I1(desired_temp_reg[1]),
        .I2(display_select_IBUF),
        .O(temp_display_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp_display[2]_i_1 
       (.I0(current_temp_reg[2]),
        .I1(desired_temp_reg[2]),
        .I2(display_select_IBUF),
        .O(temp_display_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp_display[3]_i_1 
       (.I0(current_temp_reg[3]),
        .I1(desired_temp_reg[3]),
        .I2(display_select_IBUF),
        .O(temp_display_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp_display[4]_i_1 
       (.I0(current_temp_reg[4]),
        .I1(desired_temp_reg[4]),
        .I2(display_select_IBUF),
        .O(temp_display_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp_display[5]_i_1 
       (.I0(current_temp_reg[5]),
        .I1(desired_temp_reg[5]),
        .I2(display_select_IBUF),
        .O(temp_display_reg[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \temp_display[6]_i_1 
       (.I0(current_temp_reg[6]),
        .I1(desired_temp_reg[6]),
        .I2(display_select_IBUF),
        .O(temp_display_reg[6]));
  OBUF \temp_display_OBUF[0]_inst 
       (.I(temp_display_OBUF[0]),
        .O(temp_display[0]));
  OBUF \temp_display_OBUF[1]_inst 
       (.I(temp_display_OBUF[1]),
        .O(temp_display[1]));
  OBUF \temp_display_OBUF[2]_inst 
       (.I(temp_display_OBUF[2]),
        .O(temp_display[2]));
  OBUF \temp_display_OBUF[3]_inst 
       (.I(temp_display_OBUF[3]),
        .O(temp_display[3]));
  OBUF \temp_display_OBUF[4]_inst 
       (.I(temp_display_OBUF[4]),
        .O(temp_display[4]));
  OBUF \temp_display_OBUF[5]_inst 
       (.I(temp_display_OBUF[5]),
        .O(temp_display[5]));
  OBUF \temp_display_OBUF[6]_inst 
       (.I(temp_display_OBUF[6]),
        .O(temp_display[6]));
  FDRE #(
    .INIT(1'b0)) 
    \temp_display_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(temp_display_reg[0]),
        .Q(temp_display_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_display_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(temp_display_reg[1]),
        .Q(temp_display_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_display_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(temp_display_reg[2]),
        .Q(temp_display_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_display_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(temp_display_reg[3]),
        .Q(temp_display_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_display_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(temp_display_reg[4]),
        .Q(temp_display_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_display_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(temp_display_reg[5]),
        .Q(temp_display_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_display_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(temp_display_reg[6]),
        .Q(temp_display_OBUF[6]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
