//-----------------------------------------------------------------------------
//
// Title       : FA_4bit_bh
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/NachoDigDesigns/cursoVerilog/tutorial/src/FA_4bit_bh.v
// Generated   : Tue Dec  2 17:05:57 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps
									   

module FA_4bit_bh ( s ,Cout ,a ,b ,Cin );

	input [3:0] a ,b;
	input Cin;
	
	output reg [3:0] s;
	output reg Cout;
	
	always @(a ,b ,Cin)
		begin
			{Cout, s} = a + b +Cin;
		end

endmodule
