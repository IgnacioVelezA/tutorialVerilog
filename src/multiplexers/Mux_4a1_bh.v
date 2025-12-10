//-----------------------------------------------------------------------------
//
// Title       : Mux_4a1_bh
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/cursoVerilog/tutorial/src/Mux_4a1_bh.v
// Generated   : Wed Dec  3 14:58:27 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

module Mux_4a1_bh (y ,x ,s);
	input [3:0] x;
	input [1:0] s;
	
	output reg y;
	
	always @(*)
		case(s)
			2'd0: y=x[0];
			2'd1: y=x[1];
			2'd2: y=x[2];
			2'd3: y=x[3];
		endcase
endmodule
