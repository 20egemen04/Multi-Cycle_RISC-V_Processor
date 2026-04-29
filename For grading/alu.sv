/*
	Egemen Celik 2220357034
	ELE432 Preliminary Work 2 : PRE2_Single-Cycle_RISC-V_Processor
	alu.sv
*/

module alu (
    input  logic [31:0] SrcA,
    input  logic [31:0] SrcB,
    input  logic [ 2:0] ALUControl,
    output logic [31:0] ALUResult,
    output logic        Zero
);

  logic [31:0] condinvb;  // mux for SrcB for add and sub
  logic [31:0] Sum;  // internal Sum signal
  logic Cout;  // Cout, unused internal signal
  logic isAddSub; // intermediary signal for calculation Overflow
  logic Overflow;  // v, internal overflow
  logic slt;  // set less than before zero extension
  logic [31:0] Result;  // internal result

  // Assign internal signals as seen in the figure
  assign condinvb = ALUControl[0] ? ~SrcB : SrcB;
  assign {Cout, Sum} = SrcA + condinvb + ALUControl[0];
  assign isAddSub = ~ALUControl[2] & ~ALUControl[1] | ~ALUControl[1] & ALUControl[0];
  assign Overflow = ((~(ALUControl[0] ^ SrcA[31] ^ SrcB[31]) & (SrcA[31] ^ Sum[31])) & isAddSub);
  assign slt = Overflow ^ Sum[31];

  always_comb begin
    case (ALUControl[2:0])
      3'b000:  Result = Sum;  // add
      3'b001:  Result = Sum;  // sub
      3'b010:  Result = SrcA & SrcB;  // and
      3'b011:  Result = SrcA | SrcB;  // or
      3'b100:  Result = SrcA ^ SrcB;  // xor
      3'b101:  Result = {31'b0, slt};  // slt	
      3'b110:  Result = SrcA << SrcB[4:0];  // sll
      3'b111:  Result = SrcA >> SrcB[4:0];  // srl
      default: Result = 32'bx;
    endcase
  end

  // Assign output signals as seen in the figure
  assign Zero = (Result == 32'b0);
  assign ALUResult = Result;

endmodule
