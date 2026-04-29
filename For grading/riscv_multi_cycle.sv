/*
	Egemen Celik 2220357034
	ELE432 Premilinary Work 3 : PRE3_Multi-Cycle_RISC-V_Processor
	riscv_multi_cycle.sv
	code modified from Harris&Harris book
*/

module riscv_multi_cycle (
    input logic clk, reset,
    output logic MemWrite,
    output logic [31:0] Adr, WriteData,
    input logic [31:0] ReadData
);

  logic [6:0] op;
  logic [2:0] funct3;
  logic funct7b5;
  logic Zero;
  logic [1:0] ImmSrc;
  logic [1:0] ALUSrcA;
  logic [1:0] ALUSrcB;
  logic [1:0] ResultSrc;
  logic AdrSrc;
  logic [2:0] ALUControl;
  logic IRWrite;
  logic PCWrite;
  logic RegWrite;

  controller c (
      clk,
      reset,
      op,
      funct3,
      funct7b5,
	  Zero,
      ImmSrc,
	  ALUSrcA, ALUSrcB,
	  ResultSrc,
	  AdrSrc,
	  ALUControl,
	  IRWrite, PCWrite,
	  RegWrite, MemWrite
  );

  datapath dp (
      clk,
      reset,
      ImmSrc,
      ALUSrcA,ALUSrcB,
      ResultSrc,
      AdrSrc,
      IRWrite, PCWrite,
      RegWrite, MemWrite,
      ALUControl,
      op,
      funct3,
      funct7b5,
      Zero,
      Adr,
      ReadData,
	  WriteData
  );

endmodule
