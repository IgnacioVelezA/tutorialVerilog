//-----------------------------------------------------------------------------
//
// Title       : hafl_adder_bh
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/NachoDigDesigns/cursoVerilog/tutorial/src/hafl_adder_bh.v
// Generated   : Wed Nov 19 23:09:25 2025
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
//{module {hafl_adder_bh}}

module hafl_adder_bh ( a ,b ,s ,c );

	input a, b;
	output reg s, c;
	
	always @(a, b)
		begin
			s= a^b;
			c= a&b;
		end
endmodule
	
					  
