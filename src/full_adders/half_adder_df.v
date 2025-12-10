//-----------------------------------------------------------------------------
//
// Title       : half_adder
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/NachoDigDesigns/cursoVerilog/tutorial/src/half_adder.v
// Generated   : Wed Nov 19 20:35:18 2025
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
//{module {half_adder}}

module half_adder_df (s ,c ,a ,b);
	
	input a, b;
	output s, c;
	
	assign s=a^b;
	assign c=a&b;						   
	
endmodule
