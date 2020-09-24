//Pattern detector for 1001

	//module declaration for pattern detector
module seq_2(clk,rst,a,out);
		//defining states using local parameter
	localparam s0=3'b000;
	localparam s1=3'b001;
	localparam s10=3'b010;
	localparam s100=3'b011;
		//I/O port declaration
	input clk,rst,a;
	output reg out;
		// reg declaration to indicate state
	reg [2:0] st;
		//using always block to detect pattern
	always @(posedge clk)
		//checks if reset is high
	if (rst) 
		begin out = 0; st=s0; end
	else
			//to switch between different states
			//using case statement
		case(st)
		s0:	//reset
			if (a==0) 
				begin out=0; st=s0; end
			else
				begin out=0; st=s1; end
		s1:	//detects 1 of pattern
			if (a==0)
				begin out=0; st=s10; end
			else 
				begin out=0; st=s1; end
		s10:	//detects 10 pattern
			if (a==0)
				begin out=0; st=s100; end
			else 
				begin out=0; st=s1; end

		s100: //detects 100 pattern
			if (a==0)
				begin out=0; st=s0; end
			else	
				//pattern detected
				begin out=1; st=s1; end
			//end of case statement
		endcase
		//end of module
endmodule
		
			

	//delcaring stimulus block
module test_1001;
		//declaring internal connections
	reg clk,rst,a;
	wire out;
		//instansiating DUT
	seq_2 S2 (clk,rst,a,out);
		//generating clock using forever block
	initial begin clk=0; forever #10 clk=~clk; end
		//providing reset signal
	initial begin rst=1; forever #100 rst=~rst; end
		//providing stimulus to DUT
	always begin
		a=$random;
		#45; 
	end
		//end of stimulus block
endmodule

