// Author:Haider Ali Siddiquee
// Date : 07/20/2019
// Time: 02:41 am
// test_bench.v
// About : test bench for the sequence detector module


// Initiate the device under test  DUT
module test_bench()
	reg a,clk,reset;
	wire w;
	detector(	.a(a),
			.clk(clk),
			.reset(reset),
			.w(w));

	initial	
	begin
		reset<=0;
		cl
		a<=1;
		
	end