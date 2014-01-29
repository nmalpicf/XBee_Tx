module ControllerTx(Clk, Reset, ND, Eviction, Repeat, State, Rx_Check);

//i/o_Declaration
	input Clk, Reset, ND, Eviction, Repeat;
	
	output reg [2:0] State;
    output reg Rx_Check;

//Local_Declaration_(MachineStates)
	parameter [2:0] Iddle 	   = 3'b000;
	parameter [2:0] Busy  	   = 3'b001;
	parameter [2:0] Evacuation = 3'b010;
	parameter [2:0] CodeGen    = 3'b011;
	parameter [2:0] Load       = 3'b100;
	parameter [2:0] Shift      = 3'b101;

	reg [2:0] CurrentState;
	reg [2:0] NextState;
    reg [3:0] Rx_Count;


//Declaration_PlotCoder_Signals_(MachineStates)

	parameter [2:0] BusyState  = 3'b000;
	parameter [2:0] Encode     = 3'b001;
	parameter [2:0] GetOut     = 3'b010;
	parameter [2:0] Push       = 3'b011;
	parameter [2:0] Move       = 3'b100;
	

	always @ (posedge Clk, posedge Reset) begin
		if (Reset) begin
			CurrentState <= Iddle;
			end else begin
			NextState <= CurrentState;
			case (CurrentState)
				Iddle:
				begin
					if (ND == 1 || Eviction == 1) begin
					State <= BusyState;				
					CurrentState <= Busy;
					end
				end
				Busy:
				begin
					if (Eviction == 1) begin 
					CurrentState <= Evacuation;
					end else begin
						CurrentState <= CodeGen;
						end
				end
				Evacuation:
				begin
					State <= GetOut;
					CurrentState <= CodeGen;
				end			
				CodeGen:
				begin
					State <= Encode;
					CurrentState <= Load;
				end
				Load:
				begin
					State <= Push;
					CurrentState <= Shift;
				end
				Shift:
				begin
					State <= Move;
					if (Repeat == 1) begin
					CurrentState <= Iddle;
                    State <= BusyState;

                        if (Rx_Count == 13) begin
                            Rx_Check <= 1;
                            Rx_Count <= 4'b0;                         
                            end else begin
                                Rx_Count <= Rx_Count + 1;
                                Rx_Check <= 0;
                            end
						end else begin
						end
				end
				default:
				begin
					CurrentState <= Iddle;
				end	
			endcase
			end
	end
endmodule
