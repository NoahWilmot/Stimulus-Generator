/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_Stimulus_Generator_NoahW (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    wire wants_ctrl;
    wire wr_en;
    wire [1:0] wr_data;
    wire [3:0] wr_row;
    wire [3:0] wr_col;

    StimulusGen SG (
        .clock(clk),
        .reset_n(rst_n),
        .gen(ui_in[0]),
        .wants_ctrl(wants_ctrl),
        .wr_en(wr_en),
        .wr_data(wr_data),
        .wr_row(wr_row),
        .wr_col(wr_col)
    );

    assign uio_out[0] = wants_ctrl;
    assign uio_out[1] = wr_en;
    assign uio_out[3:2] = wr_data;
    assign uio_out[7:4] = 4'b0000;

    assign uo_out[3:0] = wr_row;
    assign uo_out[7:4] = wr_col;

    assign uio_oe = 8'b1111_1111;

    wire _unused = &{ena, uio_in, ui_in[7:1], 1'b0};

endmodule
