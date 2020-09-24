//testing all the gate primitives
	
		//declaring module to check gate primitive operations
module gates(input a,b, output y1,y2,y3,y4,y5,y6,y7,y8,y9);
		//AND gate primitive
	and a1(y1,a,b);
		//OR gate primitive
	or a2(y2,a,b);
		//NOR gate primitive
	nor a3(y3,a,b);
		//NAND gate primitive
	nand a4(y4,a,b);
		//XOR gate primitive
	xor a5(y5,a,b);
		//XNOR gate primitive
	xnor a6(y6,a,b);
		//NOT gate primitive
	not a7(y7,a);
		//BUFFER gate primitive
	buf a8(y8,a);
	//end of module
endmodule
