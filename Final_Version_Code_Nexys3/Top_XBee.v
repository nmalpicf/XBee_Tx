    module Top_XBee(Clk, Reset, ND, Eviction, Din, BusyFlag, DoutTx, Rx, conf_LCD);
        
//i/o_Declarations
        input Clk;
        input Reset;
        input ND;
        input Eviction;
        input [7:0] Din;
        input Rx;

        output BusyFlag;
        output DoutTx;
        output [1:0] conf_LCD;

//Local_Wire_Declarations
        wire TickTack;
        wire [2:0] State;
        wire Rx_Check;
        wire Repeat;
        wire [7:0] Dout;
        wire comp_Rx; 
        wire Done;
        wire tick;
        wire Check;
        wire s_count;
        wire s_Date;
        wire s_comp;
//        wire [7:0] Din;
//        wire ND;

Counter Counter(.Clk(Clk), .Reset(Reset), .TickTack(TickTack));

ControllerTx ControllerTx(.Clk(Clk), .Reset(Reset), .ND(ND), .Eviction(Eviction), .Repeat(Repeat), .State(State), .Rx_Check(Rx_Check));

PlotCoder PlotCoder(.Clk(Clk), .TickTack(TickTack), .Din(Din), .State(State), .BusyFlag(BusyFlag), .Repeat(Repeat), .DoutTx(DoutTx));

Compare Compare(.clk(Clk), .comp_Tx(Rx_Check), .D_In(Dout), .conf_LCD(conf_LCD), .Done(Done), .comp_Rx(comp_Rx));

CounterII CounterII(.clk(Clk), .tick(tick), .s_count(s_count));

Data Data(.date(s_Date), .tick(tick), .Rx(Rx), .Check(Check), .Dout(Dout));

Control Control(.clk(Clk), .reset(Reset), .Rx(Rx), .tick(tick), .Check(Check), .done(Done), .s_count(s_count), .s_Date(s_Date), .s_comp(comp_Rx));
//Test Test(.Clk(Clk), .TickTack(TickTack), .BusyFlag(BusyFlag), .ND(ND), .Din(Din));
endmodule
