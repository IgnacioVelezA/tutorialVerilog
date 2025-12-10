//-----------------------------------------------------------------------------
//
// Title       : Mux_4a1_df2
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/cursoVerilog/tutorial/src/Mux_4a1_df2.v
// Generated   : Wed Dec  3 14:15:13 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps
//MUltiplexer df hecho de manera muy ineficiente

module Mux_4a1_df2 ( y ,x ,s );

input [3:0] x;
input [1:0] s;

output y;	

// Se lee como: 
//Si s no tiene ningún 1(00) entonces x[0], sino
// si es que todos son 1 (11), entonces x[3], sino
// si s[0] es 1(01), entonces x[1], sino (10) x[2]	   

assign y = ~|s?x[0]:(&s?x[3]:(s[0]?x[1]:x[2]));

endmodule
