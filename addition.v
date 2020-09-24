	//module for airthmetic operations
module addition(a,b,t1,t2,c,t3);
	//declaring I/O ports
	input a,b;
	input [3:0] t1,t2;
	output [1:0]c;
	output[4:0] t3;
	//assigning values using assign statement
	assign c=a+b;
	assign t3=t1+t2;
	//end of module
endmodule


	//declaring test bench
module test_add;
	//declaring internal nets
	reg a,b;
	reg [3:0] t1,t2;
	wire [1:0]c;
	wire [4:0] t3;
		//instansiating module for test
	addition A1 (a,b,t1,t2,c,t3);
		//using initial block for testing
	initial 
	begin 
		a=0;b=0;
		t1=3'd2; t2=5;
		#15 a=1;b=0;
		t1=3'd4; t2=7;
		#15 a=1;b=1;
		t1=3'd6; t2=1;
		#10 a=0;b=1;
		t1=3'd5; t2=3;
	end
	//end of testbench
endmodule