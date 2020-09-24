//Testing logical shift and airthmatic shift

	//module declaration
module chk_shift;
		//declaring variables of reg type
	reg [7:0] a,b,c;
	reg signed [7:0] j,k,l;
		//using initial block for shifting
	initial begin
			//logical shift
		a=8'b10100111;
		b=a>>2;
		c=a<<2;
			//airthmatic shift
		j=8'b10010111;
		k=j>>>2;
		l=j<<<2;
		//end of procedural block
	end
	//end of module
endmodule
