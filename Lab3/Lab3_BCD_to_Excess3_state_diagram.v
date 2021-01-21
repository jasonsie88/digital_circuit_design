module Lab3_BCD_to_Excess3_state_diagram (output reg z, input x, clock, reset);
 reg [2:0] state, next_state;
 parameter s0 = 3'b000, s1 = 3'b001, s2 = 3'b010, s3 = 3'b011, s4 = 3'b100, s5 = 3'b101, s6 = 3'b110;
 always @(posedge clock, negedge reset) //state transition
 if (reset == 0) state <= s0; //Active-LOW reset
 else state <= next_state;
 always @ (state, x) // Form the next state
  case (state)
  s0: if (x) next_state = s2; else next_state = s1;
  s1: if (x) next_state = s4; else next_state = s3;
  s2: next_state = s4;
  s3: next_state = s5;
  s4: if (x) next_state = s6; else next_state = s5;
  s5: next_state = s0;
  s6: if (~x) next_state = s0;
  endcase
 always @ (state, x) // Form the output
  case (state)
   s0,s1,s4: z = ~x;
   s5,s2,s3:z = x;
   s6 : z = 1'b1;
  endcase

endmodule