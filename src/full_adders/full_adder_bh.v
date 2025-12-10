//-----------------------------------------------------------------------------
//
// Title       : full_adder_bh
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/NachoDigDesigns/cursoVerilog/tutorial/src/full_adder_bh.v
// Generated   : Thu Nov 20 20:22:11 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

//{{ Section below this comment is automatically maintained
//    and may be overwritten
//{module {full_adder_bh}}

module full_adder_bh ( s ,cout ,a ,b ,cin );

input a ,b ,cin;
output reg s ,cout;

always @(a ,b ,cin)
	begin
		s =a^b^cin;
		cout = a&b | b&cin | cin&a;
	end									   				   
endmodule
