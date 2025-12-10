//-----------------------------------------------------------------------------
//
// Title       : full_adder_st2
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/NachoDigDesigns/cursoVerilog/tutorial/src/full_adder_st2.v
// Generated   : Thu Nov 20 19:06:12 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

// Modulo fulladder estructural usando bloques halfadder

module full_adder_st2 (s ,cout ,a ,b ,cin);	   	
	input a ,b ,cin;
	output s, cout;
	
	wire sab, cab, cabcin;
	
	half_adder_df ha_df1(sab, cab, a, b);
	half_adder_df ha_df2(s, cabcin, sab, cin);
	
	or or1(cout, cabcin, cab); 

endmodule
