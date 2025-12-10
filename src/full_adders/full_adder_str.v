//-----------------------------------------------------------------------------
//
// Title       : full_adder_str
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/NachoDigDesigns/cursoVerilog/tutorial/src/full_adder_str.v
// Generated   : Thu Nov 20 18:13:25 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

//modulo full-adder con diseno estructural

module full_adder_str (s ,cout,  a , b ,cin);
	input a, b, cin;
	output s, cout;
	
	wire axb, ayb, bycin, cinya;
	
	// Modulo sumador s = (a xor b) xor cin
	xor xor1(axb, a, b);
	xor xor2(s, axb, cin);
	
	// Modulo carry c = (a and b) or (b and cin) or (cin and a)
	and and1(ayb, a, b);
	and and2(bycin, b, cin);
	and and3(cinya, cin, a);	
	
	or or1(cout, ayb, bycin, cinya);	  

endmodule
