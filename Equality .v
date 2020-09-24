//Comparing variables for testing logical equality and case equality.
	
	//module declaration 
module equality;
		//declaring nets
	reg [3:0] a,b,c,d;
		//using procedural block 'initial' for operations
	initial begin
			//assigning values to variables
		a=4'b1101;
		b=4'b1101;
		c=4'b11x0;
		d=4'b11x0;
			//using logical equality to compare variables
		if (a == b)
			$display("a and b are equal");
		else
			$display("a and b are not equal");
			//using case equality to compare variables
		if (c===d)
			$display("c and d are equal");
		else
			$display("c and d are not equal");
		//end of initial block
	end
	//end of module
endmodule

