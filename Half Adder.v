	//module declaration for half adder
module half_add(a,b,s,c;);
	//declaring I/O ports
	input a,b;
	output s,c;
	//using procedural blocks to perform half-adder operations
	initial 
	begin
		//calcualting sum of 2 numbers
		s=a^b;
		//calculating carry for 2 numbers
		c=a&b;
	//end of procedural block
	end
	//end of half adder module
endmodule

	//declaring stimulus block
module test_HA;
	//declaring internal parameters
	reg a,b;
	wire s,c;
	//instansiating half adder module (DUT)
	half_add HA (a,b,s,c;);
	//using initial to provide stimulus
	initial 
	begin
		//providing stimulus 
		a=0; b=0;
		#10 a=0; b=1;
		#10 a=1; b=0;
		#10 a=1; b=1;
	end
	//end of stimulus block
endmodule
	