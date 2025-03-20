// Code your design here
module ALU (
    input [3:0] A, B,  // 4-bit inputs
    input [2:0] ALU_Sel, // 3-bit control signal
    output reg [4:0] ALU_Out // 5-bit output
);
    always @(*) begin
        case(ALU_Sel)
            3'b000: ALU_Out = A + B;  // Addition
            3'b001: ALU_Out = A - B;  // Subtraction
            3'b010: ALU_Out = A & B;  // AND
            3'b011: ALU_Out = A | B;  // OR
            3'b100: ALU_Out = A ^ B;  // XOR
            3'b101: ALU_Out = A * B;  // Multiplication
            default: ALU_Out = 5'b00000;
        endcase
    end
endmodule
