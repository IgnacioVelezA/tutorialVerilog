//-----------------------------------------------------------------------------
//
// Title       : full_adder_tb
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/NachoDigDesigns/cursoVerilog/tutorial/src/full_adder_tb.v
// Generated   : Fri Nov 21 19:09:16 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ns / 100ps	  // timestep / precision 

//Mi primer testbench de un full adder

module full_adder_tb;
	reg a ,b ,cin;
	wire s ,cout;
	
	//Instanciando el DUT				  
	full_adder_bh fa1(s ,cout ,a ,b ,cin);
	
	initial
		begin
			//Equivalente a print cuando cambia alguna señal  
			// %d = decimal; %b = binario
			$monitor ("time=%d \t a=%b \t b=%b \t cin=%b \t s=%b \t cout=%b",
			$time ,a ,b ,cin ,s ,cout);	  
			
			// Valores iniciales
			a = 0;
			b = 0;
			cin = 0;
			
			//Despues de 10 steps
			#10 a = 1;
			//Despues de 10 steps
			#10 b = 1;
			//Despues de 10 steps
			#10 cin = 1;			
			//Fin de test
			#10 $stop;
		end
endmodule
