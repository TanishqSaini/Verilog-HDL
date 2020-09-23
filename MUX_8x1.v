`timescale 1ns/1ns
	//declaring module for 8x1 multiplier
module mux8_1(input s2,s1,s0,i0,i1,i2,i3,i4,i5,i6,i7, output y);
	//using data flow modeling for declaring 8x1 MUX
	assign y= (~s2 & ~s1 & ~s0 & i0) | (~s2 & ~s1 & s0 & i1) | (~s2 & s1 & ~s0 & i2) | (~s2 & s1 & s0 & i3) | (s2 & ~s1 & ~s0 & i4) | (s2 & ~s1 & s0 & i5) | (s2 & s1 & ~s0 & i6) | (s2 & s1 & s0 & i7);
	//end of module	
endmodule


	//declaring stimulus block
module test_mux;
	//declaring internal ports
	reg s2,s1,s0,i0,i1,i2,i3,i4,i5,i6,i7;
	wire y;
	//instansiating MUX for testing
	mux8_1 M1 (s2,s1,s0,i0,i1,i2,i3,i4,i5,i6,i7,y);
	//providing stimulus using randomisation
	always
	begin
		s2=$random; s1=$random; s0=$random;
		i0=$random; i1=$random; i2=$random;
		i3=$random; i4=$random; i5=$random;
		i6=$random; i7=$random;
		#10;
	end
	//end of stimulus block
endmodule
