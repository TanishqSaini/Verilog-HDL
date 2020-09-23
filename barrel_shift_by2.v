	//module declaration for mux
module mux2(input a,b,k, output y);
	//using ternary operator to declare mux
	assign y = k ? b : a;
	//end of module
endmodule


	//module declaration for barrel shifter
module barrel_1(input a0,a1,a2,a3,s0,s1, output y0,y1,y2,y3);
	wire p0,p1,p2,p3;
	//instansiating 2x1 mux (8 2x1 mux used)
	//for shifting 4-bit data towadrs right by 3-bit
	mux2 m1 (a0,a2,s0,p0);
	mux2 m2 (a1,a3,s0,p1);
	mux2 m3 (a2,a0,s0,p2);
	mux2 m4 (a3,a1,s0,p3);
	mux2 m5 (p0,p1,s1,y0);
	mux2 m6 (p1,p2,s1,y1);
	mux2 m7 (p2,p3,s1,y2);
	mux2 m8 (p3,p0,s1,y3);
	//end of module
endmodule

		//defining test bench module
module mytest;
		//defining internal signals
	reg a0,a1,a2,a3,s0,s1;
	wire y0,y1,y2,y3;
		//instantiating the code (adding DUT)
	barrel_1 b1 (a0,a1,a2,a3,s0,s1,y0,y1,y2,y3);
		//using always block to provide stimulus
	always begin 
	a0=$random; a1=$random; a2=$random; a3=$random;
	s0=$random; s1=$random;
	#10;
		//end of always block
	end
	//end of test bench module
endmodule
