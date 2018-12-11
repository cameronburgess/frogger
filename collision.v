module collision (clk,rst,frog,traffic,border,end_zone,xCount,yCount,win,game_over); 

input clk, rst, frog, border, end_zone;
input [114:0]traffic;
input [9:0]xCount;
input [9:0]yCount;
output win, game_over; //possible results of game: frog hit by car(lose) or frog reaches pond(win)
	
wire frog;
wire end_zone;
wire border;
wire [114:0]traffic;

wire [9:0] xCount;
wire [9:0] yCount;

reg game_over; //haven't addressed yet
reg win; //frog reaches "pond"
	
//overall vision for this module is to calculate win and loss conditions. The loss condition is named game_over, win condition is called win
	
	
	
	
//collision calculator
wire squish; //frog lands in pond
wire splash; //frog hit by car

assign splash = frog && end_zone;
assign squish = (frog && border) || (frog && (traffic[0] || traffic[1] || traffic[2] || traffic[3] || traffic[4] || traffic[5] || traffic[6] || traffic[7] || traffic[8] || traffic[9] || traffic[10] || traffic [11] || traffic[12] || traffic[13] || traffic[14] || traffic[15] || traffic[16] || traffic[17] || traffic[18] || traffic[19] || traffic[20] || traffic[21] || traffic[22] || traffic[23] || traffic[24] || traffic[25] || traffic[26] || traffic[27] || traffic[28] || traffic[29] || traffic[30] || traffic[31] || traffic[32] || traffic[33] || traffic[34] || traffic[35] || traffic[36] || traffic[37] || traffic[38] || traffic[39] || traffic[40] || traffic[41] || traffic[42] || traffic[43] || traffic[44] || traffic[45] || traffic[46] || traffic[47] || traffic[48] || traffic[49] || traffic[50] || traffic[51] || traffic[52] || traffic[53] || traffic[54] || traffic[55] || traffic [56] || traffic[57] || traffic[58] || traffic[59] || traffic[60] || traffic[61] || traffic[62] || traffic[63] || traffic[64] || traffic[65] || traffic[66] || traffic[67] || traffic[68] || traffic[69] || traffic[70] || traffic[71] || traffic[72] || traffic[73] || traffic[74] || traffic[75] || traffic[76] || traffic[77] || traffic[78] || traffic[79] || traffic[80] || traffic[81] || traffic[82] || traffic[83] || traffic[84] || traffic[85] || traffic[86] || traffic[87] || traffic[88] || traffic[89] || traffic[90] || traffic[91] || traffic[92] || traffic[93] || traffic[94] || traffic[95] || traffic[96] || traffic[97] || traffic[98] || traffic[99] || traffic[100] || traffic[101] || traffic[102] || traffic[103] || traffic[104] || traffic[105] || traffic[106] || traffic[107] || traffic[108] || traffic[109] || traffic[110] || traffic[111] || traffic[112] || traffic[113] || traffic[114]));

localparam alive = 2'd0, winner = 2'd1, loser = 2'd2;
reg [1:0]S;
reg [1:0]NS;

always @(posedge clk) //state updater
	begin
		if (rst == 1'b1)
			S <= alive;
		else
			S <= NS;
	end

always @(*) //next state calculator
	case (S)
		alive: //should stay here until the frog hits something
			begin
				if (splash == 1'b1)
					NS = winner;
				else if (squish == 1'b1)
					NS = loser;
				else
					NS = alive;
			end
		winner:							//the winner and loser states loop into themselves until the reset is triggered (fixes "win after loss" and "loss after win" bugs)
			NS = winner;
		loser:
			NS = loser;
	endcase

always @(posedge clk) //output generator
	begin
		if (rst == 1'b1)
			begin
				win <= 1'b0;
				game_over <= 1'b0;
			end
		else
			begin
				case (S)
					alive:
						begin
							win <= 1'b0;
							game_over <= 1'b0;
						end
					winner:
						win <= 1'b1;
					loser:
						game_over <= 1'b1;
				endcase
			end
		
	end
	
//
		
endmodule
