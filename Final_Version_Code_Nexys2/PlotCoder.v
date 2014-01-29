module PlotCoder(Clk, TickTack, Din, State, BusyFlag, Repeat, DoutTx);

//i/o_Declaration
	input Clk, TickTack;
	input [7:0] Din;
	input [2:0] State;
	
	output reg BusyFlag, Repeat, DoutTx;

//Local_Declaration_(MachineStates)

	parameter [2:0] BusyState  = 3'b000;
	parameter [2:0] Encode     = 3'b001;
	parameter [2:0] GetOut     = 3'b010;
	parameter [2:0] Push       = 3'b011;
	parameter [2:0] Move       = 3'b100;

	reg [7:0] DinT;
	reg [11:0] DoutTxT;
	reg StartBit, StopBit, ParityBit;
    reg [3:0] OK;

	always @ (posedge Clk) begin
        BusyFlag <= 1;
		//OK <= 0;
		case (State) 
			BusyState:
			begin
				BusyFlag <= ~BusyFlag;
			end		
			Encode:
			begin
				DinT <= Din;
				StartBit <= 0;
				StopBit  <= 1;
				ParityBit <= ^DinT;
			end
			GetOut:
			begin 
				DinT <= 8'b00100110;
			end
			Push:
			begin
				DoutTxT <= {StopBit,StartBit,DinT,ParityBit,StopBit};
			end
			Move:
			begin
				Repeat <= 0;
				if (OK != 13) begin			
					if (TickTack == 1) begin			
						DoutTx <= DoutTxT[11];
						DoutTxT <= {DoutTxT[10:0], 1'b0};
						OK <= OK + 1'b1;
					end else begin
					end
				end else begin
				Repeat <= 1;
                OK <= 0;
				end	
			end
			default:
			begin
			BusyFlag <= 0;				
			end
		endcase
	end
endmodule
