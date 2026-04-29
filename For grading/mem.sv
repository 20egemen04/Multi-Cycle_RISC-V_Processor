/*
	Egemen Celik 2220357034
	ELE432 Premilinary Work 3 : PRE3_Multi-Cycle_RISC-V_Processor
	mem.sv
	from Harris&Harris' book
*/

module mem (
    input logic clk, we,
    input logic [31:0] a, wd,
    output logic [31:0] rd
);
  logic [31:0] RAM[127:0];  // increased size of memory

  initial $readmemh("riscvtest.txt", RAM);
  assign rd = RAM[a[31:2]];  // word aligned
  always_ff @(posedge clk) if (we) RAM[a[31:2]] <= wd;
endmodule
