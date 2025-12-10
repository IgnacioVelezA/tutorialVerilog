//-----------------------------------------------------------------------------
//
// Title       : FA_4bit_tb
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/NachoDigDesigns/cursoVerilog/tutorial/src/FA_4bit_tb.v
// Generated   : Tue Dec  2 17:25:26 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ns / 100ps

//Test bench para los full adder de 4 bits

module FA_4bit_tb;
	reg [3:0] a, b;
	reg Cin;
	
	wire [3:0] s;
	wire Cout;
	
	//Instanciar el DUT
	FA_4bit_str FA4b_dut(s ,Cout ,a ,b ,Cin);
	
	initial	begin
		$monitor ("time=%d \t a=%b \t b=%b \t cin=%b \t s=%b \t cout=%b",
		$time ,a ,b ,Cin ,s ,Cout);	 	
		
		a = 0;
		b = 0;
		Cin = 0;
		
		repeat(16) 	begin
			#10 a = a +1;
			
			repeat(16) 	begin
				#10 b = b +1;
				
				repeat(2)
					#10 Cin = ~Cin;
						end
					end	
			end		
endmodule
