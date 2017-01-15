// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
(* rom_style = "distributed" *) module embv_p1300c_v_tpg_0_0_v_tpg_tpgPatternCheckerBoard_tpgBarSelRgb_r232_rom (
addr0, ce0, q0, clk);

parameter DWIDTH = 1;
parameter AWIDTH = 3;
parameter MEM_SIZE = 8;

input[AWIDTH-1:0] addr0;
input ce0;
output reg[DWIDTH-1:0] q0;
input clk;

(* ram_style = "distributed" *)reg [DWIDTH-1:0] ram[MEM_SIZE-1:0];

initial begin
    $readmemh("./embv_p1300c_v_tpg_0_0_v_tpg_tpgPatternCheckerBoard_tpgBarSelRgb_r232_rom.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[addr0];
    end
end



endmodule


`timescale 1 ns / 1 ps
module embv_p1300c_v_tpg_0_0_v_tpg_tpgPatternCheckerBoard_tpgBarSelRgb_r232(
    reset,
    clk,
    address0,
    ce0,
    q0);

parameter DataWidth = 32'd1;
parameter AddressRange = 32'd8;
parameter AddressWidth = 32'd3;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
output[DataWidth - 1:0] q0;



embv_p1300c_v_tpg_0_0_v_tpg_tpgPatternCheckerBoard_tpgBarSelRgb_r232_rom embv_p1300c_v_tpg_0_0_v_tpg_tpgPatternCheckerBoard_tpgBarSelRgb_r232_rom_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .q0( q0 ));

endmodule

