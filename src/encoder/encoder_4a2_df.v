//-----------------------------------------------------------------------------
//
// Title       : encoder_4a2_df
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/cursoVerilog/tutorial/src/encoder_4a2_df.v
// Generated   : Wed Dec  3 20:23:21 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

// Encoder 4 a 2 bits, el tutorial no considera las situaciones con más de un bit en 1
//Entrega un valor extra (v) en 1 cuando la salida no es 0000
// Decidí hacer que el valor válido sea 1 cuando haya un 1 y solo un 1.

module encoder_4a2_df (y ,v ,x);
	input [3:0] x;
	
	output [1:0] y;	
	output v;
	
	assign y = {~x[1]&~x[0] , ~x[2]&~x[0]};
	assign v = (x[3] + x[2] + x[1] + x[0] == 1); //Verifica que solo haya un 1 

endmodule
