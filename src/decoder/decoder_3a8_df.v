//-----------------------------------------------------------------------------
//
// Title       : decoder_3a8_df
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/cursoVerilog/tutorial/src/decoder_3a8_df.v
// Generated   : Wed Dec  3 19:39:04 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps


module decoder_3a8_df (y ,x ,En);
	input [2:0] x;
	input En;
	
	output [7:0] y;

	assign y = {En & x[2] & x[1] & x[0],
				En & x[2] & x[1] &~x[0],
				En & x[2] &~x[1] & x[0],
				En & x[2] &~x[1] &~x[0],
				En &~x[2] & x[1] & x[0],
				En &~x[2] & x[1] &~x[0],
				En &~x[2] &~x[1] & x[0],
				En &~x[2] &~x[1] &~x[0]
		};
endmodule
