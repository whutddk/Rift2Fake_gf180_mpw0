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

module rift2Wrap(
`ifdef USE_POWER_PINS
    inout vdd,    // User area 5.0V supply
    inout vss,    // User area ground
`endif
  
    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [63:0] la_data_in,
    output [63:0] la_data_out,
    input  [63:0] la_oenb,

    // IOs
    input  [38-1:0] io_in,
    output [38-1:0] io_out,
    output [38-1:0] io_oeb,



    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq

);

wire clock;

wire [6:0] io_num_0;
wire [6:0] io_num_1;
wire [6:0] io_num_2;
wire [6:0] io_num_3;
wire io_lock;



assign clock = wb_clk_i;




Sky130BLFSR i_fake(
  .clock(clock),
  .reset(wb_rst_i),
  .io_num_0(io_num_0),
  .io_num_1(io_num_1),
  .io_num_2(io_num_2),
  .io_num_3(io_num_3),
  .io_lock(io_lock)
);



assign io_oeb[27:0] = 28'b0;
assign io_out[27:0] = {io_num_3, io_num_2, io_num_1, io_num_0};
assign la_data_out[27:0] = {io_num_3, io_num_2, io_num_1, io_num_0};

//lock input
assign io_oeb[28] = 1'b1;
assign io_lock = (~la_oenb[0]) ? la_data_in[0] : io_in[28];
assign io_out[28] = 1'b0;


assign io_oeb[37:29] = 9'b0; 
assign io_out[37:29] = 9'b0; 


endmodule

