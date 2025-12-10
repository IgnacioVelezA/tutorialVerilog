//-----------------------------------------------------------------------------
//
// Title       : half_adder_str
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/NachoDigDesigns/cursoVerilog/tutorial/src/half_adder_str.v
// Generated   : Thu Nov 20 00:10:34 2025
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
//{module {half_adder_str}}

module half_adder_str ( a ,b ,s ,c );
	
	input a, b;
	
	output s, c;
	
	xor xor1(s,a,b);
	and and1(c,a,b);
	
endmodule	   
