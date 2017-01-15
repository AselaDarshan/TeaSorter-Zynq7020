// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module embv_p1300c_v_tpg_0_0_v_tpg_reg_int_s (
        ap_clk,
        ap_rst,
        in_r,
        ap_return,
        ap_ce
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;

input   ap_clk;
input   ap_rst;
input  [30:0] in_r;
output  [30:0] ap_return;
input   ap_ce;

reg[30:0] ap_return;




always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_ce)) begin
        ap_return <= in_r;
    end
end


endmodule //embv_p1300c_v_tpg_0_0_v_tpg_reg_int_s

