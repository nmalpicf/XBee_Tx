`timescale 1ns/1ps
module Top_XBee_TB;

reg Clk, Reset, ND, Eviction, Sent; 
reg [7:0] Din;

wire BusyFlag, DoutTx;

Top_XBee uut (.Clk(Clk), .Reset(Reset), .ND(ND), .Eviction(Eviction), .Sent(Sent), .Din(Din), .BusyFlag(BusyFlag), .DoutTx(DoutTx));

initial begin 
    Clk = 0;
    Reset = 1;
    ND = 0;
    Eviction = 0;
    Sent = 1;
    Din = 8'b0;
end

initial begin
    forever begin
        #1 Clk = ~Clk;
    end
end

initial begin
    #1000
    Reset = 0;    
    ND = 1;
    Din = 8'b11001110;
end
	initial begin: TEST_CASE
		$dumpfile("Top_XBee_TB.vcd");
		$dumpvars(-1, uut);
		#2000000 $finish;
   	end 
endmodule
