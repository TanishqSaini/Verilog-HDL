// using logical operators for comparing

	//module declaration for logical operation
module logical_comp;
	//declaring data types
	integer a,b,c;
	// using procedural block to compare variables
	initial begin 
			//comparing 3 variables
		if ((a>b) && (a>c))
		$display("a is greatest");
		else 
		$display("a is not greatest");
	//end of prodcedural block
	end
	//end of module
endmodule
