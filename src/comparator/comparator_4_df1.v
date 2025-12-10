//-----------------------------------------------------------------------------
//
// Title       : comparator_4_df1
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/cursoVerilog/tutorial/src/comparator_4_df1.v
// Generated   : Tue Dec  9 19:26:55 2025
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
//{module {comparator_4_df1}}

module comparator_4_df1 (Eq ,Gt ,St ,A , B);
	input [3:0] A ,B;
	
	output Eq ,Gt ,St; //Igual, Greater Than, Smaller Than 
	
	assign Eq = &(A ~^B); // AND(A ~XOR B) a~^b = 1 Si a=b
	assign Gt = (A[3]&~B[3]) |					// Si a3 = 1 y b3 = 0 , o
				(A[3]~^B[3])&(A[2]&~B[2]) |		// Si a3=b3 y b2 = 1 y b2=0, o
				(A[3]~^B[3])&(A[2]~^B[2])&(A[1]&~B[1]) | // Si a3=b3 y a2=b2 y a1=1 y b1=0, o
				(A[3]~^B[3])&(A[2]~^B[2])&(A[1]~^B[1])&(A[0]&~B[0]);// Si a3=b3 y a2=b2 y a1=b1 y a0=1 y b0=0.
	assign St = ~(Eq|Gt); // Si A no es igual a B, ni más grande 
endmodule
