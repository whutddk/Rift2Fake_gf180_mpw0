// SPDX-FileCopyrightText: 2022 Wuhan University of Technology
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

module MaxPeriodFibonacciLFSR(
  input   clock,
  input   reset,
  input   io_increment,
  output  io_out_0,
  output  io_out_1,
  output  io_out_2,
  output  io_out_3,
  output  io_out_4,
  output  io_out_5,
  output  io_out_6,
  output  io_out_7,
  output  io_out_8,
  output  io_out_9,
  output  io_out_10,
  output  io_out_11,
  output  io_out_12,
  output  io_out_13,
  output  io_out_14,
  output  io_out_15
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
`endif // RANDOMIZE_REG_INIT
  reg  state_0; // @[PRNG.scala 55:49]
  reg  state_1; // @[PRNG.scala 55:49]
  reg  state_2; // @[PRNG.scala 55:49]
  reg  state_3; // @[PRNG.scala 55:49]
  reg  state_4; // @[PRNG.scala 55:49]
  reg  state_5; // @[PRNG.scala 55:49]
  reg  state_6; // @[PRNG.scala 55:49]
  reg  state_7; // @[PRNG.scala 55:49]
  reg  state_8; // @[PRNG.scala 55:49]
  reg  state_9; // @[PRNG.scala 55:49]
  reg  state_10; // @[PRNG.scala 55:49]
  reg  state_11; // @[PRNG.scala 55:49]
  reg  state_12; // @[PRNG.scala 55:49]
  reg  state_13; // @[PRNG.scala 55:49]
  reg  state_14; // @[PRNG.scala 55:49]
  reg  state_15; // @[PRNG.scala 55:49]
  wire  _T_2 = state_15 ^ state_13 ^ state_12 ^ state_10; // @[LFSR.scala 15:41]
  wire  _GEN_0 = io_increment ? _T_2 : state_0; // @[PRNG.scala 69:22 70:11 55:49]
  assign io_out_0 = state_0; // @[PRNG.scala 78:10]
  assign io_out_1 = state_1; // @[PRNG.scala 78:10]
  assign io_out_2 = state_2; // @[PRNG.scala 78:10]
  assign io_out_3 = state_3; // @[PRNG.scala 78:10]
  assign io_out_4 = state_4; // @[PRNG.scala 78:10]
  assign io_out_5 = state_5; // @[PRNG.scala 78:10]
  assign io_out_6 = state_6; // @[PRNG.scala 78:10]
  assign io_out_7 = state_7; // @[PRNG.scala 78:10]
  assign io_out_8 = state_8; // @[PRNG.scala 78:10]
  assign io_out_9 = state_9; // @[PRNG.scala 78:10]
  assign io_out_10 = state_10; // @[PRNG.scala 78:10]
  assign io_out_11 = state_11; // @[PRNG.scala 78:10]
  assign io_out_12 = state_12; // @[PRNG.scala 78:10]
  assign io_out_13 = state_13; // @[PRNG.scala 78:10]
  assign io_out_14 = state_14; // @[PRNG.scala 78:10]
  assign io_out_15 = state_15; // @[PRNG.scala 78:10]
  always @(posedge clock) begin
    state_0 <= reset | _GEN_0; // @[PRNG.scala 55:{49,49}]
    if (reset) begin // @[PRNG.scala 55:49]
      state_1 <= 1'h0; // @[PRNG.scala 55:49]
    end else if (io_increment) begin // @[PRNG.scala 69:22]
      state_1 <= state_0; // @[PRNG.scala 70:11]
    end
    if (reset) begin // @[PRNG.scala 55:49]
      state_2 <= 1'h0; // @[PRNG.scala 55:49]
    end else if (io_increment) begin // @[PRNG.scala 69:22]
      state_2 <= state_1; // @[PRNG.scala 70:11]
    end
    if (reset) begin // @[PRNG.scala 55:49]
      state_3 <= 1'h0; // @[PRNG.scala 55:49]
    end else if (io_increment) begin // @[PRNG.scala 69:22]
      state_3 <= state_2; // @[PRNG.scala 70:11]
    end
    if (reset) begin // @[PRNG.scala 55:49]
      state_4 <= 1'h0; // @[PRNG.scala 55:49]
    end else if (io_increment) begin // @[PRNG.scala 69:22]
      state_4 <= state_3; // @[PRNG.scala 70:11]
    end
    if (reset) begin // @[PRNG.scala 55:49]
      state_5 <= 1'h0; // @[PRNG.scala 55:49]
    end else if (io_increment) begin // @[PRNG.scala 69:22]
      state_5 <= state_4; // @[PRNG.scala 70:11]
    end
    if (reset) begin // @[PRNG.scala 55:49]
      state_6 <= 1'h0; // @[PRNG.scala 55:49]
    end else if (io_increment) begin // @[PRNG.scala 69:22]
      state_6 <= state_5; // @[PRNG.scala 70:11]
    end
    if (reset) begin // @[PRNG.scala 55:49]
      state_7 <= 1'h0; // @[PRNG.scala 55:49]
    end else if (io_increment) begin // @[PRNG.scala 69:22]
      state_7 <= state_6; // @[PRNG.scala 70:11]
    end
    if (reset) begin // @[PRNG.scala 55:49]
      state_8 <= 1'h0; // @[PRNG.scala 55:49]
    end else if (io_increment) begin // @[PRNG.scala 69:22]
      state_8 <= state_7; // @[PRNG.scala 70:11]
    end
    if (reset) begin // @[PRNG.scala 55:49]
      state_9 <= 1'h0; // @[PRNG.scala 55:49]
    end else if (io_increment) begin // @[PRNG.scala 69:22]
      state_9 <= state_8; // @[PRNG.scala 70:11]
    end
    if (reset) begin // @[PRNG.scala 55:49]
      state_10 <= 1'h0; // @[PRNG.scala 55:49]
    end else if (io_increment) begin // @[PRNG.scala 69:22]
      state_10 <= state_9; // @[PRNG.scala 70:11]
    end
    if (reset) begin // @[PRNG.scala 55:49]
      state_11 <= 1'h0; // @[PRNG.scala 55:49]
    end else if (io_increment) begin // @[PRNG.scala 69:22]
      state_11 <= state_10; // @[PRNG.scala 70:11]
    end
    if (reset) begin // @[PRNG.scala 55:49]
      state_12 <= 1'h0; // @[PRNG.scala 55:49]
    end else if (io_increment) begin // @[PRNG.scala 69:22]
      state_12 <= state_11; // @[PRNG.scala 70:11]
    end
    if (reset) begin // @[PRNG.scala 55:49]
      state_13 <= 1'h0; // @[PRNG.scala 55:49]
    end else if (io_increment) begin // @[PRNG.scala 69:22]
      state_13 <= state_12; // @[PRNG.scala 70:11]
    end
    if (reset) begin // @[PRNG.scala 55:49]
      state_14 <= 1'h0; // @[PRNG.scala 55:49]
    end else if (io_increment) begin // @[PRNG.scala 69:22]
      state_14 <= state_13; // @[PRNG.scala 70:11]
    end
    if (reset) begin // @[PRNG.scala 55:49]
      state_15 <= 1'h0; // @[PRNG.scala 55:49]
    end else if (io_increment) begin // @[PRNG.scala 69:22]
      state_15 <= state_14; // @[PRNG.scala 70:11]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  state_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  state_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  state_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  state_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  state_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  state_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  state_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  state_7 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  state_8 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  state_9 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  state_10 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  state_11 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  state_12 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  state_13 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  state_14 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  state_15 = _RAND_15[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Sky130BLFSR(
  input        clock,
  input        reset,
  output [6:0] io_num_0,
  output [6:0] io_num_1,
  output [6:0] io_num_2,
  output [6:0] io_num_3,
  input        io_lock
);
  wire  lfsr_prng_clock; // @[PRNG.scala 91:22]
  wire  lfsr_prng_reset; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_increment; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_0; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_1; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_2; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_3; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_4; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_5; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_6; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_7; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_8; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_9; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_10; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_11; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_12; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_13; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_14; // @[PRNG.scala 91:22]
  wire  lfsr_prng_io_out_15; // @[PRNG.scala 91:22]
  wire [7:0] lfsr_lo = {lfsr_prng_io_out_7,lfsr_prng_io_out_6,lfsr_prng_io_out_5,lfsr_prng_io_out_4,lfsr_prng_io_out_3,
    lfsr_prng_io_out_2,lfsr_prng_io_out_1,lfsr_prng_io_out_0}; // @[PRNG.scala 95:17]
  wire [15:0] lfsr = {lfsr_prng_io_out_15,lfsr_prng_io_out_14,lfsr_prng_io_out_13,lfsr_prng_io_out_12,
    lfsr_prng_io_out_11,lfsr_prng_io_out_10,lfsr_prng_io_out_9,lfsr_prng_io_out_8,lfsr_lo}; // @[PRNG.scala 95:17]
  wire  _io_num_0_T_1 = lfsr[3:0] == 4'h0; // @[Sky130BLFSR.scala 56:27]
  wire  _io_num_0_T_3 = lfsr[3:0] == 4'h1; // @[Sky130BLFSR.scala 57:27]
  wire  _io_num_0_T_5 = lfsr[3:0] == 4'h2; // @[Sky130BLFSR.scala 58:27]
  wire  _io_num_0_T_7 = lfsr[3:0] == 4'h3; // @[Sky130BLFSR.scala 59:27]
  wire  _io_num_0_T_9 = lfsr[3:0] == 4'h4; // @[Sky130BLFSR.scala 60:27]
  wire  _io_num_0_T_11 = lfsr[3:0] == 4'h5; // @[Sky130BLFSR.scala 61:27]
  wire  _io_num_0_T_13 = lfsr[3:0] == 4'h6; // @[Sky130BLFSR.scala 62:27]
  wire  _io_num_0_T_15 = lfsr[3:0] == 4'h7; // @[Sky130BLFSR.scala 63:27]
  wire  _io_num_0_T_19 = lfsr[3:0] == 4'h9; // @[Sky130BLFSR.scala 65:27]
  wire  _io_num_0_T_21 = lfsr[3:0] == 4'ha; // @[Sky130BLFSR.scala 66:27]
  wire  _io_num_0_T_23 = lfsr[3:0] == 4'hb; // @[Sky130BLFSR.scala 67:27]
  wire  _io_num_0_T_25 = lfsr[3:0] == 4'hc; // @[Sky130BLFSR.scala 68:27]
  wire  _io_num_0_T_27 = lfsr[3:0] == 4'hd; // @[Sky130BLFSR.scala 69:27]
  wire  _io_num_0_T_29 = lfsr[3:0] == 4'he; // @[Sky130BLFSR.scala 70:27]
  wire  _io_num_0_T_31 = lfsr[3:0] == 4'hf; // @[Sky130BLFSR.scala 71:27]
  wire [6:0] _io_num_0_T_32 = _io_num_0_T_1 ? 7'h40 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_num_0_T_33 = _io_num_0_T_3 ? 7'h79 : 7'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_num_0_T_34 = _io_num_0_T_5 ? 6'h24 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_num_0_T_35 = _io_num_0_T_7 ? 6'h30 : 6'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_num_0_T_36 = _io_num_0_T_9 ? 5'h19 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_num_0_T_37 = _io_num_0_T_11 ? 5'h12 : 5'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_num_0_T_38 = _io_num_0_T_13 ? 2'h2 : 2'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_num_0_T_39 = _io_num_0_T_15 ? 7'h78 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_num_0_T_41 = _io_num_0_T_19 ? 7'h6f : 7'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_num_0_T_42 = _io_num_0_T_21 ? 4'h8 : 4'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_num_0_T_43 = _io_num_0_T_23 ? 2'h3 : 2'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_num_0_T_44 = _io_num_0_T_25 ? 7'h46 : 7'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_num_0_T_45 = _io_num_0_T_27 ? 6'h21 : 6'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_num_0_T_46 = _io_num_0_T_29 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_num_0_T_47 = _io_num_0_T_31 ? 4'he : 4'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_num_0_T_48 = _io_num_0_T_32 | _io_num_0_T_33; // @[Mux.scala 27:73]
  wire [6:0] _GEN_4 = {{1'd0}, _io_num_0_T_34}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_0_T_49 = _io_num_0_T_48 | _GEN_4; // @[Mux.scala 27:73]
  wire [6:0] _GEN_5 = {{1'd0}, _io_num_0_T_35}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_0_T_50 = _io_num_0_T_49 | _GEN_5; // @[Mux.scala 27:73]
  wire [6:0] _GEN_6 = {{2'd0}, _io_num_0_T_36}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_0_T_51 = _io_num_0_T_50 | _GEN_6; // @[Mux.scala 27:73]
  wire [6:0] _GEN_7 = {{2'd0}, _io_num_0_T_37}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_0_T_52 = _io_num_0_T_51 | _GEN_7; // @[Mux.scala 27:73]
  wire [6:0] _GEN_8 = {{5'd0}, _io_num_0_T_38}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_0_T_53 = _io_num_0_T_52 | _GEN_8; // @[Mux.scala 27:73]
  wire [6:0] _io_num_0_T_54 = _io_num_0_T_53 | _io_num_0_T_39; // @[Mux.scala 27:73]
  wire [6:0] _io_num_0_T_56 = _io_num_0_T_54 | _io_num_0_T_41; // @[Mux.scala 27:73]
  wire [6:0] _GEN_9 = {{3'd0}, _io_num_0_T_42}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_0_T_57 = _io_num_0_T_56 | _GEN_9; // @[Mux.scala 27:73]
  wire [6:0] _GEN_10 = {{5'd0}, _io_num_0_T_43}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_0_T_58 = _io_num_0_T_57 | _GEN_10; // @[Mux.scala 27:73]
  wire [6:0] _io_num_0_T_59 = _io_num_0_T_58 | _io_num_0_T_44; // @[Mux.scala 27:73]
  wire [6:0] _GEN_11 = {{1'd0}, _io_num_0_T_45}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_0_T_60 = _io_num_0_T_59 | _GEN_11; // @[Mux.scala 27:73]
  wire [6:0] _GEN_12 = {{4'd0}, _io_num_0_T_46}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_0_T_61 = _io_num_0_T_60 | _GEN_12; // @[Mux.scala 27:73]
  wire [6:0] _GEN_13 = {{3'd0}, _io_num_0_T_47}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_0_T_62 = _io_num_0_T_61 | _GEN_13; // @[Mux.scala 27:73]
  wire  _io_num_1_T_1 = lfsr[7:4] == 4'h0; // @[Sky130BLFSR.scala 56:27]
  wire  _io_num_1_T_3 = lfsr[7:4] == 4'h1; // @[Sky130BLFSR.scala 57:27]
  wire  _io_num_1_T_5 = lfsr[7:4] == 4'h2; // @[Sky130BLFSR.scala 58:27]
  wire  _io_num_1_T_7 = lfsr[7:4] == 4'h3; // @[Sky130BLFSR.scala 59:27]
  wire  _io_num_1_T_9 = lfsr[7:4] == 4'h4; // @[Sky130BLFSR.scala 60:27]
  wire  _io_num_1_T_11 = lfsr[7:4] == 4'h5; // @[Sky130BLFSR.scala 61:27]
  wire  _io_num_1_T_13 = lfsr[7:4] == 4'h6; // @[Sky130BLFSR.scala 62:27]
  wire  _io_num_1_T_15 = lfsr[7:4] == 4'h7; // @[Sky130BLFSR.scala 63:27]
  wire  _io_num_1_T_19 = lfsr[7:4] == 4'h9; // @[Sky130BLFSR.scala 65:27]
  wire  _io_num_1_T_21 = lfsr[7:4] == 4'ha; // @[Sky130BLFSR.scala 66:27]
  wire  _io_num_1_T_23 = lfsr[7:4] == 4'hb; // @[Sky130BLFSR.scala 67:27]
  wire  _io_num_1_T_25 = lfsr[7:4] == 4'hc; // @[Sky130BLFSR.scala 68:27]
  wire  _io_num_1_T_27 = lfsr[7:4] == 4'hd; // @[Sky130BLFSR.scala 69:27]
  wire  _io_num_1_T_29 = lfsr[7:4] == 4'he; // @[Sky130BLFSR.scala 70:27]
  wire  _io_num_1_T_31 = lfsr[7:4] == 4'hf; // @[Sky130BLFSR.scala 71:27]
  wire [6:0] _io_num_1_T_32 = _io_num_1_T_1 ? 7'h40 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_num_1_T_33 = _io_num_1_T_3 ? 7'h79 : 7'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_num_1_T_34 = _io_num_1_T_5 ? 6'h24 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_num_1_T_35 = _io_num_1_T_7 ? 6'h30 : 6'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_num_1_T_36 = _io_num_1_T_9 ? 5'h19 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_num_1_T_37 = _io_num_1_T_11 ? 5'h12 : 5'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_num_1_T_38 = _io_num_1_T_13 ? 2'h2 : 2'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_num_1_T_39 = _io_num_1_T_15 ? 7'h78 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_num_1_T_41 = _io_num_1_T_19 ? 7'h6f : 7'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_num_1_T_42 = _io_num_1_T_21 ? 4'h8 : 4'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_num_1_T_43 = _io_num_1_T_23 ? 2'h3 : 2'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_num_1_T_44 = _io_num_1_T_25 ? 7'h46 : 7'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_num_1_T_45 = _io_num_1_T_27 ? 6'h21 : 6'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_num_1_T_46 = _io_num_1_T_29 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_num_1_T_47 = _io_num_1_T_31 ? 4'he : 4'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_num_1_T_48 = _io_num_1_T_32 | _io_num_1_T_33; // @[Mux.scala 27:73]
  wire [6:0] _GEN_14 = {{1'd0}, _io_num_1_T_34}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_1_T_49 = _io_num_1_T_48 | _GEN_14; // @[Mux.scala 27:73]
  wire [6:0] _GEN_15 = {{1'd0}, _io_num_1_T_35}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_1_T_50 = _io_num_1_T_49 | _GEN_15; // @[Mux.scala 27:73]
  wire [6:0] _GEN_16 = {{2'd0}, _io_num_1_T_36}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_1_T_51 = _io_num_1_T_50 | _GEN_16; // @[Mux.scala 27:73]
  wire [6:0] _GEN_17 = {{2'd0}, _io_num_1_T_37}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_1_T_52 = _io_num_1_T_51 | _GEN_17; // @[Mux.scala 27:73]
  wire [6:0] _GEN_18 = {{5'd0}, _io_num_1_T_38}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_1_T_53 = _io_num_1_T_52 | _GEN_18; // @[Mux.scala 27:73]
  wire [6:0] _io_num_1_T_54 = _io_num_1_T_53 | _io_num_1_T_39; // @[Mux.scala 27:73]
  wire [6:0] _io_num_1_T_56 = _io_num_1_T_54 | _io_num_1_T_41; // @[Mux.scala 27:73]
  wire [6:0] _GEN_19 = {{3'd0}, _io_num_1_T_42}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_1_T_57 = _io_num_1_T_56 | _GEN_19; // @[Mux.scala 27:73]
  wire [6:0] _GEN_20 = {{5'd0}, _io_num_1_T_43}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_1_T_58 = _io_num_1_T_57 | _GEN_20; // @[Mux.scala 27:73]
  wire [6:0] _io_num_1_T_59 = _io_num_1_T_58 | _io_num_1_T_44; // @[Mux.scala 27:73]
  wire [6:0] _GEN_21 = {{1'd0}, _io_num_1_T_45}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_1_T_60 = _io_num_1_T_59 | _GEN_21; // @[Mux.scala 27:73]
  wire [6:0] _GEN_22 = {{4'd0}, _io_num_1_T_46}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_1_T_61 = _io_num_1_T_60 | _GEN_22; // @[Mux.scala 27:73]
  wire [6:0] _GEN_23 = {{3'd0}, _io_num_1_T_47}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_1_T_62 = _io_num_1_T_61 | _GEN_23; // @[Mux.scala 27:73]
  wire  _io_num_2_T_1 = lfsr[11:8] == 4'h0; // @[Sky130BLFSR.scala 56:27]
  wire  _io_num_2_T_3 = lfsr[11:8] == 4'h1; // @[Sky130BLFSR.scala 57:27]
  wire  _io_num_2_T_5 = lfsr[11:8] == 4'h2; // @[Sky130BLFSR.scala 58:27]
  wire  _io_num_2_T_7 = lfsr[11:8] == 4'h3; // @[Sky130BLFSR.scala 59:27]
  wire  _io_num_2_T_9 = lfsr[11:8] == 4'h4; // @[Sky130BLFSR.scala 60:27]
  wire  _io_num_2_T_11 = lfsr[11:8] == 4'h5; // @[Sky130BLFSR.scala 61:27]
  wire  _io_num_2_T_13 = lfsr[11:8] == 4'h6; // @[Sky130BLFSR.scala 62:27]
  wire  _io_num_2_T_15 = lfsr[11:8] == 4'h7; // @[Sky130BLFSR.scala 63:27]
  wire  _io_num_2_T_19 = lfsr[11:8] == 4'h9; // @[Sky130BLFSR.scala 65:27]
  wire  _io_num_2_T_21 = lfsr[11:8] == 4'ha; // @[Sky130BLFSR.scala 66:27]
  wire  _io_num_2_T_23 = lfsr[11:8] == 4'hb; // @[Sky130BLFSR.scala 67:27]
  wire  _io_num_2_T_25 = lfsr[11:8] == 4'hc; // @[Sky130BLFSR.scala 68:27]
  wire  _io_num_2_T_27 = lfsr[11:8] == 4'hd; // @[Sky130BLFSR.scala 69:27]
  wire  _io_num_2_T_29 = lfsr[11:8] == 4'he; // @[Sky130BLFSR.scala 70:27]
  wire  _io_num_2_T_31 = lfsr[11:8] == 4'hf; // @[Sky130BLFSR.scala 71:27]
  wire [6:0] _io_num_2_T_32 = _io_num_2_T_1 ? 7'h40 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_num_2_T_33 = _io_num_2_T_3 ? 7'h79 : 7'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_num_2_T_34 = _io_num_2_T_5 ? 6'h24 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_num_2_T_35 = _io_num_2_T_7 ? 6'h30 : 6'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_num_2_T_36 = _io_num_2_T_9 ? 5'h19 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_num_2_T_37 = _io_num_2_T_11 ? 5'h12 : 5'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_num_2_T_38 = _io_num_2_T_13 ? 2'h2 : 2'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_num_2_T_39 = _io_num_2_T_15 ? 7'h78 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_num_2_T_41 = _io_num_2_T_19 ? 7'h6f : 7'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_num_2_T_42 = _io_num_2_T_21 ? 4'h8 : 4'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_num_2_T_43 = _io_num_2_T_23 ? 2'h3 : 2'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_num_2_T_44 = _io_num_2_T_25 ? 7'h46 : 7'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_num_2_T_45 = _io_num_2_T_27 ? 6'h21 : 6'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_num_2_T_46 = _io_num_2_T_29 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_num_2_T_47 = _io_num_2_T_31 ? 4'he : 4'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_num_2_T_48 = _io_num_2_T_32 | _io_num_2_T_33; // @[Mux.scala 27:73]
  wire [6:0] _GEN_24 = {{1'd0}, _io_num_2_T_34}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_2_T_49 = _io_num_2_T_48 | _GEN_24; // @[Mux.scala 27:73]
  wire [6:0] _GEN_25 = {{1'd0}, _io_num_2_T_35}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_2_T_50 = _io_num_2_T_49 | _GEN_25; // @[Mux.scala 27:73]
  wire [6:0] _GEN_26 = {{2'd0}, _io_num_2_T_36}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_2_T_51 = _io_num_2_T_50 | _GEN_26; // @[Mux.scala 27:73]
  wire [6:0] _GEN_27 = {{2'd0}, _io_num_2_T_37}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_2_T_52 = _io_num_2_T_51 | _GEN_27; // @[Mux.scala 27:73]
  wire [6:0] _GEN_28 = {{5'd0}, _io_num_2_T_38}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_2_T_53 = _io_num_2_T_52 | _GEN_28; // @[Mux.scala 27:73]
  wire [6:0] _io_num_2_T_54 = _io_num_2_T_53 | _io_num_2_T_39; // @[Mux.scala 27:73]
  wire [6:0] _io_num_2_T_56 = _io_num_2_T_54 | _io_num_2_T_41; // @[Mux.scala 27:73]
  wire [6:0] _GEN_29 = {{3'd0}, _io_num_2_T_42}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_2_T_57 = _io_num_2_T_56 | _GEN_29; // @[Mux.scala 27:73]
  wire [6:0] _GEN_30 = {{5'd0}, _io_num_2_T_43}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_2_T_58 = _io_num_2_T_57 | _GEN_30; // @[Mux.scala 27:73]
  wire [6:0] _io_num_2_T_59 = _io_num_2_T_58 | _io_num_2_T_44; // @[Mux.scala 27:73]
  wire [6:0] _GEN_31 = {{1'd0}, _io_num_2_T_45}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_2_T_60 = _io_num_2_T_59 | _GEN_31; // @[Mux.scala 27:73]
  wire [6:0] _GEN_32 = {{4'd0}, _io_num_2_T_46}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_2_T_61 = _io_num_2_T_60 | _GEN_32; // @[Mux.scala 27:73]
  wire [6:0] _GEN_33 = {{3'd0}, _io_num_2_T_47}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_2_T_62 = _io_num_2_T_61 | _GEN_33; // @[Mux.scala 27:73]
  wire  _io_num_3_T_1 = lfsr[15:12] == 4'h0; // @[Sky130BLFSR.scala 56:27]
  wire  _io_num_3_T_3 = lfsr[15:12] == 4'h1; // @[Sky130BLFSR.scala 57:27]
  wire  _io_num_3_T_5 = lfsr[15:12] == 4'h2; // @[Sky130BLFSR.scala 58:27]
  wire  _io_num_3_T_7 = lfsr[15:12] == 4'h3; // @[Sky130BLFSR.scala 59:27]
  wire  _io_num_3_T_9 = lfsr[15:12] == 4'h4; // @[Sky130BLFSR.scala 60:27]
  wire  _io_num_3_T_11 = lfsr[15:12] == 4'h5; // @[Sky130BLFSR.scala 61:27]
  wire  _io_num_3_T_13 = lfsr[15:12] == 4'h6; // @[Sky130BLFSR.scala 62:27]
  wire  _io_num_3_T_15 = lfsr[15:12] == 4'h7; // @[Sky130BLFSR.scala 63:27]
  wire  _io_num_3_T_19 = lfsr[15:12] == 4'h9; // @[Sky130BLFSR.scala 65:27]
  wire  _io_num_3_T_21 = lfsr[15:12] == 4'ha; // @[Sky130BLFSR.scala 66:27]
  wire  _io_num_3_T_23 = lfsr[15:12] == 4'hb; // @[Sky130BLFSR.scala 67:27]
  wire  _io_num_3_T_25 = lfsr[15:12] == 4'hc; // @[Sky130BLFSR.scala 68:27]
  wire  _io_num_3_T_27 = lfsr[15:12] == 4'hd; // @[Sky130BLFSR.scala 69:27]
  wire  _io_num_3_T_29 = lfsr[15:12] == 4'he; // @[Sky130BLFSR.scala 70:27]
  wire  _io_num_3_T_31 = lfsr[15:12] == 4'hf; // @[Sky130BLFSR.scala 71:27]
  wire [6:0] _io_num_3_T_32 = _io_num_3_T_1 ? 7'h40 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_num_3_T_33 = _io_num_3_T_3 ? 7'h79 : 7'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_num_3_T_34 = _io_num_3_T_5 ? 6'h24 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_num_3_T_35 = _io_num_3_T_7 ? 6'h30 : 6'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_num_3_T_36 = _io_num_3_T_9 ? 5'h19 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_num_3_T_37 = _io_num_3_T_11 ? 5'h12 : 5'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_num_3_T_38 = _io_num_3_T_13 ? 2'h2 : 2'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_num_3_T_39 = _io_num_3_T_15 ? 7'h78 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_num_3_T_41 = _io_num_3_T_19 ? 7'h6f : 7'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_num_3_T_42 = _io_num_3_T_21 ? 4'h8 : 4'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_num_3_T_43 = _io_num_3_T_23 ? 2'h3 : 2'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_num_3_T_44 = _io_num_3_T_25 ? 7'h46 : 7'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_num_3_T_45 = _io_num_3_T_27 ? 6'h21 : 6'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_num_3_T_46 = _io_num_3_T_29 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_num_3_T_47 = _io_num_3_T_31 ? 4'he : 4'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_num_3_T_48 = _io_num_3_T_32 | _io_num_3_T_33; // @[Mux.scala 27:73]
  wire [6:0] _GEN_34 = {{1'd0}, _io_num_3_T_34}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_3_T_49 = _io_num_3_T_48 | _GEN_34; // @[Mux.scala 27:73]
  wire [6:0] _GEN_35 = {{1'd0}, _io_num_3_T_35}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_3_T_50 = _io_num_3_T_49 | _GEN_35; // @[Mux.scala 27:73]
  wire [6:0] _GEN_36 = {{2'd0}, _io_num_3_T_36}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_3_T_51 = _io_num_3_T_50 | _GEN_36; // @[Mux.scala 27:73]
  wire [6:0] _GEN_37 = {{2'd0}, _io_num_3_T_37}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_3_T_52 = _io_num_3_T_51 | _GEN_37; // @[Mux.scala 27:73]
  wire [6:0] _GEN_38 = {{5'd0}, _io_num_3_T_38}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_3_T_53 = _io_num_3_T_52 | _GEN_38; // @[Mux.scala 27:73]
  wire [6:0] _io_num_3_T_54 = _io_num_3_T_53 | _io_num_3_T_39; // @[Mux.scala 27:73]
  wire [6:0] _io_num_3_T_56 = _io_num_3_T_54 | _io_num_3_T_41; // @[Mux.scala 27:73]
  wire [6:0] _GEN_39 = {{3'd0}, _io_num_3_T_42}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_3_T_57 = _io_num_3_T_56 | _GEN_39; // @[Mux.scala 27:73]
  wire [6:0] _GEN_40 = {{5'd0}, _io_num_3_T_43}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_3_T_58 = _io_num_3_T_57 | _GEN_40; // @[Mux.scala 27:73]
  wire [6:0] _io_num_3_T_59 = _io_num_3_T_58 | _io_num_3_T_44; // @[Mux.scala 27:73]
  wire [6:0] _GEN_41 = {{1'd0}, _io_num_3_T_45}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_3_T_60 = _io_num_3_T_59 | _GEN_41; // @[Mux.scala 27:73]
  wire [6:0] _GEN_42 = {{4'd0}, _io_num_3_T_46}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_3_T_61 = _io_num_3_T_60 | _GEN_42; // @[Mux.scala 27:73]
  wire [6:0] _GEN_43 = {{3'd0}, _io_num_3_T_47}; // @[Mux.scala 27:73]
  wire [6:0] _io_num_3_T_62 = _io_num_3_T_61 | _GEN_43; // @[Mux.scala 27:73]
  MaxPeriodFibonacciLFSR lfsr_prng ( // @[PRNG.scala 91:22]
    .clock(lfsr_prng_clock),
    .reset(lfsr_prng_reset),
    .io_increment(lfsr_prng_io_increment),
    .io_out_0(lfsr_prng_io_out_0),
    .io_out_1(lfsr_prng_io_out_1),
    .io_out_2(lfsr_prng_io_out_2),
    .io_out_3(lfsr_prng_io_out_3),
    .io_out_4(lfsr_prng_io_out_4),
    .io_out_5(lfsr_prng_io_out_5),
    .io_out_6(lfsr_prng_io_out_6),
    .io_out_7(lfsr_prng_io_out_7),
    .io_out_8(lfsr_prng_io_out_8),
    .io_out_9(lfsr_prng_io_out_9),
    .io_out_10(lfsr_prng_io_out_10),
    .io_out_11(lfsr_prng_io_out_11),
    .io_out_12(lfsr_prng_io_out_12),
    .io_out_13(lfsr_prng_io_out_13),
    .io_out_14(lfsr_prng_io_out_14),
    .io_out_15(lfsr_prng_io_out_15)
  );
  assign io_num_0 = io_lock ? 7'h7f : _io_num_0_T_62; // @[Sky130BLFSR.scala 52:21 53:17 55:17]
  assign io_num_1 = io_lock ? 7'h7f : _io_num_1_T_62; // @[Sky130BLFSR.scala 52:21 53:17 55:17]
  assign io_num_2 = io_lock ? 7'h7f : _io_num_2_T_62; // @[Sky130BLFSR.scala 52:21 53:17 55:17]
  assign io_num_3 = io_lock ? 7'h7f : _io_num_3_T_62; // @[Sky130BLFSR.scala 52:21 53:17 55:17]
  assign lfsr_prng_clock = clock;
  assign lfsr_prng_reset = reset;
  assign lfsr_prng_io_increment = ~io_lock; // @[Sky130BLFSR.scala 48:23]
endmodule
