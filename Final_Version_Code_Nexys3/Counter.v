module Counter(Clk, Reset, TickTack);

//i/o_Declaration
	input Clk;
	input Reset;
	output reg TickTack;

//Local_Declaration
	parameter N = 10416/*5208*/;    // 100MHz/9600bps.
	reg [13:0] Counter=0;   // 2^14=16384.

	always @ (posedge Clk or posedge Reset) begin
		if (Reset) begin
			Counter <= 0;
			TickTack  <= 0;
			end else begin
			if (Counter == N) begin
				Counter <= 0;
				TickTack  <= 1;
				end else begin
					Counter <= Counter + 1;
					TickTack  <= 0;
				end
			end
	end
endmodule
