module text(clk,rst,xCount,yCount,game_over_text,win_text,level_text,level_num1_text,level_num2_text,safezone_L4,safezone_L8,safezone_L13);
input clk,rst;
input [9:0]xCount;
input [9:0] yCount;
wire [9:0] xCount;
wire [9:0] yCount;

output game_over_text;
output win_text;
output level_text;
output level_num1_text;
output level_num2_text;
output safezone_L4;
output safezone_L8;
output safezone_L13;


////game over text////
wire game_over_text;
assign game_over_text = (go1 || go2 || go3 || go4 || go5 || go6 || go7 || go8 || go9 || go10);
reg [9:0] game_overX[0:31];
reg [8:0] game_overY[0:31];

//the words "GAME OVER" are displayed with "GAME" above "OVER" and are written with 5 blocks of 10 horizontal pixels (letters are 50 pixels tall) with a 10 pixel gap between the words

//"GAME"
reg go1, go2, go3, go4, go5;

//10 pixel gap

//"OVER"
reg go6, go7, go8, go9, go10;

always@(posedge clk) 
	begin	
			if (rst == 1'b1)
				begin
					game_overX[0] = 10'd200;
					game_overY[0] = 9'd200;
					
				end
			else
				begin
					//"GAME"
					go1 = ((yCount >= (game_overY[0] + 9'd0))  && (yCount < (game_overY[0] + 9'd10)))  &&  ( ( (xCount >= (game_overX[0] + 10'd10)) && (xCount < (game_overX[0] + 10'd50)) ) || ( (xCount >= (game_overX[0] + 10'd90)) && (xCount < (game_overX[0] + 10'd100)) ) || ( (xCount >= (game_overX[0] + 10'd140)) && (xCount < (game_overX[0] + 10'd150)) ) || ( (xCount >= (game_overX[0] + 10'd180)) && (xCount < (game_overX[0] + 10'd190)) ) || ( (xCount >= (game_overX[0] + 10'd210)) && (xCount < (game_overX[0] + 10'd260)) )  );
					go2 = ((yCount >= (game_overY[0] + 9'd10)) && (yCount < (game_overY[0] + 9'd20)))  &&  ( ( (xCount >= (game_overX[0] + 10'd0)) && (xCount < (game_overX[0] + 10'd10)) ) || ( (xCount >= (game_overX[0] + 10'd80)) && (xCount < (game_overX[0] + 10'd90)) ) || ( (xCount >= (game_overX[0] + 10'd100)) && (xCount < (game_overX[0] + 10'd110)) ) || ( (xCount >= (game_overX[0] + 10'd140)) && (xCount < (game_overX[0] + 10'd160)) ) || ( (xCount >= (game_overX[0] + 10'd170)) && (xCount < (game_overX[0] + 10'd190)) ) || ( (xCount >= (game_overX[0] + 10'd210)) && (xCount < (game_overX[0] + 10'd220)) ) );
					go3 = ((yCount >= (game_overY[0] + 9'd20)) && (yCount < (game_overY[0] + 9'd30)))  &&  ( ( (xCount >= (game_overX[0] + 10'd0)) && (xCount < (game_overX[0] + 10'd10)) ) || ( (xCount >= (game_overX[0] + 10'd30)) && (xCount < (game_overX[0] + 10'd50)) ) || ( (xCount >= (game_overX[0] + 10'd70)) && (xCount < (game_overX[0] + 10'd80)) ) || ( (xCount >= (game_overX[0] + 10'd110)) && (xCount < (game_overX[0] + 10'd120)) ) || ( (xCount >= (game_overX[0] + 10'd140)) && (xCount < (game_overX[0] + 10'd150)) ) || ( (xCount >= (game_overX[0] + 10'd160)) && (xCount < (game_overX[0] + 10'd170)) ) || ( (xCount >= (game_overX[0] + 10'd180)) && (xCount < (game_overX[0] + 10'd190)) ) || ( (xCount >= (game_overX[0] + 10'd210)) && (xCount < (game_overX[0] + 10'd240)) ) );
					go4 = ((yCount >= (game_overY[0] + 9'd30)) && (yCount < (game_overY[0] + 9'd40)))  &&  ( ( (xCount >= (game_overX[0] + 10'd0)) && (xCount < (game_overX[0] + 10'd10)) ) || ( (xCount >= (game_overX[0] + 10'd40)) && (xCount < (game_overX[0] + 10'd50)) ) || ( (xCount >= (game_overX[0] + 10'd70)) && (xCount < (game_overX[0] + 10'd120)) ) || ( (xCount >= (game_overX[0] + 10'd140)) && (xCount < (game_overX[0] + 10'd150)) ) || ( (xCount >= (game_overX[0] + 10'd180)) && (xCount < (game_overX[0] + 10'd190)) ) || ( (xCount >= (game_overX[0] + 10'd210)) && (xCount < (game_overX[0] + 10'd220)) ) );
					go5 = ((yCount >= (game_overY[0] + 9'd40)) && (yCount < (game_overY[0] + 9'd50)))  &&  ( ( (xCount >= (game_overX[0] + 10'd10)) && (xCount < (game_overX[0] + 10'd50)) ) || ( (xCount >= (game_overX[0] + 10'd70)) && (xCount < (game_overX[0] + 10'd80)) ) || ( (xCount >= (game_overX[0] + 10'd110)) && (xCount < (game_overX[0] + 10'd120)) ) || ( (xCount >= (game_overX[0] + 10'd140)) && (xCount < (game_overX[0] + 10'd150)) ) || ( (xCount >= (game_overX[0] + 10'd180)) && (xCount < (game_overX[0] + 10'd190)) ) || ( (xCount >= (game_overX[0] + 10'd210)) && (xCount < (game_overX[0] + 10'd260)) ) );
					//gap
					//"OVER"
					go6 =  ((yCount >= (game_overY[0] + 9'd60))  && (yCount < (game_overY[0] + 9'd70)))  &&  ( ( (xCount >= (game_overX[0] + 10'd10)) && (xCount < (game_overX[0] + 10'd40)) ) || ( (xCount >= (game_overX[0] + 10'd70)) && (xCount < (game_overX[0] + 10'd80)) ) || ( (xCount >= (game_overX[0] + 10'd110)) && (xCount < (game_overX[0] + 10'd120)) ) || ( (xCount >= (game_overX[0] + 10'd140)) && (xCount < (game_overX[0] + 10'd190)) ) || ( (xCount >= (game_overX[0] + 10'd210)) && (xCount < (game_overX[0] + 10'd250)) ) );
					go7 =  ((yCount >= (game_overY[0] + 9'd70))  && (yCount < (game_overY[0] + 9'd80)))  &&  ( ( (xCount >= (game_overX[0] + 10'd0)) && (xCount < (game_overX[0] + 10'd10)) ) || ( (xCount >= (game_overX[0] + 10'd40)) && (xCount < (game_overX[0] + 10'd50)) ) || ( (xCount >= (game_overX[0] + 10'd70)) && (xCount < (game_overX[0] + 10'd80)) ) || ( (xCount >= (game_overX[0] + 10'd110)) && (xCount < (game_overX[0] + 10'd120)) ) || ( (xCount >= (game_overX[0] + 10'd140)) && (xCount < (game_overX[0] + 10'd150)) ) || ( (xCount >= (game_overX[0] + 10'd210)) && (xCount < (game_overX[0] + 10'd220)) ) || ( (xCount >= (game_overX[0] + 10'd250)) && (xCount < (game_overX[0] + 10'd260)) ) );
					go8 =  ((yCount >= (game_overY[0] + 9'd80))  && (yCount < (game_overY[0] + 9'd90)))  &&  ( ( (xCount >= (game_overX[0] + 10'd0)) && (xCount < (game_overX[0] + 10'd10)) ) || ( (xCount >= (game_overX[0] + 10'd40)) && (xCount < (game_overX[0] + 10'd50)) ) || ( (xCount >= (game_overX[0] + 10'd70)) && (xCount < (game_overX[0] + 10'd80)) ) || ( (xCount >= (game_overX[0] + 10'd110)) && (xCount < (game_overX[0] + 10'd120)) ) || ( (xCount >= (game_overX[0] + 10'd140)) && (xCount < (game_overX[0] + 10'd170)) ) || ( (xCount >= (game_overX[0] + 10'd210)) && (xCount < (game_overX[0] + 10'd250)) ) );
					go9 =  ((yCount >= (game_overY[0] + 9'd90))  && (yCount < (game_overY[0] + 9'd100))) &&  ( ( (xCount >= (game_overX[0] + 10'd0)) && (xCount < (game_overX[0] + 10'd10)) ) || ( (xCount >= (game_overX[0] + 10'd40)) && (xCount < (game_overX[0] + 10'd50)) ) || ( (xCount >= (game_overX[0] + 10'd80)) && (xCount < (game_overX[0] + 10'd90)) ) || ( (xCount >= (game_overX[0] + 10'd100)) && (xCount < (game_overX[0] + 10'd110)) ) || ( (xCount >= (game_overX[0] + 10'd140)) && (xCount < (game_overX[0] + 10'd150)) ) || ( (xCount >= (game_overX[0] + 10'd210)) && (xCount < (game_overX[0] + 10'd220)) ) || ( (xCount >= (game_overX[0] + 10'd250)) && (xCount < (game_overX[0] + 10'd260)) ) );
					go10 = ((yCount >= (game_overY[0] + 9'd100)) && (yCount < (game_overY[0] + 9'd110))) &&  ( ( (xCount >= (game_overX[0] + 10'd10)) && (xCount < (game_overX[0] + 10'd40)) ) || ( (xCount >= (game_overX[0] + 10'd90)) && (xCount < (game_overX[0] + 10'd100)) ) || ( (xCount >= (game_overX[0] + 10'd140)) && (xCount < (game_overX[0] + 10'd190)) ) || ( (xCount >= (game_overX[0] + 10'd210)) && (xCount < (game_overX[0] + 10'd220)) ) || ( (xCount >= (game_overX[0] + 10'd250)) && (xCount < (game_overX[0] + 10'd260)) ) );
				end
	end
//
////

////win text////
wire win_text;
assign win_text = (win1 || win2 || win3 || win4 || win5);
reg [9:0] wt_X[0:31];
reg [8:0] wt_Y[0:31];

// the text "WIN!" is written in the same style as the game over text
reg win1, win2, win3, win4, win5;

always @(posedge clk)
	begin
		if (rst == 1'b1)
			begin
				wt_X[0] = 10'd230;
				wt_Y[0] = 9'd230;
			end
		else
			begin
			//"WIN!"
			win1 = ((yCount >= (wt_Y[0] + 9'd0))  && (yCount < (wt_Y[0] + 9'd10)))  && ( ( (xCount >= (wt_X[0] + 10'd0)) && (xCount < (wt_X[0] + 10'd10)) ) || ( (xCount >= (wt_X[0] + 10'd40)) && (xCount < (wt_X[0] + 10'd50)) ) || ( (xCount >= (wt_X[0] + 10'd70)) && (xCount < (wt_X[0] + 10'd120)) ) || ( (xCount >= (wt_X[0] + 10'd140)) && (xCount < (wt_X[0] + 10'd150)) ) || ((xCount >= (wt_X[0] + 10'd180)) && (xCount < (wt_X[0] + 10'd190)) ) || ( (xCount >= (wt_X[0] + 10'd200)) && (xCount < (wt_X[0] + 10'd210)) ) );
			win2 = ((yCount >= (wt_Y[0] + 9'd10)) && (yCount < (wt_Y[0] + 9'd20)))  && ( ( (xCount >= (wt_X[0] + 10'd0)) && (xCount < (wt_X[0] + 10'd10)) ) || ( (xCount >= (wt_X[0] + 10'd40)) && (xCount < (wt_X[0] + 10'd50)) ) || ( (xCount >= (wt_X[0] + 10'd90)) && (xCount < (wt_X[0] + 10'd100)) ) || ( (xCount >= (wt_X[0] + 10'd140)) && (xCount < (wt_X[0] + 10'd160)) ) || ((xCount >= (wt_X[0] + 10'd180)) && (xCount < (wt_X[0] + 10'd190)) ) || ( (xCount >= (wt_X[0] + 10'd200)) && (xCount < (wt_X[0] + 10'd210)) ) );
			win3 = ((yCount >= (wt_Y[0] + 9'd20)) && (yCount < (wt_Y[0] + 9'd30)))  && ( ( (xCount >= (wt_X[0] + 10'd0)) && (xCount < (wt_X[0] + 10'd10)) ) || ( (xCount >= (wt_X[0] + 10'd20)) && (xCount < (wt_X[0] + 10'd30)) ) || ( (xCount >= (wt_X[0] + 10'd40)) && (xCount < (wt_X[0] + 10'd50)) ) || ( (xCount >= (wt_X[0] + 10'd90)) && (xCount < (wt_X[0] + 10'd100)) ) || ( (xCount >= (wt_X[0] + 10'd140)) && (xCount < (wt_X[0] + 10'd150)) ) || ((xCount >= (wt_X[0] + 10'd160)) && (xCount < (wt_X[0] + 10'd170)) ) || ( (xCount >= (wt_X[0] + 10'd180)) && (xCount < (wt_X[0] + 10'd190)) ) || ( (xCount >= (wt_X[0] + 10'd200)) && (xCount < (wt_X[0] + 10'd210)) ) );
			win4 = ((yCount >= (wt_Y[0] + 9'd30)) && (yCount < (wt_Y[0] + 9'd40)))  && ( ( (xCount >= (wt_X[0] + 10'd0)) && (xCount < (wt_X[0] + 10'd20)) ) || ( (xCount >= (wt_X[0] + 10'd30)) && (xCount < (wt_X[0] + 10'd50)) ) || ( (xCount >= (wt_X[0] + 10'd90)) && (xCount < (wt_X[0] + 10'd100)) ) || ( (xCount >= (wt_X[0] + 10'd140)) && (xCount < (wt_X[0] + 10'd150)) ) || ((xCount >= (wt_X[0] + 10'd170)) && (xCount < (wt_X[0] + 10'd190)) ) );
			win5 = ((yCount >= (wt_Y[0] + 9'd40)) && (yCount < (wt_Y[0] + 9'd50)))  && ( ( (xCount >= (wt_X[0] + 10'd0)) && (xCount < (wt_X[0] + 10'd10)) ) || ( (xCount >= (wt_X[0] + 10'd40)) && (xCount < (wt_X[0] + 10'd50)) ) || ( (xCount >= (wt_X[0] + 10'd70)) && (xCount < (wt_X[0] + 10'd120)) ) || ( (xCount >= (wt_X[0] + 10'd140)) && (xCount < (wt_X[0] + 10'd150)) ) || ((xCount >= (wt_X[0] + 10'd180)) && (xCount < (wt_X[0] + 10'd190)) ) || ( (xCount >= (wt_X[0] + 10'd200)) && (xCount < (wt_X[0] + 10'd210)) ) );
			end
	end
//
////

////level and level number text////
//the text "LEVEL 1" and "LEVEL 2" is written in the same font as the win and game over text, but is scaled down from blocks that are 10 pixels each to blocks that are 2 pixels each
wire level_text;
wire level_num1_text;
wire level_num2_text;
reg [9:0] level_X[0:31];
reg [8:0] level_Y[0:31];

assign level_text = (lvl1 || lvl2 || lvl3 || lvl4 || lvl5);
assign level_num1_text = (lvone1 || lvone2 || lvone3 || lvone4 || lvone5);
assign level_num2_text = (lvtwo1 || lvtwo2 || lvtwo3 || lvtwo4 || lvtwo5);

reg lvl1, lvl2, lvl3, lvl4, lvl5;
reg lvone1, lvone2, lvone3, lvone4, lvone5;
reg lvtwo1, lvtwo2, lvtwo3, lvtwo4, lvtwo5;

always @(posedge clk)
	begin
		level_X[0] = 10'd15;
		level_Y[0] = 9'd3;
		//"LEVEL"
		lvl1 = ((yCount >= (level_Y[0] + 9'd0))  && (yCount < (level_Y[0] + 9'd2)))  && ( ( (xCount >= (level_X[0] + 10'd0)) && (xCount < (level_X[0] + 10'd2)) )  || ( (xCount >= (level_X[0] + 10'd12)) && (xCount < (level_X[0] + 10'd22)) ) || ( (xCount >= (level_X[0] + 10'd24)) && (xCount < (level_X[0] + 10'd26)) ) || ( (xCount >= (level_X[0] + 10'd32)) && (xCount < (level_X[0] + 10'd34)) ) || ( (xCount >= (level_X[0] + 10'd36)) && (xCount < (level_X[0] + 10'd46)) ) || ( (xCount >= (level_X[0] + 10'd48)) && (xCount < (level_X[0] + 10'd50)) ) );
		lvl2 = ((yCount >= (level_Y[0] + 9'd2))  && (yCount < (level_Y[0] + 9'd4)))  && ( ( (xCount >= (level_X[0] + 10'd0)) && (xCount < (level_X[0] + 10'd2)) )  || ( (xCount >= (level_X[0] + 10'd12)) && (xCount < (level_X[0] + 10'd14)) ) || ( (xCount >= (level_X[0] + 10'd24)) && (xCount < (level_X[0] + 10'd26)) ) || ( (xCount >= (level_X[0] + 10'd32)) && (xCount < (level_X[0] + 10'd34)) ) || ( (xCount >= (level_X[0] + 10'd36)) && (xCount < (level_X[0] + 10'd38)) ) || ( (xCount >= (level_X[0] + 10'd48)) && (xCount < (level_X[0] + 10'd50)) ) );
		lvl3 = ((yCount >= (level_Y[0] + 9'd4))  && (yCount < (level_Y[0] + 9'd6)))  && ( ( (xCount >= (level_X[0] + 10'd0)) && (xCount < (level_X[0] + 10'd2)) )  || ( (xCount >= (level_X[0] + 10'd12)) && (xCount < (level_X[0] + 10'd18)) ) || ( (xCount >= (level_X[0] + 10'd24)) && (xCount < (level_X[0] + 10'd26)) ) || ( (xCount >= (level_X[0] + 10'd32)) && (xCount < (level_X[0] + 10'd34)) ) || ( (xCount >= (level_X[0] + 10'd36)) && (xCount < (level_X[0] + 10'd42)) ) || ( (xCount >= (level_X[0] + 10'd48)) && (xCount < (level_X[0] + 10'd50)) ) );
		lvl4 = ((yCount >= (level_Y[0] + 9'd6))  && (yCount < (level_Y[0] + 9'd8)))  && ( ( (xCount >= (level_X[0] + 10'd0)) && (xCount < (level_X[0] + 10'd2)) )  || ( (xCount >= (level_X[0] + 10'd12)) && (xCount < (level_X[0] + 10'd14)) ) || ( (xCount >= (level_X[0] + 10'd26)) && (xCount < (level_X[0] + 10'd28)) ) || ( (xCount >= (level_X[0] + 10'd30)) && (xCount < (level_X[0] + 10'd32)) ) || ( (xCount >= (level_X[0] + 10'd36)) && (xCount < (level_X[0] + 10'd38)) ) || ( (xCount >= (level_X[0] + 10'd48)) && (xCount < (level_X[0] + 10'd50)) ) );
		lvl5 = ((yCount >= (level_Y[0] + 9'd8))  && (yCount < (level_Y[0] + 9'd10))) && ( ( (xCount >= (level_X[0] + 10'd0)) && (xCount < (level_X[0] + 10'd10)) ) || ( (xCount >= (level_X[0] + 10'd12)) && (xCount < (level_X[0] + 10'd22)) ) || ( (xCount >= (level_X[0] + 10'd28)) && (xCount < (level_X[0] + 10'd30)) ) || ( (xCount >= (level_X[0] + 10'd36)) && (xCount < (level_X[0] + 10'd46)) ) || ( (xCount >= (level_X[0] + 10'd48)) && (xCount < (level_X[0] + 10'd58)) )  );
		
		//"1"
		lvone1 = ((yCount >= (level_Y[0] + 9'd0))  && (yCount < (level_Y[0] + 9'd2)))   && ( (xCount >= (level_X[0] + 10'd62)) && (xCount < (level_X[0] + 10'd66)) );
		lvone2 = ((yCount >= (level_Y[0] + 9'd2))  && (yCount < (level_Y[0] + 9'd4)))   && ( (xCount >= (level_X[0] + 10'd64)) && (xCount < (level_X[0] + 10'd66)) );
		lvone3 = ((yCount >= (level_Y[0] + 9'd4))  && (yCount < (level_Y[0] + 9'd6)))   && ( (xCount >= (level_X[0] + 10'd64)) && (xCount < (level_X[0] + 10'd66)) );
		lvone4 = ((yCount >= (level_Y[0] + 9'd6))  && (yCount < (level_Y[0] + 9'd8)))   && ( (xCount >= (level_X[0] + 10'd64)) && (xCount < (level_X[0] + 10'd66)) );
		lvone5 = ((yCount >= (level_Y[0] + 9'd8))  && (yCount < (level_Y[0] + 9'd10)))  && ( (xCount >= (level_X[0] + 10'd62)) && (xCount < (level_X[0] + 10'd68)) );
		
		//"2"
		lvtwo1 = ((yCount >= (level_Y[0] + 9'd0))  && (yCount < (level_Y[0] + 9'd2)))   && ( (xCount >= (level_X[0] + 10'd60)) && (xCount < (level_X[0] + 10'd68)) );
		lvtwo2 = ((yCount >= (level_Y[0] + 9'd2))  && (yCount < (level_Y[0] + 9'd4)))   && ( (xCount >= (level_X[0] + 10'd68)) && (xCount < (level_X[0] + 10'd70)) );
		lvtwo3 = ((yCount >= (level_Y[0] + 9'd4))  && (yCount < (level_Y[0] + 9'd6)))   && ( (xCount >= (level_X[0] + 10'd62)) && (xCount < (level_X[0] + 10'd68)) );
		lvtwo4 = ((yCount >= (level_Y[0] + 9'd6))  && (yCount < (level_Y[0] + 9'd8)))   && ( (xCount >= (level_X[0] + 10'd60)) && (xCount < (level_X[0] + 10'd62)) );
		lvtwo5 = ((yCount >= (level_Y[0] + 9'd8))  && (yCount < (level_Y[0] + 9'd10)))  && ( (xCount >= (level_X[0] + 10'd60)) && (xCount < (level_X[0] + 10'd70)) );
	end
//
////

////safe zone text////
//the text "SAFE ZONE" is written in the same font as the other text, but is scaled to blocks that are 3 pixels each

//there are 3 "safe zone" lanes in level one only
wire safezone_L4;  //lane 4
wire safezone_L8;  //lane 8
wire safezone_L13; //lane 13

reg [9:0] sz4_X[0:31];
reg [8:0] sz4_Y[0:31];
reg [9:0] sz8_X[0:31];
reg [8:0] sz8_Y[0:31];
reg [9:0] sz13_X[0:31];
reg [8:0] sz13_Y[0:31];

assign safezone_L4 = (s4_1 || s4_2 || s4_3 || s4_4 || s4_5);
assign safezone_L8 = (s8_1 || s8_2 || s8_3 || s8_4 || s8_5);
assign safezone_L13 = (s13_1 || s13_2 || s13_3 || s13_4 || s13_5);

reg s4_1, s4_2, s4_3, s4_4, s4_5;
reg s8_1, s8_2, s8_3, s8_4, s8_5;
reg s13_1, s13_2, s13_3, s13_4, s13_5;

always @(posedge clk)
	begin
		sz4_X[0] = 10'd20;
		sz4_Y[0] = 9'd150;
		sz8_X[0] = 10'd20;
		sz8_Y[0] = 9'd250;
		sz13_X[0] = 10'd20;
		sz13_Y[0] = 9'd375;
		
		//"SAFE ZONE" in lane 4
		s4_1 = ((yCount >= (sz4_Y[0] + 9'd0))  && (yCount < (sz4_Y[0] + 9'd3)))   && ( ( (xCount >= (sz4_X[0] + 10'd3)) && (xCount < (sz4_X[0] + 10'd15)) ) || ( (xCount >= (sz4_X[0] + 10'd24)) && (xCount < (sz4_X[0] + 10'd27)) ) || ( (xCount >= (sz4_X[0] + 10'd36)) && (xCount < (sz4_X[0] + 10'd51)) ) || ( (xCount >= (sz4_X[0] + 10'd54)) && (xCount < (sz4_X[0] + 10'd69)) ) || ( (xCount >= (sz4_X[0] + 10'd72)) && (xCount < (sz4_X[0] + 10'd87)) ) || ( (xCount >= (sz4_X[0] + 10'd93)) && (xCount < (sz4_X[0] + 10'd102)) ) || ( (xCount >= (sz4_X[0] + 10'd108)) && (xCount < (sz4_X[0] + 10'd111)) ) || ( (xCount >= (sz4_X[0] + 10'd120)) && (xCount < (sz4_X[0] + 10'd123)) ) || ( (xCount >= (sz4_X[0] + 10'd126)) && (xCount < (sz4_X[0] + 10'd141)) ) );
		s4_2 = ((yCount >= (sz4_Y[0] + 9'd3))  && (yCount < (sz4_Y[0] + 9'd6)))   && ( ( (xCount >= (sz4_X[0] + 10'd0)) && (xCount < (sz4_X[0] + 10'd3)) ) ||  ( (xCount >= (sz4_X[0] + 10'd21)) && (xCount < (sz4_X[0] + 10'd24)) ) || ( (xCount >= (sz4_X[0] + 10'd27)) && (xCount < (sz4_X[0] + 10'd30)) ) || ( (xCount >= (sz4_X[0] + 10'd36)) && (xCount < (sz4_X[0] + 10'd39)) ) || ( (xCount >= (sz4_X[0] + 10'd54)) && (xCount < (sz4_X[0] + 10'd57)) ) || ( (xCount >= (sz4_X[0] + 10'd81)) && (xCount < (sz4_X[0] + 10'd84)) ) || ( (xCount >= (sz4_X[0] + 10'd90)) && (xCount < (sz4_X[0] + 10'd93)) ) || ( (xCount >= (sz4_X[0] + 10'd102)) && (xCount < (sz4_X[0] + 10'd105)) ) || ( (xCount >= (sz4_X[0] + 10'd108)) && (xCount < (sz4_X[0] + 10'd114)) ) || ( (xCount >= (sz4_X[0] + 10'd120)) && (xCount < (sz4_X[0] + 10'd123)) ) || ( (xCount >= (sz4_X[0] + 10'd126)) && (xCount < (sz4_X[0] + 10'd129)) ) );
		s4_3 = ((yCount >= (sz4_Y[0] + 9'd6))  && (yCount < (sz4_Y[0] + 9'd9)))   && ( ( (xCount >= (sz4_X[0] + 10'd3)) && (xCount < (sz4_X[0] + 10'd12)) ) ||  ( (xCount >= (sz4_X[0] + 10'd18)) && (xCount < (sz4_X[0] + 10'd21)) ) || ( (xCount >= (sz4_X[0] + 10'd30)) && (xCount < (sz4_X[0] + 10'd33)) ) || ( (xCount >= (sz4_X[0] + 10'd36)) && (xCount < (sz4_X[0] + 10'd45)) ) || ( (xCount >= (sz4_X[0] + 10'd54)) && (xCount < (sz4_X[0] + 10'd63)) ) || ( (xCount >= (sz4_X[0] + 10'd78)) && (xCount < (sz4_X[0] + 10'd81)) ) || ( (xCount >= (sz4_X[0] + 10'd90)) && (xCount < (sz4_X[0] + 10'd93)) ) || ( (xCount >= (sz4_X[0] + 10'd102)) && (xCount < (sz4_X[0] + 10'd105)) ) || ( (xCount >= (sz4_X[0] + 10'd108)) && (xCount < (sz4_X[0] + 10'd111)) ) || ( (xCount >= (sz4_X[0] + 10'd114)) && (xCount < (sz4_X[0] + 10'd117)) ) || ( (xCount >= (sz4_X[0] + 10'd120)) && (xCount < (sz4_X[0] + 10'd123)) ) || ( (xCount >= (sz4_X[0] + 10'd126)) && (xCount < (sz4_X[0] + 10'd135)) ) );
		s4_4 = ((yCount >= (sz4_Y[0] + 9'd9))  && (yCount < (sz4_Y[0] + 9'd12)))  && ( ( (xCount >= (sz4_X[0] + 10'd12)) && (xCount < (sz4_X[0] + 10'd15)) ) || ( (xCount >= (sz4_X[0] + 10'd18)) && (xCount < (sz4_X[0] + 10'd33)) ) || ( (xCount >= (sz4_X[0] + 10'd36)) && (xCount < (sz4_X[0] + 10'd39)) ) || ( (xCount >= (sz4_X[0] + 10'd54)) && (xCount < (sz4_X[0] + 10'd57)) ) || ( (xCount >= (sz4_X[0] + 10'd75)) && (xCount < (sz4_X[0] + 10'd78)) ) || ( (xCount >= (sz4_X[0] + 10'd90)) && (xCount < (sz4_X[0] + 10'd93)) ) || ( (xCount >= (sz4_X[0] + 10'd102)) && (xCount < (sz4_X[0] + 10'd105)) ) || ( (xCount >= (sz4_X[0] + 10'd108)) && (xCount < (sz4_X[0] + 10'd111)) ) || ( (xCount >= (sz4_X[0] + 10'd117)) && (xCount < (sz4_X[0] + 10'd123)) ) || ( (xCount >= (sz4_X[0] + 10'd126)) && (xCount < (sz4_X[0] + 10'd129)) ) );
		s4_5 = ((yCount >= (sz4_Y[0] + 9'd12)) && (yCount < (sz4_Y[0] + 9'd15)))  && ( ( (xCount >= (sz4_X[0] + 10'd0)) && (xCount < (sz4_X[0] + 10'd12)) ) || ( (xCount >= (sz4_X[0] + 10'd18)) && (xCount < (sz4_X[0] + 10'd21)) ) || ( (xCount >= (sz4_X[0] + 10'd30)) && (xCount < (sz4_X[0] + 10'd33)) ) || ( (xCount >= (sz4_X[0] + 10'd36)) && (xCount < (sz4_X[0] + 10'd39)) ) || ( (xCount >= (sz4_X[0] + 10'd54)) && (xCount < (sz4_X[0] + 10'd69)) ) || ( (xCount >= (sz4_X[0] + 10'd72)) && (xCount < (sz4_X[0] + 10'd87)) ) || ( (xCount >= (sz4_X[0] + 10'd93)) && (xCount < (sz4_X[0] + 10'd102)) ) || ( (xCount >= (sz4_X[0] + 10'd108)) && (xCount < (sz4_X[0] + 10'd111)) ) || ( (xCount >= (sz4_X[0] + 10'd120)) && (xCount < (sz4_X[0] + 10'd123)) ) || ( (xCount >= (sz4_X[0] + 10'd126)) && (xCount < (sz4_X[0] + 10'd141)) ) );		
		
		//"SAFE ZONE" in lane 8
		s8_1 = ((yCount >= (sz8_Y[0] + 9'd0))  && (yCount < (sz8_Y[0] + 9'd3)))   && ( ( (xCount >= (sz8_X[0] + 10'd3)) && (xCount < (sz8_X[0] + 10'd15)) ) || ( (xCount >= (sz8_X[0] + 10'd24)) && (xCount < (sz8_X[0] + 10'd27)) ) || ( (xCount >= (sz8_X[0] + 10'd36)) && (xCount < (sz8_X[0] + 10'd51)) ) || ( (xCount >= (sz8_X[0] + 10'd54)) && (xCount < (sz8_X[0] + 10'd69)) ) || ( (xCount >= (sz8_X[0] + 10'd72)) && (xCount < (sz8_X[0] + 10'd87)) ) || ( (xCount >= (sz8_X[0] + 10'd93)) && (xCount < (sz8_X[0] + 10'd102)) ) || ( (xCount >= (sz8_X[0] + 10'd108)) && (xCount < (sz8_X[0] + 10'd111)) ) || ( (xCount >= (sz8_X[0] + 10'd120)) && (xCount < (sz8_X[0] + 10'd123)) ) || ( (xCount >= (sz8_X[0] + 10'd126)) && (xCount < (sz8_X[0] + 10'd141)) ) );
		s8_2 = ((yCount >= (sz8_Y[0] + 9'd3))  && (yCount < (sz8_Y[0] + 9'd6)))   && ( ( (xCount >= (sz8_X[0] + 10'd0)) && (xCount < (sz8_X[0] + 10'd3)) ) ||  ( (xCount >= (sz8_X[0] + 10'd21)) && (xCount < (sz8_X[0] + 10'd24)) ) || ( (xCount >= (sz8_X[0] + 10'd27)) && (xCount < (sz8_X[0] + 10'd30)) ) || ( (xCount >= (sz8_X[0] + 10'd36)) && (xCount < (sz8_X[0] + 10'd39)) ) || ( (xCount >= (sz8_X[0] + 10'd54)) && (xCount < (sz8_X[0] + 10'd57)) ) || ( (xCount >= (sz8_X[0] + 10'd81)) && (xCount < (sz8_X[0] + 10'd84)) ) || ( (xCount >= (sz8_X[0] + 10'd90)) && (xCount < (sz8_X[0] + 10'd93)) ) || ( (xCount >= (sz8_X[0] + 10'd102)) && (xCount < (sz8_X[0] + 10'd105)) ) || ( (xCount >= (sz8_X[0] + 10'd108)) && (xCount < (sz8_X[0] + 10'd114)) ) || ( (xCount >= (sz8_X[0] + 10'd120)) && (xCount < (sz8_X[0] + 10'd123)) ) || ( (xCount >= (sz8_X[0] + 10'd126)) && (xCount < (sz8_X[0] + 10'd129)) ) );
		s8_3 = ((yCount >= (sz8_Y[0] + 9'd6))  && (yCount < (sz8_Y[0] + 9'd9)))   && ( ( (xCount >= (sz8_X[0] + 10'd3)) && (xCount < (sz8_X[0] + 10'd12)) ) ||  ( (xCount >= (sz8_X[0] + 10'd18)) && (xCount < (sz8_X[0] + 10'd21)) ) || ( (xCount >= (sz8_X[0] + 10'd30)) && (xCount < (sz8_X[0] + 10'd33)) ) || ( (xCount >= (sz8_X[0] + 10'd36)) && (xCount < (sz8_X[0] + 10'd45)) ) || ( (xCount >= (sz8_X[0] + 10'd54)) && (xCount < (sz8_X[0] + 10'd63)) ) ||  ( (xCount >= (sz8_X[0] + 10'd78)) && (xCount < (sz8_X[0] + 10'd81)) ) || ( (xCount >= (sz8_X[0] + 10'd90)) && (xCount < (sz8_X[0] + 10'd93)) ) || ( (xCount >= (sz8_X[0] + 10'd102)) && (xCount < (sz8_X[0] + 10'd105)) ) || ( (xCount >= (sz8_X[0] + 10'd108)) && (xCount < (sz8_X[0] + 10'd111)) ) || ( (xCount >= (sz8_X[0] + 10'd114)) && (xCount < (sz8_X[0] + 10'd117)) ) || ( (xCount >= (sz8_X[0] + 10'd120)) && (xCount < (sz8_X[0] + 10'd123)) ) || ( (xCount >= (sz8_X[0] + 10'd126)) && (xCount < (sz8_X[0] + 10'd135)) ) );
		s8_4 = ((yCount >= (sz8_Y[0] + 9'd9))  && (yCount < (sz8_Y[0] + 9'd12)))  && ( ( (xCount >= (sz8_X[0] + 10'd12)) && (xCount < (sz8_X[0] + 10'd15)) ) || ( (xCount >= (sz8_X[0] + 10'd18)) && (xCount < (sz8_X[0] + 10'd33)) ) || ( (xCount >= (sz8_X[0] + 10'd36)) && (xCount < (sz8_X[0] + 10'd39)) ) || ( (xCount >= (sz8_X[0] + 10'd54)) && (xCount < (sz8_X[0] + 10'd57)) ) || ( (xCount >= (sz8_X[0] + 10'd75)) && (xCount < (sz8_X[0] + 10'd78)) ) || ( (xCount >= (sz8_X[0] + 10'd90)) && (xCount < (sz8_X[0] + 10'd93)) ) || ( (xCount >= (sz8_X[0] + 10'd102)) && (xCount < (sz8_X[0] + 10'd105)) ) || ( (xCount >= (sz8_X[0] + 10'd108)) && (xCount < (sz8_X[0] + 10'd111)) ) || ( (xCount >= (sz8_X[0] + 10'd117)) && (xCount < (sz8_X[0] + 10'd123)) ) || ( (xCount >= (sz8_X[0] + 10'd126)) && (xCount < (sz8_X[0] + 10'd129)) ) );
		s8_5 = ((yCount >= (sz8_Y[0] + 9'd12)) && (yCount < (sz8_Y[0] + 9'd15)))  && ( ( (xCount >= (sz8_X[0] + 10'd0)) && (xCount < (sz8_X[0] + 10'd12)) ) || ( (xCount >= (sz8_X[0] + 10'd18)) && (xCount < (sz8_X[0] + 10'd21)) ) || ( (xCount >= (sz8_X[0] + 10'd30)) && (xCount < (sz8_X[0] + 10'd33)) ) || ( (xCount >= (sz8_X[0] + 10'd36)) && (xCount < (sz8_X[0] + 10'd39)) ) || ( (xCount >= (sz8_X[0] + 10'd54)) && (xCount < (sz8_X[0] + 10'd69)) ) || ( (xCount >= (sz8_X[0] + 10'd72)) && (xCount < (sz8_X[0] + 10'd87)) ) || ( (xCount >= (sz8_X[0] + 10'd93)) && (xCount < (sz8_X[0] + 10'd102)) ) || ( (xCount >= (sz8_X[0] + 10'd108)) && (xCount < (sz8_X[0] + 10'd111)) ) || ( (xCount >= (sz8_X[0] + 10'd120)) && (xCount < (sz8_X[0] + 10'd123)) ) || ( (xCount >= (sz8_X[0] + 10'd126)) && (xCount < (sz8_X[0] + 10'd141)) ) );		
		
		//"SAFE ZONE" in lane 13
		s13_1 = ((yCount >= (sz13_Y[0] + 9'd0))  && (yCount < (sz13_Y[0] + 9'd3)))   && ( ( (xCount >= (sz13_X[0] + 10'd3)) && (xCount < (sz13_X[0] + 10'd15)) ) || ( (xCount >= (sz13_X[0] + 10'd24)) && (xCount < (sz13_X[0] + 10'd27)) ) || ( (xCount >= (sz13_X[0] + 10'd36)) && (xCount < (sz13_X[0] + 10'd51)) ) || ( (xCount >= (sz13_X[0] + 10'd54)) && (xCount < (sz13_X[0] + 10'd69)) ) || ( (xCount >= (sz13_X[0] + 10'd72)) && (xCount < (sz13_X[0] + 10'd87)) ) || ( (xCount >= (sz13_X[0] + 10'd93)) && (xCount < (sz13_X[0] + 10'd102)) ) || ( (xCount >= (sz13_X[0] + 10'd108)) && (xCount < (sz13_X[0] + 10'd111)) ) || ( (xCount >= (sz13_X[0] + 10'd120)) && (xCount < (sz13_X[0] + 10'd123)) ) || ( (xCount >= (sz13_X[0] + 10'd126)) && (xCount < (sz13_X[0] + 10'd141)) ) );
		s13_2 = ((yCount >= (sz13_Y[0] + 9'd3))  && (yCount < (sz13_Y[0] + 9'd6)))   && ( ( (xCount >= (sz13_X[0] + 10'd0)) && (xCount < (sz13_X[0] + 10'd3)) ) ||  ( (xCount >= (sz13_X[0] + 10'd21)) && (xCount < (sz13_X[0] + 10'd24)) ) || ( (xCount >= (sz13_X[0] + 10'd27)) && (xCount < (sz13_X[0] + 10'd30)) ) || ( (xCount >= (sz13_X[0] + 10'd36)) && (xCount < (sz13_X[0] + 10'd39)) ) || ( (xCount >= (sz13_X[0] + 10'd54)) && (xCount < (sz13_X[0] + 10'd57)) ) || ( (xCount >= (sz13_X[0] + 10'd81)) && (xCount < (sz13_X[0] + 10'd84)) ) || ( (xCount >= (sz13_X[0] + 10'd90)) && (xCount < (sz13_X[0] + 10'd93)) ) || ( (xCount >= (sz13_X[0] + 10'd102)) && (xCount < (sz13_X[0] + 10'd105)) ) || ( (xCount >= (sz13_X[0] + 10'd108)) && (xCount < (sz13_X[0] + 10'd114)) ) || ( (xCount >= (sz13_X[0] + 10'd120)) && (xCount < (sz13_X[0] + 10'd123)) ) || ( (xCount >= (sz13_X[0] + 10'd126)) && (xCount < (sz13_X[0] + 10'd129)) ) );
		s13_3 = ((yCount >= (sz13_Y[0] + 9'd6))  && (yCount < (sz13_Y[0] + 9'd9)))   && ( ( (xCount >= (sz13_X[0] + 10'd3)) && (xCount < (sz13_X[0] + 10'd12)) ) ||  ( (xCount >= (sz13_X[0] + 10'd18)) && (xCount < (sz13_X[0] + 10'd21)) ) || ( (xCount >= (sz13_X[0] + 10'd30)) && (xCount < (sz13_X[0] + 10'd33)) ) || ( (xCount >= (sz13_X[0] + 10'd36)) && (xCount < (sz13_X[0] + 10'd45)) ) || ( (xCount >= (sz13_X[0] + 10'd54)) && (xCount < (sz13_X[0] + 10'd63)) ) ||  ( (xCount >= (sz13_X[0] + 10'd78)) && (xCount < (sz13_X[0] + 10'd81)) ) || ( (xCount >= (sz13_X[0] + 10'd90)) && (xCount < (sz13_X[0] + 10'd93)) ) || ( (xCount >= (sz13_X[0] + 10'd102)) && (xCount < (sz13_X[0] + 10'd105)) ) || ( (xCount >= (sz13_X[0] + 10'd108)) && (xCount < (sz13_X[0] + 10'd111)) ) || ( (xCount >= (sz13_X[0] + 10'd114)) && (xCount < (sz13_X[0] + 10'd117)) ) || ( (xCount >= (sz13_X[0] + 10'd120)) && (xCount < (sz13_X[0] + 10'd123)) ) || ( (xCount >= (sz13_X[0] + 10'd126)) && (xCount < (sz13_X[0] + 10'd135)) ) );
		s13_4 = ((yCount >= (sz13_Y[0] + 9'd9))  && (yCount < (sz13_Y[0] + 9'd12)))  && ( ( (xCount >= (sz13_X[0] + 10'd12)) && (xCount < (sz13_X[0] + 10'd15)) ) || ( (xCount >= (sz13_X[0] + 10'd18)) && (xCount < (sz13_X[0] + 10'd33)) ) || ( (xCount >= (sz13_X[0] + 10'd36)) && (xCount < (sz13_X[0] + 10'd39)) ) || ( (xCount >= (sz13_X[0] + 10'd54)) && (xCount < (sz13_X[0] + 10'd57)) ) || ( (xCount >= (sz13_X[0] + 10'd75)) && (xCount < (sz13_X[0] + 10'd78)) ) || ( (xCount >= (sz13_X[0] + 10'd90)) && (xCount < (sz13_X[0] + 10'd93)) ) || ( (xCount >= (sz13_X[0] + 10'd102)) && (xCount < (sz13_X[0] + 10'd105)) ) || ( (xCount >= (sz13_X[0] + 10'd108)) && (xCount < (sz13_X[0] + 10'd111)) ) || ( (xCount >= (sz13_X[0] + 10'd117)) && (xCount < (sz13_X[0] + 10'd123)) ) || ( (xCount >= (sz13_X[0] + 10'd126)) && (xCount < (sz13_X[0] + 10'd129)) ) );
		s13_5 = ((yCount >= (sz13_Y[0] + 9'd12)) && (yCount < (sz13_Y[0] + 9'd15)))  && ( ( (xCount >= (sz13_X[0] + 10'd0)) && (xCount < (sz13_X[0] + 10'd12)) ) || ( (xCount >= (sz13_X[0] + 10'd18)) && (xCount < (sz13_X[0] + 10'd21)) ) || ( (xCount >= (sz13_X[0] + 10'd30)) && (xCount < (sz13_X[0] + 10'd33)) ) || ( (xCount >= (sz13_X[0] + 10'd36)) && (xCount < (sz13_X[0] + 10'd39)) ) || ( (xCount >= (sz13_X[0] + 10'd54)) && (xCount < (sz13_X[0] + 10'd69)) ) || ( (xCount >= (sz13_X[0] + 10'd72)) && (xCount < (sz13_X[0] + 10'd87)) ) || ( (xCount >= (sz13_X[0] + 10'd93)) && (xCount < (sz13_X[0] + 10'd102)) ) || ( (xCount >= (sz13_X[0] + 10'd108)) && (xCount < (sz13_X[0] + 10'd111)) ) || ( (xCount >= (sz13_X[0] + 10'd120)) && (xCount < (sz13_X[0] + 10'd123)) ) || ( (xCount >= (sz13_X[0] + 10'd126)) && (xCount < (sz13_X[0] + 10'd141)) ) );		
	end
// ( (xCount >= (sz4_X[0] + 10'd)) && (xCount < (sz4_X[0] + 10'd)) ) ||
////


endmodule
