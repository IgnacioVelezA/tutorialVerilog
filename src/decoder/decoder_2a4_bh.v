//-----------------------------------------------------------------------------
//
// Title       : decoder_2a4_bh
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/cursoVerilog/tutorial/src/decoder_2a4_bh.v
// Generated   : Wed Dec  3 19:18:05 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

module Decoder_2a4_bh ( y ,x ,En );
	input [1:0] x;
	input En;
	
	output reg [3:0] y;	
	
	always @(*)
		if (En)
			case(x)
				2'd0: y = 4'b0001;
				2'd1: y = 4'b0010;
				2'd2: y = 4'b0100;
				2'd3: y = 4'b1000;
				default: y = 4'b0000;
			endcase
		else
			y = 4'b0000;
endmodule
