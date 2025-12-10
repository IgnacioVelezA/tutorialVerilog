//-----------------------------------------------------------------------------
//
// Title       : encoder_4a2_bh
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/cursoVerilog/tutorial/src/encoder_4a2_bh.v
// Generated   : Thu Dec  4 15:13:50 2025
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
//{module {encoder_4a2_bh}}

module encoder_4a2_bh (y ,v ,x);
	input [3:0] x;
	
	output reg [1:0] y;	
	output reg v;
	
	always @(*)	begin
		case(x)
			4'b0001: {v ,y} = 3'b100;
			4'b0010: {v ,y} = 3'b101;
			4'b0100: {v ,y} = 3'b110;
			4'b1000: {v ,y} = 3'b111;
			//Todos los otros casos
			default: {v,y} = 3'b000;
		endcase		
		end
endmodule
