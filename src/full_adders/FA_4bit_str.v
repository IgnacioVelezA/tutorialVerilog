//-----------------------------------------------------------------------------
//
// Title       : \4bit_full_adder_str\ 
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/NachoDigDesigns/cursoVerilog/tutorial/src/4bit_full_adder_str.v
// Generated   : Tue Dec  2 16:25:39 2025
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
//{module {\4bit_full_adder_str\ }}

module FA_4bit_str (s ,Cout ,a ,b ,Cin);
	input [3:0] a,b;
	input Cin;		 
	
	output [3:0]s;
	output Cout;
	
	wire C01 ,C12 ,C23;				
	
	full_adder_st2 FA0(s[0] ,C01 ,a[0] ,b[0] ,Cin);
	full_adder_st2 FA1(s[1] ,C12 ,a[1] ,b[1] ,C01);
	full_adder_st2 FA2(s[2] ,C23 ,a[2] ,b[2] ,C12);
	full_adder_st2 FA3(s[3] ,Cout ,a[3] ,b[3] ,C23);

endmodule
