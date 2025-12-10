//-----------------------------------------------------------------------------
//
// Title       : FA_4bit_df
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/NachoDigDesigns/cursoVerilog/tutorial/src/FA_4bit_df.v
// Generated   : Tue Dec  2 17:01:07 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps					   
module FA_4bit_df ( s ,Cout ,a ,b ,Cin );
	input [3:0] a ,b;
	input Cin;
	
	output [3:0] s;
	output Cout;
	
	assign {Cout, s} = a + b + Cin;
endmodule
