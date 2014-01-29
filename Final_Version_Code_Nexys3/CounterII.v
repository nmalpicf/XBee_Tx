module CounterII(clk, tick, s_count);

input clk;
input s_count;
output wire tick;

reg [13:0] counter = 5208/*2604*/;
reg signal;

parameter N = 10416/*5208*/;
		
always @(posedge clk) begin
    if(s_count==1)
	    if(counter == N) begin
		    counter = 0;
		    signal = 1;
	    end
	    else begin
		    counter = counter + 1;
		    signal = 0;
	    end
    else
    	signal = 0;       
end
assign tick = signal;
endmodule

