//Pattern detector for 1011 (overlapping)

	//module declaration for pattern detector
module seq_1(clk,rst,a,out);
		//defining states using local parameter
	localparam s0=3'b000;
	localparam s1=3'b001;
	localparam s10=3'b010;
	localparam s101=3'b011;
	localparam s1011=3'b101;
		//I/O port declaration
	input clk,rst,a;
	output reg out;
		// reg declaration to indicate state
	reg [2:0] st;
				//using always block to detect pattern	
	always @(posedge clk) 
				//checks if reset is high
	if (rst)
		begin out = 0 ; st=s0;	end
	else
			//to switch between different states
			//using case statement
		case (st)
		s0:	//reset
			if (a==0)
				begin out = 0; st=s0; end
			else 
				begin out = 0; st = s1; end
		s1:	//detect'1' 
			if (a==1)
				begin out = 0; st = s1; end
			else 
				begin out = 0; st=s10; end
		s10:	//detect '10' of pattern
			if (a==0)
				begin out = 0; st =s0; end
			else 
				begin out = 0; st=s101; end		
		s101:	//detects 101
			if (a==1)
				begin out = 1; st=s1011; end
			else 
				begin out =0; st=s0; end
		s1011: 	//detects 1011 pattern
			if (a==0)
				begin out = 0; st=s0; end
			else 	
				//pattern detected
				begin out =0; st=s1; end
			//end of case statement
		endcase 
		//end of module

endmodule

		


	//delcaring stimulus block
module test_1011;
		//declaring internal connections
	reg clk,rst,a;
	wire out;
		//instansiating DUT
	seq_1 S1 (clk,rst,a,out);
		//generating clock using forever block
	initial begin clk=0; forever #10 clk=~clk; end
		//providing reset signal
	initial begin rst=1; forever #100 rst=~rst; end
		//providing stimulus to DUT
	always begin
		a=$random;
		#34; 
	end
		//end of stimulus block
endmodule

	
