module lv1car_generator (clk,update,rst,xCount,yCount,traffic);	//this module actually generates individual lanes of traffic that move from one side of the screen to the other
input clk,rst,update;
//this level is easier than level 2
input [9:0]xCount;
input [9:0]yCount;
wire [9:0] xCount;
wire [9:0] yCount;


output [114:0]traffic; //some traffic elements are set to 1'b0 in level 1 so that the cars that are only included in level 2 are removed from the register that controls traffic in the top function
//lane 1 (top lane, 10 cars) traffic 0-9
assign traffic[0] = lane1c0;
assign traffic[1] = lane1c1;
assign traffic[2] = lane1c2;
assign traffic[3] = lane1c3;
assign traffic[4] = lane1c4;
assign traffic[5] = lane1c5;
assign traffic[6] = lane1c6;
assign traffic[7] = lane1c7;
assign traffic[8] = lane1c8;
assign traffic[9] = lane1c9;
//lane 2 (11 cars) traffic 10-20
assign traffic[10] = lane2c0;
assign traffic[11] = 1'b0;
assign traffic[12] = lane2c2;
assign traffic[13] = 1'b0;
assign traffic[14] = lane2c4;
assign traffic[15] = 1'b0;
assign traffic[16] = lane2c6;
assign traffic[10'd17] = 1'b0;
assign traffic[18] = lane2c8;
assign traffic[19] = 1'b0;
assign traffic[20] = 1'b0;
//lane 3 (9 cars) traffic 21-29
assign traffic[21] = lane3c0;
assign traffic[22] = lane3c1;
assign traffic[23] = 1'b0;
assign traffic[24] = lane3c3;
assign traffic[25] = lane3c4;
assign traffic[26] = 1'b0;
assign traffic[27] = lane3c6;
assign traffic[28] = lane3c7;
assign traffic[29] = 1'b0;
//lane 4 (empty in level 1)
assign traffic[30] = 1'b0;
assign traffic[31] = 1'b0;
assign traffic[32] = 1'b0;
assign traffic[33] = 1'b0;
assign traffic[34] = 1'b0;
assign traffic[35] = 1'b0;
//lane 5 (9 cars) taffic 36-45
assign traffic[36] = 1'b0;
assign traffic[37] = lane5c1;
assign traffic[38] = lane5c2;
assign traffic[39] = 1'b0;
assign traffic[40] = lane5c4;
assign traffic[41] = lane5c5;
assign traffic[42] = 1'b0;
assign traffic[43] = lane5c7;
assign traffic[44] = lane5c8;
//lane 6 (13 cars) traffic 45-57
assign traffic[45] = lane6c0;
assign traffic[46] = 1'b0;
assign traffic[47] = lane6c2;
assign traffic[48] = lane6c3;
assign traffic[49] = 1'b0;
assign traffic[50] = lane6c5;
assign traffic[51] = lane6c6;
assign traffic[52] = 1'b0;
assign traffic[53] = lane6c8;
assign traffic[54] = lane6c9;
assign traffic[55] = lane6c10;
assign traffic[56] = 1'b0;
assign traffic[57] = lane6c12;
//lane 7 (7 cars) traffic 58-64
assign traffic[58] = lane7c0;
assign traffic[59] = lane7c1;
assign traffic[60] = lane7c2;
assign traffic[61] = lane7c3;
assign traffic[62] = lane7c4;
assign traffic[63] = lane7c5;
assign traffic[64] = lane7c6;
//lane 8 (empty in level 1)
assign traffic[65] = 1'b0;
//lane 9 (6 cars) traffic 66-71
assign traffic[66] = lane9c0;
assign traffic[67] = lane9c1;
assign traffic[68] = lane9c2;
assign traffic[69] = lane9c3;
assign traffic[70] = lane9c4;
assign traffic[71] = lane9c5;
//lane 10 (10 cars) traffic 72-81
assign traffic[72] = lane10c0;
assign traffic[73] = 1'b0;
assign traffic[74] = lane10c2;
assign traffic[75] = lane10c3;
assign traffic[76] = lane10c4;
assign traffic[77] = lane10c5;
assign traffic[78] = 1'b0;
assign traffic[79] = lane10c7;
assign traffic[80] = lane10c8;
assign traffic[81] = 1'b0;
//lane 11 (9 cars) traffic 82-90
assign traffic[82] = lane11c0;
assign traffic[83] = lane11c1;
assign traffic[84] = lane11c2;
assign traffic[85] = lane11c3;
assign traffic[86] = lane11c4;
assign traffic[87] = lane11c5;
assign traffic[88] = lane11c6;
assign traffic[89] = lane11c7;
assign traffic[90] = lane11c8;
//lane 12 (6 cars) traffic 91-96
assign traffic[91] = lane12c0;
assign traffic[92] = lane12c1;
assign traffic[93] = lane12c2;
assign traffic[94] = lane12c3;
assign traffic[95] = lane12c4;
assign traffic[96] = lane12c5;
//lane 13 (empty in level 1)
assign traffic[97] = 1'b0;
assign traffic[98] = 1'b0;
assign traffic[99] = 1'b0;
assign traffic[100] = 1'b0;
assign traffic[101] = 1'b0;
assign traffic[102] = 1'b0;
//lane 14 (5 cars) traffic 103-107
assign traffic[103] = lane14c0;
assign traffic[104] = lane14c1;
assign traffic[105] = lane14c2;
assign traffic[106] = lane14c3;
assign traffic[107] = lane14c4;
//lane 15 (bottom/first lane) traffic 108-115
assign traffic[108] = lane15c0;
assign traffic[109] = 1'b0;
assign traffic[110] = lane15c2;
assign traffic[111] = lane15c3;
assign traffic[112] = lane15c4;
assign traffic[113] = 1'b0;
assign traffic[114] = lane15c6;

//lane 1 
reg lane1c0;
reg lane1c1;
reg lane1c2;
reg lane1c3;
reg lane1c4;
reg lane1c5;
reg lane1c6;
reg lane1c7;
reg lane1c8;
reg lane1c9;
//lane 2 
reg lane2c0;
reg lane2c2;
reg lane2c4;
reg lane2c6;
reg lane2c8;
//lane 3 
reg lane3c0;
reg lane3c1;
reg lane3c3;
reg lane3c4;
reg lane3c6;
reg lane3c7;
//lane 5
reg lane5c1;
reg lane5c2;
reg lane5c4;
reg lane5c5;
reg lane5c7;
reg lane5c8;
//lane 6
reg lane6c0;
reg lane6c2;
reg lane6c3;
reg lane6c5;
reg lane6c6;
reg lane6c8;
reg lane6c9;
reg lane6c10;
reg lane6c12;
//lane 7
reg lane7c0;
reg lane7c1;
reg lane7c2;
reg lane7c3;
reg lane7c4;
reg lane7c5;
reg lane7c6;
//lane 9
reg lane9c0;
reg lane9c1;
reg lane9c2;
reg lane9c3;
reg lane9c4;
reg lane9c5;
//lane 10
reg lane10c0;
reg lane10c2;
reg lane10c3;
reg lane10c4;
reg lane10c5;
reg lane10c7;
reg lane10c8;
//lane 11
reg lane11c0;
reg lane11c1;
reg lane11c2;
reg lane11c3;
reg lane11c4;
reg lane11c5;
reg lane11c6;
reg lane11c7;
reg lane11c8;
//lane 12
reg lane12c0;
reg lane12c1;
reg lane12c2;
reg lane12c3;
reg lane12c4;
reg lane12c5;
//lane 14
reg lane14c0;
reg lane14c1;
reg lane14c2;
reg lane14c3;
reg lane14c4;
//lane 15
reg lane15c0;
reg lane15c2;
reg lane15c3;
reg lane15c4;
reg lane15c6;

//lane 1 (top lane)
reg [9:0] lane1c0X [0:31];
reg [8:0] lane1c0Y [0:31];
reg [9:0] lane1c1X [0:31];
reg [8:0] lane1c1Y [0:31];
reg [9:0] lane1c2X [0:31];
reg [8:0] lane1c2Y [0:31];
reg [9:0] lane1c3X [0:31];
reg [8:0] lane1c3Y [0:31];
reg [9:0] lane1c4X [0:31];
reg [8:0] lane1c4Y [0:31];
reg [9:0] lane1c5X [0:31];
reg [8:0] lane1c5Y [0:31];
reg [9:0] lane1c6X [0:31];
reg [8:0] lane1c6Y [0:31];
reg [9:0] lane1c7X [0:31];
reg [8:0] lane1c7Y [0:31];
reg [9:0] lane1c8X [0:31];
reg [8:0] lane1c8Y [0:31];
reg [9:0] lane1c9X [0:31];
reg [8:0] lane1c9Y [0:31];
//lane 2 
reg [9:0] lane2c0X [0:31];
reg [8:0] lane2c0Y [0:31];
reg [9:0] lane2c2X [0:31];
reg [8:0] lane2c2Y [0:31];
reg [9:0] lane2c4X [0:31];
reg [8:0] lane2c4Y [0:31];
reg [9:0] lane2c6X [0:31];
reg [8:0] lane2c6Y [0:31];
reg [9:0] lane2c8X [0:31];
reg [8:0] lane2c8Y [0:31];
//lane 3 
reg [9:0] lane3c0X [0:31];
reg [8:0] lane3c0Y [0:31];
reg [9:0] lane3c1X [0:31];
reg [8:0] lane3c1Y [0:31];
reg [9:0] lane3c3X [0:31];
reg [8:0] lane3c3Y [0:31];
reg [9:0] lane3c4X [0:31];
reg [8:0] lane3c4Y [0:31];
reg [9:0] lane3c6X [0:31];
reg [8:0] lane3c6Y [0:31];
reg [9:0] lane3c7X [0:31];
reg [8:0] lane3c7Y [0:31];
//lane 5
reg [9:0] lane5c1X [0:31];
reg [8:0] lane5c1Y [0:31];
reg [9:0] lane5c2X [0:31];
reg [8:0] lane5c2Y [0:31];
reg [9:0] lane5c4X [0:31];
reg [8:0] lane5c4Y [0:31];
reg [9:0] lane5c5X [0:31];
reg [8:0] lane5c5Y [0:31];
reg [9:0] lane5c7X [0:31];
reg [8:0] lane5c7Y [0:31];
reg [9:0] lane5c8X [0:31];
reg [8:0] lane5c8Y [0:31];
//lane 6
reg [9:0] lane6c0X [0:31];
reg [8:0] lane6c0Y [0:31];
reg [9:0] lane6c2X [0:31];
reg [8:0] lane6c2Y [0:31];
reg [9:0] lane6c3X [0:31];
reg [8:0] lane6c3Y [0:31];
reg [9:0] lane6c5X [0:31];
reg [8:0] lane6c5Y [0:31];
reg [9:0] lane6c6X [0:31];
reg [8:0] lane6c6Y [0:31];
reg [9:0] lane6c8X [0:31];
reg [8:0] lane6c8Y [0:31];
reg [9:0] lane6c9X [0:31];
reg [8:0] lane6c9Y [0:31];
reg [9:0] lane6c10X [0:31];
reg [8:0] lane6c10Y [0:31];
reg [9:0] lane6c12X [0:31];
reg [8:0] lane6c12Y [0:31];
//lane 7
reg [9:0] lane7c0X [0:31];
reg [8:0] lane7c0Y [0:31];
reg [9:0] lane7c1X [0:31];
reg [8:0] lane7c1Y [0:31];
reg [9:0] lane7c2X [0:31];
reg [8:0] lane7c2Y [0:31];
reg [9:0] lane7c3X [0:31];
reg [8:0] lane7c3Y [0:31];
reg [9:0] lane7c4X [0:31];
reg [8:0] lane7c4Y [0:31];
reg [9:0] lane7c5X [0:31];
reg [8:0] lane7c5Y [0:31];
reg [9:0] lane7c6X [0:31];
reg [8:0] lane7c6Y [0:31];
//lane 9
reg [9:0] lane9c0X [0:31];
reg [8:0] lane9c0Y [0:31];
reg [9:0] lane9c1X [0:31];
reg [8:0] lane9c1Y [0:31];
reg [9:0] lane9c2X [0:31];
reg [8:0] lane9c2Y [0:31];
reg [9:0] lane9c3X [0:31];
reg [8:0] lane9c3Y [0:31];
reg [9:0] lane9c4X [0:31];
reg [8:0] lane9c4Y [0:31];
reg [9:0] lane9c5X [0:31];
reg [8:0] lane9c5Y [0:31];
//lane 10
reg [9:0] lane10c0X [0:31];
reg [8:0] lane10c0Y [0:31];
reg [9:0] lane10c2X [0:31];
reg [8:0] lane10c2Y [0:31];
reg [9:0] lane10c3X [0:31];
reg [8:0] lane10c3Y [0:31];
reg [9:0] lane10c4X [0:31];
reg [8:0] lane10c4Y [0:31];
reg [9:0] lane10c5X [0:31];
reg [8:0] lane10c5Y [0:31];
reg [9:0] lane10c7X [0:31];
reg [8:0] lane10c7Y [0:31];
reg [9:0] lane10c8X [0:31];
reg [8:0] lane10c8Y [0:31];
//lane 11
reg [9:0] lane11c0X [0:31];
reg [8:0] lane11c0Y [0:31];
reg [9:0] lane11c1X [0:31];
reg [8:0] lane11c1Y [0:31];
reg [9:0] lane11c2X [0:31];
reg [8:0] lane11c2Y [0:31];
reg [9:0] lane11c3X [0:31];
reg [8:0] lane11c3Y [0:31];
reg [9:0] lane11c4X [0:31];
reg [8:0] lane11c4Y [0:31];
reg [9:0] lane11c5X [0:31];
reg [8:0] lane11c5Y [0:31];
reg [9:0] lane11c6X [0:31];
reg [8:0] lane11c6Y [0:31];
reg [9:0] lane11c7X [0:31];
reg [8:0] lane11c7Y [0:31];
reg [9:0] lane11c8X [0:31];
reg [8:0] lane11c8Y [0:31];
//lane 12
reg [9:0] lane12c0X [0:31];
reg [8:0] lane12c0Y [0:31];
reg [9:0] lane12c1X [0:31];
reg [8:0] lane12c1Y [0:31];
reg [9:0] lane12c2X [0:31];
reg [8:0] lane12c2Y [0:31];
reg [9:0] lane12c3X [0:31];
reg [8:0] lane12c3Y [0:31];
reg [9:0] lane12c4X [0:31];
reg [8:0] lane12c4Y [0:31];
reg [9:0] lane12c5X [0:31];
reg [8:0] lane12c5Y [0:31];
//lane 14
reg [9:0] lane14c0X [0:31];
reg [8:0] lane14c0Y [0:31];
reg [9:0] lane14c1X [0:31];
reg [8:0] lane14c1Y [0:31];
reg [9:0] lane14c2X [0:31];
reg [8:0] lane14c2Y [0:31];
reg [9:0] lane14c3X [0:31];
reg [8:0] lane14c3Y [0:31];
reg [9:0] lane14c4X [0:31];
reg [8:0] lane14c4Y [0:31];
//lane 15
reg [9:0] lane15c0X [0:31];
reg [8:0] lane15c0Y [0:31];
reg [9:0] lane15c2X [0:31];
reg [8:0] lane15c2Y [0:31];
reg [9:0] lane15c3X [0:31];
reg [8:0] lane15c3Y [0:31];
reg [9:0] lane15c4X [0:31];
reg [8:0] lane15c4Y [0:31];
reg [9:0] lane15c6X [0:31];
reg [8:0] lane15c6Y [0:31];


//controls the size of the "cars"
always@(posedge clk) 
	begin	
		//lane 1 
		lane1c0 <= (xCount > lane1c0X[0] && xCount < (lane1c0X[0]+10'd17)) && (yCount > lane1c0Y[0] && yCount < (lane1c0Y[0]+10'd17));
		lane1c1 <= (xCount > lane1c1X[0] && xCount < (lane1c1X[0]+10'd17)) && (yCount > lane1c1Y[0] && yCount < (lane1c1Y[0]+10'd17));
		lane1c2 <= (xCount > lane1c2X[0] && xCount < (lane1c2X[0]+10'd17)) && (yCount > lane1c2Y[0] && yCount < (lane1c2Y[0]+10'd17));
		lane1c3 <= (xCount > lane1c3X[0] && xCount < (lane1c3X[0]+10'd17)) && (yCount > lane1c3Y[0] && yCount < (lane1c3Y[0]+10'd17));
		lane1c4 <= (xCount > lane1c4X[0] && xCount < (lane1c4X[0]+10'd17)) && (yCount > lane1c4Y[0] && yCount < (lane1c4Y[0]+10'd17));
		lane1c5 <= (xCount > lane1c5X[0] && xCount < (lane1c5X[0]+10'd17)) && (yCount > lane1c5Y[0] && yCount < (lane1c5Y[0]+10'd17));
		lane1c6 <= (xCount > lane1c6X[0] && xCount < (lane1c6X[0]+10'd17)) && (yCount > lane1c6Y[0] && yCount < (lane1c6Y[0]+10'd17));
		lane1c7 <= (xCount > lane1c7X[0] && xCount < (lane1c7X[0]+10'd17)) && (yCount > lane1c7Y[0] && yCount < (lane1c7Y[0]+10'd17));
		lane1c8 <= (xCount > lane1c8X[0] && xCount < (lane1c8X[0]+10'd17)) && (yCount > lane1c8Y[0] && yCount < (lane1c8Y[0]+10'd17));
		lane1c9 <= (xCount > lane1c9X[0] && xCount < (lane1c9X[0]+10'd17)) && (yCount > lane1c9Y[0] && yCount < (lane1c9Y[0]+10'd17));
		
		//lane 2 
		lane2c0 <= (xCount > lane2c0X[0] && xCount < (lane2c0X[0]+10'd17)) && (yCount > lane2c0Y[0] && yCount < (lane2c0Y[0]+10'd17));
		lane2c2 <= (xCount > lane2c2X[0] && xCount < (lane2c2X[0]+10'd17)) && (yCount > lane2c2Y[0] && yCount < (lane2c2Y[0]+10'd17));
		lane2c4 <= (xCount > lane2c4X[0] && xCount < (lane2c4X[0]+10'd17)) && (yCount > lane2c4Y[0] && yCount < (lane2c4Y[0]+10'd17));
		lane2c6 <= (xCount > lane2c6X[0] && xCount < (lane2c6X[0]+10'd17)) && (yCount > lane2c6Y[0] && yCount < (lane2c6Y[0]+10'd17));
		lane2c8 <= (xCount > lane2c8X[0] && xCount < (lane2c8X[0]+10'd17)) && (yCount > lane2c8Y[0] && yCount < (lane2c8Y[0]+10'd17));

		//lane 3 
		lane3c0 <= (xCount > lane3c0X[0] && xCount < (lane3c0X[0]+10'd17)) && (yCount > lane3c0Y[0] && yCount < (lane3c0Y[0]+10'd17));
		lane3c1 <= (xCount > lane3c1X[0] && xCount < (lane3c1X[0]+10'd17)) && (yCount > lane3c1Y[0] && yCount < (lane3c1Y[0]+10'd17));
		lane3c3 <= (xCount > lane3c3X[0] && xCount < (lane3c3X[0]+10'd17)) && (yCount > lane3c3Y[0] && yCount < (lane3c3Y[0]+10'd17));
		lane3c4 <= (xCount > lane3c4X[0] && xCount < (lane3c4X[0]+10'd17)) && (yCount > lane3c4Y[0] && yCount < (lane3c4Y[0]+10'd17));
		lane3c6 <= (xCount > lane3c6X[0] && xCount < (lane3c6X[0]+10'd17)) && (yCount > lane3c6Y[0] && yCount < (lane3c6Y[0]+10'd17));
		lane3c7 <= (xCount > lane3c7X[0] && xCount < (lane3c7X[0]+10'd17)) && (yCount > lane3c7Y[0] && yCount < (lane3c7Y[0]+10'd17));
			
		//lane 5
		lane5c1 <= (xCount > lane5c1X[0] && xCount < (lane5c1X[0]+10'd17)) && (yCount > lane5c1Y[0] && yCount < (lane5c1Y[0]+10'd17));
		lane5c2 <= (xCount > lane5c2X[0] && xCount < (lane5c2X[0]+10'd17)) && (yCount > lane5c2Y[0] && yCount < (lane5c2Y[0]+10'd17));
		lane5c4 <= (xCount > lane5c4X[0] && xCount < (lane5c4X[0]+10'd17)) && (yCount > lane5c4Y[0] && yCount < (lane5c4Y[0]+10'd17));
		lane5c5 <= (xCount > lane5c5X[0] && xCount < (lane5c5X[0]+10'd17)) && (yCount > lane5c5Y[0] && yCount < (lane5c5Y[0]+10'd17));
		lane5c7 <= (xCount > lane5c7X[0] && xCount < (lane5c7X[0]+10'd17)) && (yCount > lane5c7Y[0] && yCount < (lane5c7Y[0]+10'd17));
		lane5c8 <= (xCount > lane5c8X[0] && xCount < (lane5c8X[0]+10'd17)) && (yCount > lane5c8Y[0] && yCount < (lane5c8Y[0]+10'd17));
		
		//lane 6
		lane6c0 <= (xCount > lane6c0X[0] && xCount < (lane6c0X[0]+10'd17)) && (yCount > lane6c0Y[0] && yCount < (lane6c0Y[0]+10'd17));
		lane6c2 <= (xCount > lane6c2X[0] && xCount < (lane6c2X[0]+10'd17)) && (yCount > lane6c2Y[0] && yCount < (lane6c2Y[0]+10'd17));
		lane6c3 <= (xCount > lane6c3X[0] && xCount < (lane6c3X[0]+10'd17)) && (yCount > lane6c3Y[0] && yCount < (lane6c3Y[0]+10'd17));
		lane6c5 <= (xCount > lane6c5X[0] && xCount < (lane6c5X[0]+10'd17)) && (yCount > lane6c5Y[0] && yCount < (lane6c5Y[0]+10'd17));
		lane6c6 <= (xCount > lane6c6X[0] && xCount < (lane6c6X[0]+10'd17)) && (yCount > lane6c6Y[0] && yCount < (lane6c6Y[0]+10'd17));
		lane6c8 <= (xCount > lane6c8X[0] && xCount < (lane6c8X[0]+10'd17)) && (yCount > lane6c8Y[0] && yCount < (lane6c8Y[0]+10'd17));
		lane6c9 <= (xCount > lane6c9X[0] && xCount < (lane6c9X[0]+10'd17)) && (yCount > lane6c9Y[0] && yCount < (lane6c9Y[0]+10'd17));
		lane6c10 <= (xCount > lane6c10X[0] && xCount < (lane6c10X[0]+10'd17)) && (yCount > lane6c10Y[0] && yCount < (lane6c10Y[0]+10'd17));
		lane6c12 <= (xCount > lane6c12X[0] && xCount < (lane6c12X[0]+10'd17)) && (yCount > lane6c12Y[0] && yCount < (lane6c12Y[0]+10'd17));
		
		//lane 7
		lane7c0 <= (xCount > lane7c0X[0] && xCount < (lane7c0X[0]+10'd17)) && (yCount > lane7c0Y[0] && yCount < (lane7c0Y[0]+10'd17));
		lane7c1 <= (xCount > lane7c1X[0] && xCount < (lane7c1X[0]+10'd17)) && (yCount > lane7c1Y[0] && yCount < (lane7c1Y[0]+10'd17));
		lane7c2 <= (xCount > lane7c2X[0] && xCount < (lane7c2X[0]+10'd17)) && (yCount > lane7c2Y[0] && yCount < (lane7c2Y[0]+10'd17));
		lane7c3 <= (xCount > lane7c3X[0] && xCount < (lane7c3X[0]+10'd17)) && (yCount > lane7c3Y[0] && yCount < (lane7c3Y[0]+10'd17));
		lane7c4 <= (xCount > lane7c4X[0] && xCount < (lane7c4X[0]+10'd17)) && (yCount > lane7c4Y[0] && yCount < (lane7c4Y[0]+10'd17));
		lane7c5 <= (xCount > lane7c5X[0] && xCount < (lane7c5X[0]+10'd17)) && (yCount > lane7c5Y[0] && yCount < (lane7c5Y[0]+10'd17));
		lane7c6 <= (xCount > lane7c6X[0] && xCount < (lane7c6X[0]+10'd17)) && (yCount > lane7c6Y[0] && yCount < (lane7c6Y[0]+10'd17));
		
		//lane 9
		lane9c0 <= (xCount > lane9c0X[0] && xCount < (lane9c0X[0]+10'd17)) && (yCount > lane9c0Y[0] && yCount < (lane9c0Y[0]+10'd17));
		lane9c1 <= (xCount > lane9c1X[0] && xCount < (lane9c1X[0]+10'd17)) && (yCount > lane9c1Y[0] && yCount < (lane9c1Y[0]+10'd17));
		lane9c2 <= (xCount > lane9c2X[0] && xCount < (lane9c2X[0]+10'd17)) && (yCount > lane9c2Y[0] && yCount < (lane9c2Y[0]+10'd17));
		lane9c3 <= (xCount > lane9c3X[0] && xCount < (lane9c3X[0]+10'd17)) && (yCount > lane9c3Y[0] && yCount < (lane9c3Y[0]+10'd17));
		lane9c4 <= (xCount > lane9c4X[0] && xCount < (lane9c4X[0]+10'd17)) && (yCount > lane9c4Y[0] && yCount < (lane9c4Y[0]+10'd17));
		lane9c5 <= (xCount > lane9c5X[0] && xCount < (lane9c5X[0]+10'd17)) && (yCount > lane9c5Y[0] && yCount < (lane9c5Y[0]+10'd17));
		
		//lane 10
		lane10c0 <= (xCount > lane10c0X[0] && xCount < (lane10c0X[0]+10'd17)) && (yCount > lane10c0Y[0] && yCount < (lane10c0Y[0]+10'd17));
		lane10c2 <= (xCount > lane10c2X[0] && xCount < (lane10c2X[0]+10'd17)) && (yCount > lane10c2Y[0] && yCount < (lane10c2Y[0]+10'd17));
		lane10c3 <= (xCount > lane10c3X[0] && xCount < (lane10c3X[0]+10'd17)) && (yCount > lane10c3Y[0] && yCount < (lane10c3Y[0]+10'd17));
		lane10c4 <= (xCount > lane10c4X[0] && xCount < (lane10c4X[0]+10'd17)) && (yCount > lane10c4Y[0] && yCount < (lane10c4Y[0]+10'd17));
		lane10c5 <= (xCount > lane10c5X[0] && xCount < (lane10c5X[0]+10'd17)) && (yCount > lane10c5Y[0] && yCount < (lane10c5Y[0]+10'd17));
		lane10c7 <= (xCount > lane10c7X[0] && xCount < (lane10c7X[0]+10'd17)) && (yCount > lane10c7Y[0] && yCount < (lane10c7Y[0]+10'd17));
		lane10c8 <= (xCount > lane10c8X[0] && xCount < (lane10c8X[0]+10'd17)) && (yCount > lane10c8Y[0] && yCount < (lane10c8Y[0]+10'd17));
		
		//lane 11
		lane11c0 <= (xCount > lane11c0X[0] && xCount < (lane11c0X[0]+10'd17)) && (yCount > lane11c0Y[0] && yCount < (lane11c0Y[0]+10'd17));
		lane11c1 <= (xCount > lane11c1X[0] && xCount < (lane11c1X[0]+10'd17)) && (yCount > lane11c1Y[0] && yCount < (lane11c1Y[0]+10'd17));
		lane11c2 <= (xCount > lane11c2X[0] && xCount < (lane11c2X[0]+10'd17)) && (yCount > lane11c2Y[0] && yCount < (lane11c2Y[0]+10'd17));
		lane11c3 <= (xCount > lane11c3X[0] && xCount < (lane11c3X[0]+10'd17)) && (yCount > lane11c3Y[0] && yCount < (lane11c3Y[0]+10'd17));
		lane11c4 <= (xCount > lane11c4X[0] && xCount < (lane11c4X[0]+10'd17)) && (yCount > lane11c4Y[0] && yCount < (lane11c4Y[0]+10'd17));
		lane11c5 <= (xCount > lane11c5X[0] && xCount < (lane11c5X[0]+10'd17)) && (yCount > lane11c5Y[0] && yCount < (lane11c5Y[0]+10'd17));
		lane11c6 <= (xCount > lane11c6X[0] && xCount < (lane11c6X[0]+10'd17)) && (yCount > lane11c6Y[0] && yCount < (lane11c6Y[0]+10'd17));
		lane11c7 <= (xCount > lane11c7X[0] && xCount < (lane11c7X[0]+10'd17)) && (yCount > lane11c7Y[0] && yCount < (lane11c7Y[0]+10'd17));
		lane11c8 <= (xCount > lane11c8X[0] && xCount < (lane11c8X[0]+10'd17)) && (yCount > lane11c8Y[0] && yCount < (lane11c8Y[0]+10'd17));
		
		//lane 12
		lane12c0 <= (xCount > lane12c0X[0] && xCount < (lane12c0X[0]+10'd17)) && (yCount > lane12c0Y[0] && yCount < (lane12c0Y[0]+10'd17));
		lane12c1 <= (xCount > lane12c1X[0] && xCount < (lane12c1X[0]+10'd17)) && (yCount > lane12c1Y[0] && yCount < (lane12c1Y[0]+10'd17));
		lane12c2 <= (xCount > lane12c2X[0] && xCount < (lane12c2X[0]+10'd17)) && (yCount > lane12c2Y[0] && yCount < (lane12c2Y[0]+10'd17));
		lane12c3 <= (xCount > lane12c3X[0] && xCount < (lane12c3X[0]+10'd17)) && (yCount > lane12c3Y[0] && yCount < (lane12c3Y[0]+10'd17));
		lane12c4 <= (xCount > lane12c4X[0] && xCount < (lane12c4X[0]+10'd17)) && (yCount > lane12c4Y[0] && yCount < (lane12c4Y[0]+10'd17));
		lane12c5 <= (xCount > lane12c5X[0] && xCount < (lane12c5X[0]+10'd17)) && (yCount > lane12c5Y[0] && yCount < (lane12c5Y[0]+10'd17));
				
		//lane 14
		lane14c0 <= (xCount > lane14c0X[0] && xCount < (lane14c0X[0]+10'd17)) && (yCount > lane14c0Y[0] && yCount < (lane14c0Y[0]+10'd17));
		lane14c1 <= (xCount > lane14c1X[0] && xCount < (lane14c1X[0]+10'd17)) && (yCount > lane14c1Y[0] && yCount < (lane14c1Y[0]+10'd17));
		lane14c2 <= (xCount > lane14c2X[0] && xCount < (lane14c2X[0]+10'd17)) && (yCount > lane14c2Y[0] && yCount < (lane14c2Y[0]+10'd17));
		lane14c3 <= (xCount > lane14c3X[0] && xCount < (lane14c3X[0]+10'd17)) && (yCount > lane14c3Y[0] && yCount < (lane14c3Y[0]+10'd17));
		lane14c4 <= (xCount > lane14c4X[0] && xCount < (lane14c4X[0]+10'd17)) && (yCount > lane14c4Y[0] && yCount < (lane14c4Y[0]+10'd17));
		
		//lane 15
		lane15c0 <= (xCount > lane15c0X[0] && xCount < (lane15c0X[0]+10'd17)) && (yCount > lane15c0Y[0] && yCount < (lane15c0Y[0]+10'd17));
		lane15c2 <= (xCount > lane15c2X[0] && xCount < (lane15c2X[0]+10'd17)) && (yCount > lane15c2Y[0] && yCount < (lane15c2Y[0]+10'd17));
		lane15c3 <= (xCount > lane15c3X[0] && xCount < (lane15c3X[0]+10'd17)) && (yCount > lane15c3Y[0] && yCount < (lane15c3Y[0]+10'd17));
		lane15c4 <= (xCount > lane15c4X[0] && xCount < (lane15c4X[0]+10'd17)) && (yCount > lane15c4Y[0] && yCount < (lane15c4Y[0]+10'd17));
		lane15c6 <= (xCount > lane15c6X[0] && xCount < (lane15c6X[0]+10'd17)) && (yCount > lane15c6Y[0] && yCount < (lane15c6Y[0]+10'd17));
				
	end
//	

/////lane1 control /////
always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of lane1 cars				
				lane1c0X[0] <= 10'd20;
				lane1c0Y[0] <= 9'd74;
				lane1c1X[0] <= 10'd90;
				lane1c1Y[0] <= 9'd74;
				lane1c2X[0] <= 10'd160;
				lane1c2Y[0] <= 9'd74;
				lane1c3X[0] <= 10'd230;
				lane1c3Y[0] <= 9'd74;
				lane1c4X[0] <= 10'd300;
				lane1c4Y[0] <= 9'd74;
				lane1c5X[0] <= 10'd370;
				lane1c5Y[0] <= 9'd74;
				lane1c6X[0] <= 10'd440;
				lane1c6Y[0] <= 9'd74;
				lane1c7X[0] <= 10'd510;
				lane1c7Y[0] <= 9'd74;
				lane1c8X[0] <= 10'd580;
				lane1c8Y[0] <= 9'd74;
				lane1c9X[0] <= 10'd610;
				lane1c9Y[0] <= 9'd74;
			end
			
		//recycling cars back to the start of the lane
		else if (lane1c0X[0] >= 10'd640)
			lane1c0X[0] <= 10'd0;
		else if (lane1c1X[0] >= 10'd640)
			lane1c1X[0] <= 10'd0;
		else if (lane1c2X[0] >= 10'd640)
			lane1c2X[0] <= 10'd0;
		else if (lane1c3X[0] >= 10'd640)
			lane1c3X[0] <= 10'd0;
		else if (lane1c4X[0] >= 10'd640)
			lane1c4X[0] <= 10'd0;
		else if (lane1c5X[0] >= 10'd640)
			lane1c5X[0] <= 10'd0;
		else if (lane1c6X[0] >= 10'd640)
			lane1c6X[0] <= 10'd0;
		else if (lane1c7X[0] >= 10'd640)
			lane1c7X[0] <= 10'd0;
		else if (lane1c8X[0] >= 10'd640)
			lane1c8X[0] <= 10'd0;
		else if (lane1c9X[0] >= 10'd640)
			lane1c9X[0] <= 10'd0;
	
		else
			begin //rate and direction of cars
				lane1c0X[0] <= lane1c0X[0] + 10'd1;
				lane1c1X[0] <= lane1c1X[0] + 10'd1;
				lane1c2X[0] <= lane1c2X[0] + 10'd1;
				lane1c3X[0] <= lane1c3X[0] + 10'd1;
				lane1c4X[0] <= lane1c4X[0] + 10'd1;
				lane1c5X[0] <= lane1c5X[0] + 10'd1;
				lane1c6X[0] <= lane1c6X[0] + 10'd1;
				lane1c7X[0] <= lane1c7X[0] + 10'd1;
				lane1c8X[0] <= lane1c8X[0] + 10'd1;
				lane1c9X[0] <= lane1c9X[0] + 10'd1;	
			end
	end
//

///// lane2 control /////
always @(posedge update)
	begin
		if (rst == 1'b1) //starting positions of lane2 cars
			begin
				lane2c0X[0] <= 10'd20;
				lane2c0Y[0] <= 9'd99;
				lane2c2X[0] <= 10'd160;
				lane2c2Y[0] <= 9'd99;
				lane2c4X[0] <= 10'd300;
				lane2c4Y[0] <= 9'd99;
				lane2c6X[0] <= 10'd440;
				lane2c6Y[0] <= 9'd99;
				lane2c8X[0] <= 10'd580;
				lane2c8Y[0] <= 9'd99;
			end
			
		//recycle cars back to start of the lane
		else if (lane2c0X[0] >= 10'd640)
			lane2c0X[0] <= 10'd0;
		else if (lane2c2X[0] >= 10'd640)
			lane2c2X[0] <= 10'd0;
		else if (lane2c4X[0] >= 10'd640)
			lane2c4X[0] <= 10'd0;
		else if (lane2c6X[0] >= 10'd640)
			lane2c6X[0] <= 10'd0;
		else if (lane2c8X[0] >= 10'd640)
			lane2c8X[0] <= 10'd0;
			
		else //rate and direction of cars
			begin
				lane2c0X[0] <= lane2c0X[0] + 10'd2;
				lane2c2X[0] <= lane2c2X[0] + 10'd2;
				lane2c4X[0] <= lane2c4X[0] + 10'd2;
				lane2c6X[0] <= lane2c6X[0] + 10'd2;
				lane2c8X[0] <= lane2c8X[0] + 10'd2;
			end
		end
//

/////lane3 control /////
always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of lane3 cars
				lane3c0X[0] <= 10'd30;
				lane3c0Y[0] <= 9'd124;
				lane3c1X[0] <= 10'd100;
				lane3c1Y[0] <= 9'd124;
				lane3c3X[0] <= 10'd240;
				lane3c3Y[0] <= 9'd124;
				lane3c4X[0] <= 10'd310;
				lane3c4Y[0] <= 9'd124;
				lane3c6X[0] <= 10'd450;
				lane3c6Y[0] <= 9'd124;
				lane3c7X[0] <= 10'd520;
				lane3c7Y[0] <= 9'd124;
			end
		//recycling cars back to the start of the lane
		else if (lane3c0X[0] == 10'd0)
			lane3c0X[0] <= 10'd640;
		else if (lane3c1X[0] == 10'd0)
			lane3c1X[0] <= 10'd640;
		else if (lane3c3X[0] == 10'd0)
			lane3c3X[0] <= 10'd640;
		else if (lane3c4X[0] == 10'd0)
			lane3c4X[0] <= 10'd640;
		else if (lane3c6X[0] == 10'd0)
			lane3c6X[0] <= 10'd640;
		else if (lane3c7X[0] == 10'd0)
			lane3c7X[0] <= 10'd640;
		else
			begin //rate and direction of cars
				lane3c0X[0] <= lane3c0X[0] - 10'd2;
				lane3c1X[0] <= lane3c1X[0] - 10'd2;
				lane3c3X[0] <= lane3c3X[0] - 10'd2;
				lane3c4X[0] <= lane3c4X[0] - 10'd2;
				lane3c6X[0] <= lane3c6X[0] - 10'd2;
				lane3c7X[0] <= lane3c7X[0] - 10'd2;
			end
	end
//

/////lane5 control /////
always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of lane5 cars
				lane5c1X[0] <= 10'd90;
				lane5c1Y[0] <= 9'd174;
				lane5c2X[0] <= 10'd160;
				lane5c2Y[0] <= 9'd174;
				lane5c4X[0] <= 10'd300;
				lane5c4Y[0] <= 9'd174;
				lane5c5X[0] <= 10'd370;
				lane5c5Y[0] <= 9'd174;
				lane5c7X[0] <= 10'd510;
				lane5c7Y[0] <= 9'd174;
				lane5c8X[0] <= 10'd580;
				lane5c8Y[0] <= 9'd174;
			end
		//recycling cars back to the start of the lane
		else if (lane5c1X[0] == 10'd0)
			lane5c1X[0] <= 10'd640;
		else if (lane5c2X[0] == 10'd0)
			lane5c2X[0] <= 10'd640;
		else if (lane5c4X[0] == 10'd0)
			lane5c4X[0] <= 10'd640;
		else if (lane5c5X[0] == 10'd0)
			lane5c5X[0] <= 10'd640;
		else if (lane5c7X[0] == 10'd0)
			lane5c7X[0] <= 10'd640;
		else if (lane5c8X[0] == 10'd0)
			lane5c8X[0] <= 10'd640;
		else
			begin //rate and direction of cars
				lane5c1X[0] <= lane5c1X[0] - 10'd1;
				lane5c2X[0] <= lane5c2X[0] - 10'd1;
				lane5c4X[0] <= lane5c4X[0] - 10'd1;
				lane5c5X[0] <= lane5c5X[0] - 10'd1;
				lane5c7X[0] <= lane5c7X[0] - 10'd1;
				lane5c8X[0] <= lane5c8X[0] - 10'd1;
			end
	end
//

/////lane6 control /////
always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of lane6 cars
				lane6c0X[0] <= 10'd20;
				lane6c0Y[0] <= 9'd199;
				lane6c2X[0] <= 10'd160;
				lane6c2Y[0] <= 9'd199;
				lane6c3X[0] <= 10'd230;
				lane6c3Y[0] <= 9'd199;
				lane6c5X[0] <= 10'd370;
				lane6c5Y[0] <= 9'd199;
				lane6c6X[0] <= 10'd440;
				lane6c6Y[0] <= 9'd199;
				lane6c8X[0] <= 10'd580;
				lane6c8Y[0] <= 9'd199;
				lane6c9X[0] <= 10'd610;
				lane6c9Y[0] <= 9'd199;
				lane6c10X[0] <= 10'd470;
				lane6c10Y[0] <= 9'd199;
				lane6c12X[0] <= 10'd130;
				lane6c12Y[0] <= 9'd199;
				
			end
		//recycling cars back to the start of the lane
		else if (lane6c0X[0] == 10'd0)
			lane6c0X[0] <= 10'd640;
		else if (lane6c2X[0] == 10'd0)
			lane6c2X[0] <= 10'd640;
		else if (lane6c3X[0] == 10'd0)
			lane6c3X[0] <= 10'd640;
		else if (lane6c5X[0] == 10'd0)
			lane6c5X[0] <= 10'd640;
		else if (lane6c6X[0] == 10'd0)
			lane6c6X[0] <= 10'd640;
		else if (lane6c8X[0] == 10'd0)
			lane6c8X[0] <= 10'd640;
		else if (lane6c9X[0] == 10'd0)
			lane6c9X[0] <= 10'd640;
		else if (lane6c10X[0] == 10'd0)
			lane6c10X[0] <= 10'd640;
		else if (lane6c12X[0] == 10'd0)
			lane6c12X[0] <= 10'd640;
	
		else
			begin //rate and direction of cars
				lane6c0X[0] <= lane6c0X[0] - 10'd2;
				lane6c2X[0] <= lane6c2X[0] - 10'd2;
				lane6c3X[0] <= lane6c3X[0] - 10'd2;
				lane6c5X[0] <= lane6c5X[0] - 10'd2;
				lane6c6X[0] <= lane6c6X[0] - 10'd2;
				lane6c8X[0] <= lane6c8X[0] - 10'd2;
				lane6c9X[0] <= lane6c9X[0] - 10'd2;
				lane6c10X[0] <= lane6c10X[0] - 10'd2;
				lane6c12X[0] <= lane6c12X[0] - 10'd2;
			end
	end
//

/////lane7 control /////
always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of lane7 cars				
				lane7c0X[0] <= 10'd20;
				lane7c0Y[0] <= 9'd224;
				lane7c1X[0] <= 10'd115;
				lane7c1Y[0] <= 9'd224;
				lane7c2X[0] <= 10'd200;
				lane7c2Y[0] <= 9'd224;
				lane7c3X[0] <= 10'd310;
				lane7c3Y[0] <= 9'd224;
				lane7c4X[0] <= 10'd415;
				lane7c4Y[0] <= 9'd224;
				lane7c5X[0] <= 10'd570;
				lane7c5Y[0] <= 9'd224;
				lane7c6X[0] <= 10'd495;
				lane7c6Y[0] <= 9'd224;
				
			end
			
		//recycling cars back to the start of the lane
		else if (lane7c0X[0] >= 10'd640)
			lane7c0X[0] <= 10'd0;
		else if (lane7c1X[0] >= 10'd640)
			lane7c1X[0] <= 10'd0;
		else if (lane7c2X[0] >= 10'd640)
			lane7c2X[0] <= 10'd0;
		else if (lane7c3X[0] >= 10'd640)
			lane7c3X[0] <= 10'd0;
		else if (lane7c4X[0] >= 10'd640)
			lane7c4X[0] <= 10'd0;
		else if (lane7c5X[0] >= 10'd640)
			lane7c5X[0] <= 10'd0;
		else if (lane7c6X[0] >= 10'd640)
			lane7c6X[0] <= 10'd0;
			
		else
			begin //rate and direction of cars
				lane7c0X[0] <= lane7c0X[0] + 10'd1;
				lane7c1X[0] <= lane7c1X[0] + 10'd1;
				lane7c2X[0] <= lane7c2X[0] + 10'd1;
				lane7c3X[0] <= lane7c3X[0] + 10'd1;
				lane7c4X[0] <= lane7c4X[0] + 10'd1;
				lane7c5X[0] <= lane7c5X[0] + 10'd1;
				lane7c6X[0] <= lane7c6X[0] + 10'd1;
					
			end
	end
//

/////lane9 control /////
always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of lane9 cars
				lane9c0X[0] <= 10'd30;
				lane9c0Y[0] <= 9'd274;
				lane9c1X[0] <= 10'd150;
				lane9c1Y[0] <= 9'd274;
				lane9c2X[0] <= 10'd255;
				lane9c2Y[0] <= 9'd274;
				lane9c3X[0] <= 10'd365;
				lane9c3Y[0] <= 9'd274;
				lane9c4X[0] <= 10'd465;
				lane9c4Y[0] <= 9'd274;
				lane9c5X[0] <= 10'd570;
				lane9c5Y[0] <= 9'd274;
								
			end
		//recycling cars back to the start of the lane
		else if (lane9c0X[0] >= 10'd640)
			lane9c0X[0] <= 10'd0;
		else if (lane9c1X[0] >= 10'd640)
			lane9c1X[0] <= 10'd0;
		else if (lane9c2X[0] >= 10'd640)
			lane9c2X[0] <= 10'd0;
		else if (lane9c3X[0] >= 10'd640)
			lane9c3X[0] <= 10'd0;
		else if (lane9c4X[0] >= 10'd640)
			lane9c4X[0] <= 10'd0;
		else if (lane9c5X[0] >= 10'd640)
			lane9c5X[0] <= 10'd0;
		
		else
			begin //rate and direction of cars
				lane9c0X[0] <= lane9c0X[0] + 10'd1;
				lane9c1X[0] <= lane9c1X[0] + 10'd1;
				lane9c2X[0] <= lane9c2X[0] + 10'd1;
				lane9c3X[0] <= lane9c3X[0] + 10'd1;
				lane9c4X[0] <= lane9c4X[0] + 10'd1;
				lane9c5X[0] <= lane9c5X[0] + 10'd1;
				
			end
	end
//

/////lane10 control /////
always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of lane10 cars
				lane10c0X[0] <= 10'd10;
				lane10c0Y[0] <= 9'd299;
				lane10c2X[0] <= 10'd130;
				lane10c2Y[0] <= 9'd299;
				lane10c3X[0] <= 10'd190;
				lane10c3Y[0] <= 9'd299;
				lane10c4X[0] <= 10'd250;
				lane10c4Y[0] <= 9'd299;
				lane10c5X[0] <= 10'd315;
				lane10c5Y[0] <= 9'd299;
				lane10c7X[0] <= 10'd440;
				lane10c7Y[0] <= 9'd299;
				lane10c8X[0] <= 10'd510;
				lane10c8Y[0] <= 9'd299;
								
			end
		//recycling cars back to the start of the lane
		else if (lane10c0X[0] >= 10'd640)
			lane10c0X[0] <= 10'd0;
		else if (lane10c2X[0] >= 10'd640)
			lane10c2X[0] <= 10'd0;
		else if (lane10c3X[0] >= 10'd640)
			lane10c3X[0] <= 10'd0;
		else if (lane10c4X[0] >= 10'd640)
			lane10c4X[0] <= 10'd0;
		else if (lane10c5X[0] >= 10'd640)
			lane10c5X[0] <= 10'd0;
		else if (lane10c7X[0] >= 10'd640)
			lane10c7X[0] <= 10'd0;
		else if (lane10c8X[0] >= 10'd640)
			lane10c8X[0] <= 10'd0;
		
		else
			begin //rate and direction of cars
				lane10c0X[0] <= lane10c0X[0] + 10'd2;
				lane10c2X[0] <= lane10c2X[0] + 10'd2;
				lane10c3X[0] <= lane10c3X[0] + 10'd2;
				lane10c4X[0] <= lane10c4X[0] + 10'd2;
				lane10c5X[0] <= lane10c5X[0] + 10'd2;
				lane10c7X[0] <= lane10c7X[0] + 10'd2;
				lane10c8X[0] <= lane10c8X[0] + 10'd2;
				
			end
	end
//

/////lane11 control /////
always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of lane11 cars
				lane11c0X[0] <= 10'd30;
				lane11c0Y[0] <= 9'd324;
				lane11c1X[0] <= 10'd100;
				lane11c1Y[0] <= 9'd324;
				lane11c2X[0] <= 10'd170;
				lane11c2Y[0] <= 9'd324;
				lane11c3X[0] <= 10'd240;
				lane11c3Y[0] <= 9'd324;
				lane11c4X[0] <= 10'd310;
				lane11c4Y[0] <= 9'd324;
				lane11c5X[0] <= 10'd385;
				lane11c5Y[0] <= 9'd324;
				lane11c6X[0] <= 10'd450;
				lane11c6Y[0] <= 9'd324;
				lane11c7X[0] <= 10'd520;
				lane11c7Y[0] <= 9'd324;
				lane11c8X[0] <= 10'd580;
				lane11c8Y[0] <= 9'd324;
				
				
			end
		//recycling cars back to the start of the lane
		else if (lane11c0X[0] == 10'd0)
			lane11c0X[0] <= 10'd640;
		else if (lane11c1X[0] == 10'd0)
			lane11c1X[0] <= 10'd640;
		else if (lane11c2X[0] == 10'd0)
			lane11c2X[0] <= 10'd640;
		else if (lane11c3X[0] == 10'd0)
			lane11c3X[0] <= 10'd640;
		else if (lane11c4X[0] == 10'd0)
			lane11c4X[0] <= 10'd640;
		else if (lane11c5X[0] == 10'd0)
			lane11c5X[0] <= 10'd640;
		else if (lane11c6X[0] == 10'd0)
			lane11c6X[0] <= 10'd640;
		else if (lane11c7X[0] == 10'd0)
			lane11c7X[0] <= 10'd640;
		else if (lane11c8X[0] == 10'd0)
			lane11c8X[0] <= 10'd640;
			
		else
			begin //rate and direction of cars
				lane11c0X[0] <= lane11c0X[0] - 10'd1;
				lane11c1X[0] <= lane11c1X[0] - 10'd1;
				lane11c2X[0] <= lane11c2X[0] - 10'd1;
				lane11c3X[0] <= lane11c3X[0] - 10'd1;
				lane11c4X[0] <= lane11c4X[0] - 10'd1;
				lane11c5X[0] <= lane11c5X[0] - 10'd1;
				lane11c6X[0] <= lane11c6X[0] - 10'd1;
				lane11c7X[0] <= lane11c7X[0] - 10'd1;
				lane11c8X[0] <= lane11c8X[0] - 10'd1;
			end
	end
//

/////lane12 control /////
always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of lane12 cars
				lane12c0X[0] <= 10'd20;
				lane12c0Y[0] <= 9'd349;
				lane12c1X[0] <= 10'd110;
				lane12c1Y[0] <= 9'd349;
				lane12c2X[0] <= 10'd210;
				lane12c2Y[0] <= 9'd349;
				lane12c3X[0] <= 10'd330;
				lane12c3Y[0] <= 9'd349;
				lane12c4X[0] <= 10'd450;
				lane12c4Y[0] <= 9'd349;
				lane12c5X[0] <= 10'd570;
				lane12c5Y[0] <= 9'd349;			
			end
		//recycling cars back to the start of the lane
		else if (lane12c0X[0] == 10'd0)
			lane12c0X[0] <= 10'd640;
		else if (lane12c1X[0] == 10'd0)
			lane12c1X[0] <= 10'd640;
		else if (lane12c2X[0] == 10'd0)
			lane12c2X[0] <= 10'd640;
		else if (lane12c3X[0] == 10'd0)
			lane12c3X[0] <= 10'd640;
		else if (lane12c4X[0] == 10'd0)
			lane12c4X[0] <= 10'd640;
		else if (lane12c5X[0] == 10'd0)
			lane12c5X[0] <= 10'd640;			
		else
			begin //rate and direction of cars
				lane12c0X[0] <= lane12c0X[0] - 10'd2;
				lane12c1X[0] <= lane12c1X[0] - 10'd2;
				lane12c2X[0] <= lane12c2X[0] - 10'd2;
				lane12c3X[0] <= lane12c3X[0] - 10'd2;
				lane12c4X[0] <= lane12c4X[0] - 10'd2;
				lane12c5X[0] <= lane12c5X[0] - 10'd2;
			end
	end
//

/////lane14 control /////
always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of lane14 cars
				lane14c0X[0] <= 10'd24;
				lane14c0Y[0] <= 9'd399;
				lane14c1X[0] <= 10'd150;
				lane14c1Y[0] <= 9'd399;
				lane14c2X[0] <= 10'd290;
				lane14c2Y[0] <= 9'd399;
				lane14c3X[0] <= 10'd440;
				lane14c3Y[0] <= 9'd399;
				lane14c4X[0] <= 10'd570;
				lane14c4Y[0] <= 9'd399;
				
				
			end
		//recycling cars back to the start of the lane
		else if (lane14c0X[0] == 10'd0)
			lane14c0X[0] <= 10'd640;
		else if (lane14c1X[0] == 10'd0)
			lane14c1X[0] <= 10'd640;
		else if (lane14c2X[0] == 10'd0)
			lane14c2X[0] <= 10'd640;
		else if (lane14c3X[0] == 10'd0)
			lane14c3X[0] <= 10'd640;
		else if (lane14c4X[0] == 10'd0)
			lane14c4X[0] <= 10'd640;
			
		else
			begin //rate and direction of cars
				lane14c0X[0] <= lane14c0X[0] - 10'd2;
				lane14c1X[0] <= lane14c1X[0] - 10'd2;
				lane14c2X[0] <= lane14c2X[0] - 10'd2;
				lane14c3X[0] <= lane14c3X[0] - 10'd2;
				lane14c4X[0] <= lane14c4X[0] - 10'd2;
			end
	end
//

/////lane15 control /////
always @(posedge update)
	begin
		if (rst == 1'b1)
			begin //starting position of lane15 cars
				lane15c0X[0] <= 10'd20;
				lane15c0Y[0] <= 9'd424;
				lane15c2X[0] <= 10'd200;
				lane15c2Y[0] <= 9'd424;
				lane15c3X[0] <= 10'd310;
				lane15c3Y[0] <= 9'd424;
				lane15c4X[0] <= 10'd415;
				lane15c4Y[0] <= 9'd424;
				lane15c6X[0] <= 10'd495;
				lane15c6Y[0] <= 9'd424;
				
			end
		//recycling cars back to the start of the lane
		else if (lane15c0X[0] == 10'd0)
			lane15c0X[0] <= 10'd640;
		else if (lane15c2X[0] == 10'd0)
			lane15c2X[0] <= 10'd640;
		else if (lane15c3X[0] == 10'd0)
			lane15c3X[0] <= 10'd640;
		else if (lane15c4X[0] == 10'd0)
			lane15c4X[0] <= 10'd640;
		else if (lane15c6X[0] == 10'd0)
			lane15c6X[0] <= 10'd640;
			
		else
			begin //rate and direction of cars
				lane15c0X[0] <= lane15c0X[0] - 10'd1;
				lane15c2X[0] <= lane15c2X[0] - 10'd1;
				lane15c3X[0] <= lane15c3X[0] - 10'd1;
				lane15c4X[0] <= lane15c4X[0] - 10'd1;
				lane15c6X[0] <= lane15c6X[0] - 10'd1;
			end
	end
//


endmodule 