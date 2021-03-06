// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================


`timescale 1 ns / 1 ps

(* use_dsp48 = "yes" *) module embv_p1300c_v_tpg_0_0_v_tpg_mul_8ns_6s_14_2_MulnS_5(clk, ce, a, b, p);
input clk;
input ce;
input [8 - 1 : 0] a; // synthesis attribute keep a "true"
input signed [6 - 1 : 0] b; // synthesis attribute keep b "true"
output[14 - 1 : 0] p;
reg signed [14 - 1 : 0] p;
wire signed [14 - 1 : 0] tmp_product;

assign tmp_product = $signed({1'b0, a}) * $signed(b);
always @ (posedge clk) begin
    if (ce) begin
        p <= tmp_product;
    end
end
endmodule

`timescale 1 ns / 1 ps
module embv_p1300c_v_tpg_0_0_v_tpg_mul_8ns_6s_14_2(
    clk,
    reset,
    ce,
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



embv_p1300c_v_tpg_0_0_v_tpg_mul_8ns_6s_14_2_MulnS_5 embv_p1300c_v_tpg_0_0_v_tpg_mul_8ns_6s_14_2_MulnS_5_U(
    .clk( clk ),
    .ce( ce ),
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

