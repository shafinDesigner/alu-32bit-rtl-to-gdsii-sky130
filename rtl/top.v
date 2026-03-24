module top(
    input clk,
    input [31:0] a,
    input [31:0] b,
    input [2:0] op,
    output [31:0] y
);

reg [31:0] a_reg;
reg [31:0] b_reg;
reg [2:0] op_reg;

wire [31:0] alu_out;

always @(posedge clk) begin
    a_reg <= a;
    b_reg <= b;
    op_reg <= op;
end

alu u_alu (
    .a(a_reg),
    .b(b_reg),
    .op(op_reg),
    .y(alu_out)
);

assign y = alu_out;

endmodule
