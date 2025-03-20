// Code your testbench here
// or browse Examples
module ALU_TB;
    reg [3:0] A, B;
    reg [2:0] ALU_Sel;
    wire [4:0] ALU_Out;

    ALU uut (A, B, ALU_Sel, ALU_Out);

    initial begin
        $monitor("A=%b, B=%b, ALU_Sel=%b -> ALU_Out=%b", A, B, ALU_Sel, ALU_Out);

        A = 4'b1010; B = 4'b0101;

        ALU_Sel = 3'b000; #10; // Addition
        ALU_Sel = 3'b001; #10; // Subtraction
        ALU_Sel = 3'b010; #10; // AND
        ALU_Sel = 3'b011; #10; // OR
        ALU_Sel = 3'b100; #10; // XOR
        ALU_Sel = 3'b101; #10; // Multiplication

        $finish;
    end
endmodule
