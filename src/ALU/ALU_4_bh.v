//-----------------------------------------------------------------------------
//
// Title       : ALU_4_bh
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/cursoVerilog/tutorial/src/ALU_4_bh.v
// Generated   : Tue Dec  9 23:01:56 2025
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
//{module {ALU_4_bh}}	   
	
//Compuerta ALU COMBINACIONAL
//Esta ALU puede tener cualquier operación por cada opcode
//Se agrega alguna de las más comunes

module ALU_4_bh (y_up ,y_down ,a ,b ,opcode);
	input [3:0] a ,b ,opcode;
	output reg [3:0] y_up ,y_down; //Hay dos salidas por si se hacen multiplicaciones, se necesitan más bits
	
	always @(*)
		case(opcode)
			4'b0000: y_down = a^b;
			4'b0001: y_down = a&b;
			4'b0010: y_down = a|b;
			4'b0011: {y_up[0] ,y_down} = a+b;	//y_up[0] es el carry
			4'b0100: {y_up ,y_down} = a*b; 
			4'b0101: y_down = a;
			4'b0110: y_down = b;
			//agregai lo que querai
			default: $display("error");
		endcase
endmodule
