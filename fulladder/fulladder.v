// Author : Haider Ali Siddiquee
// Date : 7/16/2019

// create the module for the IC
module fulladder( a, b, c, sum, carry);
	input a, b, c;     // Input for the fulladder
	output sum, carry; // Output for of the fulladder
	wire net1, net2, net3; // these are the internal signals to carry
			       // value from one gate to another.
	
// now write the architecture of the varilog
	assign net1 = a ^ b;
	assign sum = c ^ net1;
	assign net2 = net1 & c;
	assign net3 = a & b;
	assign carry = net2 | net3;
endmodule


// Testbench for the fulladder


	
