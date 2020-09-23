	//module for airthmetic operations
module arithm;
	//declaring data types
	wire a,b,c;
	reg [3:0] t1,t2;
	wire [3:0] t3;
	//assigning values using data flow modelling
	assign c=a+b;
	assign t3=t1+t2;
	//end of module
endmodule

	//module declaration for logical operation
module logical;
	//declaring data types
	integer a,b,c;
	// using procedural block to compare variables
	initial begin 
		if ((a>b) && (a>c))
		$display("a is greatest");
		else 
		$display("a is not greatest");
	//end of prodcedural block
	end
	//end of module
endmodule
	
	//module declaration
module fdr;
	//declaring data types
	reg a,b,c;
	//using procedural block 'always'
	always begin
		c= a || !b;
	end
	//end of module
endmodule


module equality ;
	
	reg [3:0] a,b,c,d;

	initial begin
		a=4'b1101;
		b=4'b1101;
		c=4'b11x0;
		d=4'b11x0;

		if (a == b)
			$display("a and b are equal");
		else
			$display("a and b are not equal");

		if (c===d)
			$display("c and d are equal");
		else
			$display("c and d are not equal");

	end
endmodule


module chk_shift;

	reg [7:0] a,b,c;
	reg signed [7:0] j,k,l;

	initial begin
		/*a=8'b10100111;
		b=a>>2;
		c=a<<2;*/

		j=8'b10010111;
		k=j>>>2;
		l=j<<<2;
	end
endmodule
