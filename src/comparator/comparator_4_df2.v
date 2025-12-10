//-----------------------------------------------------------------------------
//
// Title       : comparator_4_df2
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/cursoVerilog/tutorial/src/comparator_4_df2.v
// Generated   : Tue Dec  9 20:54:14 2025
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
//{module {comparator_4_df2}}

module comparator_4_df2 (Eq ,Gt ,St ,A , B);
	input [3:0] A ,B;
	
	output Eq ,Gt ,St;
	assign {Eq ,Gt ,St} = {(A==B) ,(A>B) ,(A<B)}; // Si el sinte
endmodule
