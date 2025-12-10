//-----------------------------------------------------------------------------
//
// Title       : barrel_shifter_bh
// Design      : tutorial
// Author      : ignacio
// Company     : Universidad de Chile
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/cursoVerilog/tutorial/src/barrel_shifter_bh.v
// Generated   : Tue Dec  9 21:02:28 2025
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
//{module {barrel_shifter_bh}}

//Un barrel shifter es una compuerta COMBINACIONAL (Hay otro shifters secuenciales)
//Desplaza la entrada a la izq o derecha una cantidad n de veces.

module barrel_shifter_8_bh (Y ,X ,Izq ,n);
	input [7:0]	X;
	input [2:0] n;
	input Izq; //Izq = 1 si shiftea a la izq. n es número de veces de desplazamiento
	
	output reg [7:0] Y;
	
	always @(*) begin
		if(Izq)
			Y = X << n;
		else
			Y = X >> n;
	end
endmodule
