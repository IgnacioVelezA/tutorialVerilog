//-----------------------------------------------------------------------------
//
// Title       : full_adder_df
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/NachoDigDesigns/cursoVerilog/tutorial/src/full_adder_df.v
// Generated   : Thu Nov 20 20:15:48 2025
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
//{module {full_adder_df}}

module full_adder_df (s ,cout ,a ,b ,cin);

	input a ,b ,cin;
	output s ,cout;
	
	assign s = a^b^cin;
	assign cout = a&b | b&cin | cin&a;

endmodule
