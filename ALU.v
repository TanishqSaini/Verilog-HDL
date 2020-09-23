
			//declaring ALU module 
module alu(input [7:0] a,b,input [3:0] opr,input sel, output reg [8:0] out);
			//using always block to perform ALU operations	
	always @(a,b,opr)
	 		//using case to decide which operation to perform
	case (opr)
			//to performs addition
		4'd0:
			begin
			$display("addition");
			out=a+b;
			end
			//to performs subtraction
		4'd1: 
			begin
			$display("subtraction");
			out=a-b;
			end
			//to performs multiplication
		4'd2:
			begin
			$display("multiplication");
			out=a*b;
			end
			//to performs division
		4'd3:
			begin
			$display("division");
			out=a/b;
			end
			//buffering
		4'd4:
			begin
					//using ternary operator to decide 
					//on which bit to perfor operation 					
			out= sel?(a):(b);
			end
			//NAND 
		4'd5:
			begin
			$display("nand");
			out= ~(a&b);
			end
			//AND 
		4'd6:
			begin
			$display("and");
			out=a&b;
			end
			//OR
		4'd7:
			begin
			$dsiplay("or");
			out=a|b;
			end
			//XOR
		4'd8:
			begin
			$display("XOR");
			out=a^b;
			end
			//XNOR
		4'd9:
			begin
			$display("XNOR");
			out=~(a^b);
			end
			//airthmetic shifting
					//shifting 1-bit airthmetic left 
		4'd10:
			begin
			$display("arithmetic right");
					//using ternary operator to decide 
					//on which bit to perfor operation 					
			out= sel?(a>>>1):(b>>>1);
			end
					//shifting 1-bit airthmetic left 
		4'd11:
			begin
			$display("arithmetic left");
					//using ternary operator to decide 
					//on which bit to perfor operation 					
			out =sel?(a<<<1):(b<<<1);
			end
			//logical shift
					//shifting 1-bit logical right 	
		4'd12:
			begin
			$display("logical right");
			out=sel?(a>>1):(b>>1);
			end
					//shifting 1-bit logical left 
		4'd13:	
			begin
			$display("logical left");
			out=sel?(a<<1):(b<<1);
			end
			//providing default operations
		default:
			begin 
			$display("operation not defined");
			out=0; out=0;
			end
			//end of case
		endcase
	//end of module
endmodule

		//defining test bench module
module test_alu;

		//defining internal signals
	reg [7:0] a,b;
	reg [3:0] opr;
	reg sel;
	wire [8:0] out;
		
		//instantiating ALU module 
	alu a1 ( a,b,opr,sel,out);

		//using always block to provide stimulus
	always begin 
	a=$random; b=$random; sel=$random; opr=$random;
	#10;
		//end of always block		
	end
		//end of test bench module
endmodule		