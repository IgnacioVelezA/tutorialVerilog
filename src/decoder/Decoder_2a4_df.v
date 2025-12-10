//-----------------------------------------------------------------------------
//
// Title       : Decoder_2a4_df
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/cursoVerilog/tutorial/src/Decoder_2a4_df.v
// Generated   : Wed Dec  3 18:54:42 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

// Diseño dataflow de decoder 2 a 4.
// Se usó el mapa K para llegar a la expresión
// 'En' es un habilitador que el tipo del tutorial quiso poner


module Decoder_2a4_df ( y ,x ,En );
	input [1:0] x;
	input En;
	
	output [3:0] y;
	
	assign y = {En & x[1] & x[0],
		En & x[1] & ~x[0],
		En & ~x[1] & x[0],
		En & ~x[1] & ~x[0]
		};

endmodule
