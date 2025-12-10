//-----------------------------------------------------------------------------
//
// Title       : Mux_2a1
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/cursoVerilog/tutorial/src/Mux_2a1.v
// Generated   : Wed Dec  3 13:25:17 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

//Intento de multiplexor 2:1 
// x son las dos entradas
// s es el selector
// y la salida

module Mux_2a1_df ( y ,x ,s );

	input [1:0] x;
	input s;
	
	output y;
	
	assign y = s?x[1]:x[0]; 

endmodule
