//-----------------------------------------------------------------------------
//
// Title       : Mux_4a1_df1
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/cursoVerilog/tutorial/src/Mux_4a1_df1.v
// Generated   : Wed Dec  3 13:50:28 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

// Primer tipo de multiplexer de 4 a 1 en dataflow

module Mux_4a1_df1 ( y ,x ,s );

input [3:0] x;
input [1:0] s;

output y;

assign y = x[s];

endmodule
