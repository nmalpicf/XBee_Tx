module Control(clk, reset, Rx, tick, Check, done, s_count, s_Date, s_comp);

input clk, reset, Rx, tick, Check, done;
output reg s_count, s_Date, s_comp;

reg [1:0] state;

parameter iddle = 2'b00;
parameter stop_Bit = 2'b01;
parameter data_Bits = 2'b10;
parameter compare = 2'b11;

always @(posedge clk) begin
	if(reset)
		state = iddle;
	else
		case (state)
			iddle:
				if(~Rx)
					state = stop_Bit;
				else
					state = iddle;
			stop_Bit:
				if(tick)
					state = data_Bits;
				else
					state = stop_Bit;
			data_Bits:
				if(Check)
					state = compare;
				else
					state = data_Bits;
			compare:
				if(done)
					state = iddle;
				else
					state = compare;
		endcase
end

always @(state) begin
	case (state)
		iddle: begin
			s_count = 1'b0;
			s_Date = 1'b0;
			s_comp = 1'b0;
		end
		stop_Bit: begin
			s_count = 1'b1;
			s_Date = 1'b0;
			s_comp = 1'b0;
		end
		data_Bits: begin
			s_count = 1'b1;
			s_Date = 1'b1;
			s_comp = 1'b0;
		end
		compare: begin
			s_count = 1'b1;
			s_Date = 1'b0;
			s_comp = 1'b1;
		end
	endcase
end
endmodule
