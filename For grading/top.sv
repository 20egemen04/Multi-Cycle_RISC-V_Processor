/*
	Egemen Celik 2220357034
	ELE432 Premilinary Work 3 : PRE3_Multi-Cycle_RISC-V_Processor
	top.sv
*/

module top (
    input logic clk, reset,
    output logic [31:0] WriteData, DataAdr,
    output logic MemWrite
);

  logic [31:0] ReadData;

  // instantiate processor and memories
  riscv_multi_cycle rvmulti (
      clk,
      reset,
      MemWrite,
      DataAdr,
      WriteData,
      ReadData
  );
  mem main_mem (
      clk,
      MemWrite,
      DataAdr,
      WriteData,
      ReadData
  );

endmodule
