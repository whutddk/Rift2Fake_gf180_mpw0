// SPDX-FileCopyrightText: 2020 Efabless Corporation
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

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_proj_example
 *
 * This is an example of a (trivially simple) user project,
 * showing how the user project can connect to the logic
 * analyzer, the wishbone bus, and the I/O pads.
 *
 * This project generates an integer count, which is output
 * on the user area GPIO pads (digital output only).  The
 * wishbone connection allows the project to be controlled
 * (start and stop) from the management SoC program.
 *
 * See the testbenches in directory "mprj_counter" for the
 * example programs that drive this user project.  The three
 * testbenches are "io_ports", "la_test1", and "la_test2".
 *
 *-------------------------------------------------------------
 */

module user_proj_example #(
    parameter BITS = 32
)(
`ifdef USE_POWER_PINS
    inout vdd,	// User area 1 1.8V supply
    inout vss,	// User area 1 digital ground
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
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,


    input   user_clock2,

    // IRQ
    output [2:0] user_irq
);



    assign wbs_ack_o = 1'b1;
    assign wbs_dat_o = 32'b0;
    assign la_data_out = 64'b0;
    assign io_out[7:0] = 8'b0;
    assign io_out[37:22] = 16'b0;
    assign io_oeb = 38'b0;
    assign user_irq = 3'b0;

HC138 i_hc138(
    .A(io_in[10:8]),
    .G(io_in[13:11]),
    .Y(io_out[21:14])
);

    reg [5:0] temp_reg;
    always @(posedge wb_clk_i ) begin
        temp_reg <= io_in[13:8];
    end
    assign io_out[13:8] = temp_reg;


endmodule




module HC138(
    input [2:0] A,
    input [2:0] G,
    output [7:0] Y
);

assign Y[0] = ~((G == 3'b100) & (A == 3'b000));
assign Y[1] = ~((G == 3'b100) & (A == 3'b001));
assign Y[2] = ~((G == 3'b100) & (A == 3'b010));
assign Y[3] = ~((G == 3'b100) & (A == 3'b011));
assign Y[4] = ~((G == 3'b100) & (A == 3'b100));
assign Y[5] = ~((G == 3'b100) & (A == 3'b101));
assign Y[6] = ~((G == 3'b100) & (A == 3'b110));
assign Y[7] = ~((G == 3'b100) & (A == 3'b111));






endmodule



`default_nettype wire
