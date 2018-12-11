module player_frog (clk,rst,up,down,left,right,update,xCount,yCount,frog);
input clk,rst,up,down,left,right,update;
input [9:0]xCount;
input [9:0]yCount;
output frog;

reg frog;
wire rst;
	
reg [9:0] frogX[0:31];
reg [8:0] frogY[0:31];

wire [9:0] xCount;
wire [9:0] yCount;


//controls the size of the frog
always@(posedge clk) 
	begin	
		frog = (xCount > frogX[0] && xCount < (frogX[0]+10'd15)) && (yCount > frogY[0] && yCount < (frogY[0]+10'd15));
	end
//	

	
//generates the direction of the frog from the controlling inputs (on the "updater" clock, so I can control how fast the player can move the frog
//**diagonal motions could be added by adding more states and combining inputs**

reg [2:0]S; //the "state" is the current directional movement (or lack there of) of the frog (could rename S as "direction" to be more clear/concise)
reg [2:0]NS;

localparam move_up = 3'd0, move_down = 3'd1, move_left = 3'd2, move_right = 3'd3, dont_move = 3'd4;

always @(posedge update) //state updater
	begin
		if (rst == 1'b1)
			S <= dont_move;
		else
			S <= NS;
	end

always @(*) //next state calculator 
	case (S)
		move_up:
			begin
				if(up == 1'b0)
					NS = move_up;
				else
					NS = dont_move;
			end
			
		move_down:
			begin
				if(down == 1'b0)
					NS = move_down;
				else
					NS = dont_move;
			end
		move_left:
			begin
				if(left == 1'b0)
					NS = move_left;
				else
					NS = dont_move;
			end
		move_right:
			begin
				if(right == 1'b0)
					NS = move_right;
				else
					NS = dont_move;
			end
		dont_move: //this is going to be the one that I might need to fine-tune (I think that putting in more than one directional input will cause the frog to freeze, so human input lag might need to be accounted for by changing the update speed)
			begin
				if(up == 1'b0)
					NS = move_up;
				else if (down == 1'b0)
					NS = move_down;
				else if (left == 1'b0)
					NS = move_left;
				else if (right == 1'b0)
					NS = move_right;
				else
					NS = dont_move;
			end
	endcase

always @(posedge update) //output (or motion) generator
	begin
	if (rst == 1'b1)
		begin //initial frog position
			frogX[0] <= 10'd300;
			frogY[0] <= 9'd449;
		end
	else
	//so this should let me always move the frog, regardless of any "start" signal, only when the reset isn't on
		case(S)
			move_up:
				frogY[0] <= (frogY[0] - 9'd2);
			move_down:
				frogY[0] <= (frogY[0] + 9'd2);
			move_left:
				frogX[0] <= (frogX[0] - 10'd2);
			move_right:
				frogX[0] <= (frogX[0] + 10'd2);
			dont_move:
				begin
					frogX[0] <= frogX[0];
					frogY[0] <= frogY[0];
				end
		endcase
	end
//


endmodule 