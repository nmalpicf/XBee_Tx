module Compare(clk, comp_Rx, comp_Tx, D_In, conf_LCD, Done);

input clk, comp_Rx, comp_Tx;
input [7:0] D_In;
output Done;
output [1:0] conf_LCD;

reg Do;
reg [1:0] conf2;
reg [7:0] A = 8'b01100110;
reg [7:0] B = 8'b01100011;
parameter Time = 78120; 

reg [28:0] counter = 0;

	always @(posedge clk) begin

		if(~comp_Tx) begin
			if(counter == Time) begin
				conf2 = 2'b01;
				counter = 0;
				Do = 1;
				end else begin
					counter = counter + 1;
					conf2 = 2'b00;
					Do = 0;
				end 
			if(comp_Rx) begin
				counter = 0;
				if(D_In == A) begin
					conf2 = 2'b10;
					Do = 1;
					end else begin
						if(D_In == B) begin
							conf2 = 2'b11;
							Do = 1;
							end else begin
								conf2 = 2'b01;
								Do = 1;
						end
					end		
					Do = 0;
				end else begin end
			end else begin end
		//else begin end
	end
	assign Done = Do;
	assign conf_LCD = conf2;
endmodule
				
