//-----------------------------------------------------------------------------
//
// Title       : Mux_2a1_bh
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/cursoVerilog/tutorial/src/Mux_2a1_bh.v
// Generated   : Wed Dec  3 13:33:40 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps


module Mux_2a1_bh ( y ,x ,s );

	input [1:0] x;
	input s;
	
	output reg y; 
	
	always @(x, s)
		if (s) 
			y = x[1];
		else 
			y = x[0];
endmodule
