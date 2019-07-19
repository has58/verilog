// verilog file for the homework first in vlsi II

module hw1(a, b, o1, o2);
	input a, b;
	output o1, o2;
	wire w1, w2, w3;

	//assign w1 = ~(a & b);
	//assign w2 = a | b;
	//assign w3 = ~(~(a & b) & (a | b));
	assign o1 = (a & b);
	assign o2 = (~(a & b) & (a | b));
endmodule