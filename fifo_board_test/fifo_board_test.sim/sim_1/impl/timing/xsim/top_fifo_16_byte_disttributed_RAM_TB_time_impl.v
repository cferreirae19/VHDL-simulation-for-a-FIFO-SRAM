// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Sep 15 16:06:44 2022
// Host        : LAPTOP-PB11LJ5H running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/cferr/Desktop/Laboratorio
//               CEP/P1/fifo_board_test/fifo_board_test.sim/sim_1/impl/timing/xsim/top_fifo_16_byte_disttributed_RAM_TB_time_impl.v}
// Design      : top_fifo_16_byte_disttributed_RAM
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD1
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module Inst_N_bits_ascending_counter_ptr_read
   (Q,
    D,
    \count_reg[3]_0 ,
    sync_reset_IBUF,
    E,
    q_int_reg,
    push_IBUF,
    q_int_reg_0,
    full_OBUF,
    clk);
  output [3:0]Q;
  output [0:0]D;
  output \count_reg[3]_0 ;
  input sync_reset_IBUF;
  input [0:0]E;
  input [2:0]q_int_reg;
  input push_IBUF;
  input [0:0]q_int_reg_0;
  input full_OBUF;
  input clk;

  wire [0:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire clk;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count_reg[3]_0 ;
  wire full_OBUF;
  wire push_IBUF;
  wire q_int_i_2__0_n_0;
  wire [2:0]q_int_reg;
  wire [0:0]q_int_reg_0;
  wire sync_reset_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(Q[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \count[3]_i_1 
       (.I0(sync_reset_IBUF),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(E),
        .O(\count[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(D));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\count[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\count[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\count[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D),
        .Q(Q[3]),
        .R(\count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF82008200)) 
    q_int_i_1__0
       (.I0(push_IBUF),
        .I1(q_int_reg_0),
        .I2(Q[3]),
        .I3(q_int_i_2__0_n_0),
        .I4(E),
        .I5(full_OBUF),
        .O(\count_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0041820014000082)) 
    q_int_i_2__0
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(q_int_reg[2]),
        .I3(q_int_reg[1]),
        .I4(q_int_reg[0]),
        .I5(Q[1]),
        .O(q_int_i_2__0_n_0));
endmodule

module Inst_N_bits_ascending_counter_ptr_write
   (Q,
    D,
    \count_reg[3]_0 ,
    sync_reset_IBUF,
    E,
    q_int_reg,
    pop_IBUF,
    q_int_reg_0,
    empty_OBUF,
    clk);
  output [3:0]Q;
  output [0:0]D;
  output \count_reg[3]_0 ;
  input sync_reset_IBUF;
  input [0:0]E;
  input [2:0]q_int_reg;
  input pop_IBUF;
  input [0:0]q_int_reg_0;
  input empty_OBUF;
  input clk;

  wire [0:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire clk;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[1]_i_1__0_n_0 ;
  wire \count[2]_i_1__0_n_0 ;
  wire \count[3]_i_1__0_n_0 ;
  wire \count_reg[3]_0 ;
  wire empty_OBUF;
  wire pop_IBUF;
  wire q_int_i_2_n_0;
  wire [2:0]q_int_reg;
  wire [0:0]q_int_reg_0;
  wire sync_reset_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \count[3]_i_1__0 
       (.I0(sync_reset_IBUF),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(E),
        .O(\count[3]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_2__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(D));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\count[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(\count[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\count[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\count[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D),
        .Q(Q[3]),
        .R(\count[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF82008200)) 
    q_int_i_1
       (.I0(pop_IBUF),
        .I1(q_int_reg_0),
        .I2(Q[3]),
        .I3(q_int_i_2_n_0),
        .I4(E),
        .I5(empty_OBUF),
        .O(\count_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0041820014000082)) 
    q_int_i_2
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(q_int_reg[2]),
        .I3(q_int_reg[1]),
        .I4(q_int_reg[0]),
        .I5(Q[1]),
        .O(q_int_i_2_n_0));
endmodule

module Inst_ctrl_fifo
   (empty_OBUF,
    full_OBUF,
    E,
    cable6,
    q_int_reg,
    clk,
    sync_reset_IBUF,
    q_int_reg_0,
    pop_IBUF,
    push_IBUF);
  output empty_OBUF;
  output full_OBUF;
  output [0:0]E;
  output cable6;
  input q_int_reg;
  input clk;
  input sync_reset_IBUF;
  input q_int_reg_0;
  input pop_IBUF;
  input push_IBUF;

  wire [0:0]E;
  wire cable6;
  wire clk;
  wire empty_OBUF;
  wire full_OBUF;
  wire pop_IBUF;
  wire push_IBUF;
  wire q_int_reg;
  wire q_int_reg_0;
  wire sync_reset_IBUF;

  empty_fifo_flip_flop EMPTY_JK
       (.E(E),
        .clk(clk),
        .empty_OBUF(empty_OBUF),
        .pop_IBUF(pop_IBUF),
        .q_int_reg_0(q_int_reg),
        .sync_reset_IBUF(sync_reset_IBUF));
  full_fifo_flip_flop FULL_JK
       (.cable6(cable6),
        .clk(clk),
        .full_OBUF(full_OBUF),
        .push_IBUF(push_IBUF),
        .q_int_reg_0(q_int_reg_0),
        .sync_reset_IBUF(sync_reset_IBUF));
endmodule

module dual_port_distributed_ram_async_read
   (dout,
    clk,
    cable6,
    data_in,
    Q,
    write_addr);
  output [7:0]dout;
  input clk;
  input cable6;
  input [7:0]data_in;
  input [3:0]Q;
  input [3:0]write_addr;

  wire [3:0]Q;
  wire cable6;
  wire clk;
  wire [7:0]data_in;
  wire [7:0]dout;
  wire [3:0]write_addr;
  wire [1:0]NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_6_7_DOD_UNCONNECTED;

  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_UNIQ_BASE_ RAM_reg_0_15_0_5
       (.ADDRA({1'b0,Q}),
        .ADDRB({1'b0,Q}),
        .ADDRC({1'b0,Q}),
        .ADDRD({1'b0,write_addr}),
        .DIA(data_in[1:0]),
        .DIB(data_in[3:2]),
        .DIC(data_in[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(dout[1:0]),
        .DOB(dout[3:2]),
        .DOC(dout[5:4]),
        .DOD(NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(cable6));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32M_HD1 RAM_reg_0_15_6_7
       (.ADDRA({1'b0,Q}),
        .ADDRB({1'b0,Q}),
        .ADDRC({1'b0,Q}),
        .ADDRD({1'b0,write_addr}),
        .DIA(data_in[7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(dout[7:6]),
        .DOB(NLW_RAM_reg_0_15_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_RAM_reg_0_15_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_RAM_reg_0_15_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(cable6));
endmodule

module empty_fifo_flip_flop
   (empty_OBUF,
    E,
    q_int_reg_0,
    clk,
    sync_reset_IBUF,
    pop_IBUF);
  output empty_OBUF;
  output [0:0]E;
  input q_int_reg_0;
  input clk;
  input sync_reset_IBUF;
  input pop_IBUF;

  wire [0:0]E;
  wire clk;
  wire empty_OBUF;
  wire pop_IBUF;
  wire q_int_reg_0;
  wire sync_reset_IBUF;

  LUT2 #(
    .INIT(4'h2)) 
    \count[3]_i_2 
       (.I0(pop_IBUF),
        .I1(empty_OBUF),
        .O(E));
  FDPE #(
    .INIT(1'b1)) 
    q_int_reg
       (.C(clk),
        .CE(1'b1),
        .D(q_int_reg_0),
        .PRE(sync_reset_IBUF),
        .Q(empty_OBUF));
endmodule

module full_fifo_flip_flop
   (full_OBUF,
    cable6,
    q_int_reg_0,
    clk,
    sync_reset_IBUF,
    push_IBUF);
  output full_OBUF;
  output cable6;
  input q_int_reg_0;
  input clk;
  input sync_reset_IBUF;
  input push_IBUF;

  wire cable6;
  wire clk;
  wire full_OBUF;
  wire push_IBUF;
  wire q_int_reg_0;
  wire sync_reset_IBUF;

  LUT2 #(
    .INIT(4'h2)) 
    RAM_reg_0_15_0_5_i_1
       (.I0(push_IBUF),
        .I1(full_OBUF),
        .O(cable6));
  FDCE #(
    .INIT(1'b0)) 
    q_int_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(sync_reset_IBUF),
        .D(q_int_reg_0),
        .Q(full_OBUF));
endmodule

(* ECO_CHECKSUM = "3da105cf" *) 
(* NotValidForBitStream *)
module top_fifo_16_byte_disttributed_RAM
   (clk,
    sync_reset,
    data_in,
    pop,
    push,
    data_out,
    empty,
    full);
  input clk;
  input sync_reset;
  input [7:0]data_in;
  input pop;
  input push;
  output [7:0]data_out;
  output empty;
  output full;

  wire COUNTER_PTR_READ_n_4;
  wire COUNTER_PTR_READ_n_5;
  wire COUNTER_PTR_WRITE_n_4;
  wire COUNTER_PTR_WRITE_n_5;
  wire [3:0]cable1;
  wire [3:0]cable2;
  wire cable3;
  wire cable6;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]data_in;
  wire [7:0]data_in_IBUF;
  wire [7:0]data_out;
  wire [7:0]data_out_OBUF;
  wire empty;
  wire empty_OBUF;
  wire full;
  wire full_OBUF;
  wire pop;
  wire pop_IBUF;
  wire push;
  wire push_IBUF;
  wire sync_reset;
  wire sync_reset_IBUF;

initial begin
 $sdf_annotate("top_fifo_16_byte_disttributed_RAM_TB_time_impl.sdf",,,,"tool_control");
end
  Inst_N_bits_ascending_counter_ptr_read COUNTER_PTR_READ
       (.D(COUNTER_PTR_READ_n_4),
        .E(cable3),
        .Q(cable1),
        .clk(clk_IBUF_BUFG),
        .\count_reg[3]_0 (COUNTER_PTR_READ_n_5),
        .full_OBUF(full_OBUF),
        .push_IBUF(push_IBUF),
        .q_int_reg(cable2[2:0]),
        .q_int_reg_0(COUNTER_PTR_WRITE_n_4),
        .sync_reset_IBUF(sync_reset_IBUF));
  Inst_N_bits_ascending_counter_ptr_write COUNTER_PTR_WRITE
       (.D(COUNTER_PTR_WRITE_n_4),
        .E(cable6),
        .Q(cable2),
        .clk(clk_IBUF_BUFG),
        .\count_reg[3]_0 (COUNTER_PTR_WRITE_n_5),
        .empty_OBUF(empty_OBUF),
        .pop_IBUF(pop_IBUF),
        .q_int_reg(cable1[2:0]),
        .q_int_reg_0(COUNTER_PTR_READ_n_4),
        .sync_reset_IBUF(sync_reset_IBUF));
  Inst_ctrl_fifo CTRL_FIFO
       (.E(cable3),
        .cable6(cable6),
        .clk(clk_IBUF_BUFG),
        .empty_OBUF(empty_OBUF),
        .full_OBUF(full_OBUF),
        .pop_IBUF(pop_IBUF),
        .push_IBUF(push_IBUF),
        .q_int_reg(COUNTER_PTR_WRITE_n_5),
        .q_int_reg_0(COUNTER_PTR_READ_n_5),
        .sync_reset_IBUF(sync_reset_IBUF));
  dual_port_distributed_ram_async_read MEMORIA
       (.Q(cable1),
        .cable6(cable6),
        .clk(clk_IBUF_BUFG),
        .data_in(data_in_IBUF),
        .dout(data_out_OBUF),
        .write_addr(cable2));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \data_in_IBUF[0]_inst 
       (.I(data_in[0]),
        .O(data_in_IBUF[0]));
  IBUF \data_in_IBUF[1]_inst 
       (.I(data_in[1]),
        .O(data_in_IBUF[1]));
  IBUF \data_in_IBUF[2]_inst 
       (.I(data_in[2]),
        .O(data_in_IBUF[2]));
  IBUF \data_in_IBUF[3]_inst 
       (.I(data_in[3]),
        .O(data_in_IBUF[3]));
  IBUF \data_in_IBUF[4]_inst 
       (.I(data_in[4]),
        .O(data_in_IBUF[4]));
  IBUF \data_in_IBUF[5]_inst 
       (.I(data_in[5]),
        .O(data_in_IBUF[5]));
  IBUF \data_in_IBUF[6]_inst 
       (.I(data_in[6]),
        .O(data_in_IBUF[6]));
  IBUF \data_in_IBUF[7]_inst 
       (.I(data_in[7]),
        .O(data_in_IBUF[7]));
  OBUF \data_out_OBUF[0]_inst 
       (.I(data_out_OBUF[0]),
        .O(data_out[0]));
  OBUF \data_out_OBUF[1]_inst 
       (.I(data_out_OBUF[1]),
        .O(data_out[1]));
  OBUF \data_out_OBUF[2]_inst 
       (.I(data_out_OBUF[2]),
        .O(data_out[2]));
  OBUF \data_out_OBUF[3]_inst 
       (.I(data_out_OBUF[3]),
        .O(data_out[3]));
  OBUF \data_out_OBUF[4]_inst 
       (.I(data_out_OBUF[4]),
        .O(data_out[4]));
  OBUF \data_out_OBUF[5]_inst 
       (.I(data_out_OBUF[5]),
        .O(data_out[5]));
  OBUF \data_out_OBUF[6]_inst 
       (.I(data_out_OBUF[6]),
        .O(data_out[6]));
  OBUF \data_out_OBUF[7]_inst 
       (.I(data_out_OBUF[7]),
        .O(data_out[7]));
  OBUF empty_OBUF_inst
       (.I(empty_OBUF),
        .O(empty));
  OBUF full_OBUF_inst
       (.I(full_OBUF),
        .O(full));
  IBUF pop_IBUF_inst
       (.I(pop),
        .O(pop_IBUF));
  IBUF push_IBUF_inst
       (.I(push),
        .O(push_IBUF));
  IBUF sync_reset_IBUF_inst
       (.I(sync_reset),
        .O(sync_reset_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
