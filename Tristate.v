//testing tristate primitives
	
	//module delcaration
module tristate(input a,c, output x1,x2,x3,x4);
		//tri-state buffer enable high
	bufif1 b1(x1,a,c);
		//tri-state buffer enable low
	bufif0 b2(x2,a,c);
		//tri-state inverter enable high
	notif1 b3(x3,a,c);
		//tri-state inverter enable low
	notif0 b4(x4,a,c);
	//end of module
endmodule
