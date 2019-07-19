// Author:Haider Ali Siddiquee
// Date : 07/18/2019
// Time: 10:49 pm
// 101_detector.v
// About : Sequence (101) detector 

module dectector (
	a, w, clk, reset);
	input a,clk,reset;
	output w;
	reg w;
	parameter s0=3'b000,
		  s1=3'b001,
		  s2=3'b010,
		  s3=3'b101;
	reg[2:0] current_state, next_state;
initial
	begin
	current_state = s0;
	next_state = s1;
	end
// concurrent space
	always@(posedge clk)
		begin
		if (reset==1)
		begin
			next_state <= s1;
			current_state<=s0;
		end
		else
		begin
			case (current_state)
				s0:begin
					if (a==1)
					begin
						current_state<=next_state;
						next_state<=s2;
					end						
				   end
				s1:begin
					if (a==0)
					begin
						current_state<=next_state;
						next_state<=s3;
					end
				   end
				s2:begin
					if (a==1)
					begin
						current_state<=next_state;
						next_state<=s3;
					end
					else
					begin
						current_state<=s0;
						next_state<=s1;
					end
				   end
				s3:begin
					if (a==1)
					begin
						current_state<=s1;
						next_state<=s2;
					end
					else
					begin
						next_state<=current_state;
						current_state<=s2;
					end
				   end
				default:begin
						current_state <=s0;
					 	next_state<=s1;
					end
			endcase
			
		end
	end
always@(current_state)
	begin
		if (current_state==s3)
				w<=1;		
			else
				w<=0;
	end
			
endmodule
		
