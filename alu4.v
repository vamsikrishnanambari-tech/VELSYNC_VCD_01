module alu4 (
    input  [3:0] A,        // operand A
    input  [3:0] B,        // operand B
    input  [1:0] SEL,      // 00=ADD, 01=SUB, 10=AND, 11=OR
    output reg [3:0] RESULT,
    output reg CARRY,      // carry (ADD) / borrow (SUB)
    output reg ZERO,       // RESULT == 0
    output reg OVERFLOW    // signed overflow (ADD/SUB)
);

    reg [4:0] sum;          // 5-bit temp for carry

    always @(*) begin
        // default values
        RESULT   = 4'b0000;
        CARRY    = 1'b0;
        OVERFLOW = 1'b0;

        case (SEL)
            2'b00: begin // ADD
                sum    = {1'b0, A} + {1'b0, B};
                RESULT = sum[3:0];
                CARRY  = sum[4];
                // signed overflow check
                OVERFLOW = (~(A[3] ^ B[3])) & (RESULT[3] ^ A[3]);
            end

            2'b01: begin // SUB
                sum    = {1'b0, A} - {1'b0, B};
                RESULT = sum[3:0];
                CARRY  = (A < B); // borrow
                // signed overflow check
                OVERFLOW = (A[3] ^ B[3]) & (RESULT[3] ^ A[3]);
            end

            2'b10: begin // AND
                RESULT = A & B;
            end

            2'b11: begin // OR
                RESULT = A | B;
            end
        endcase

        ZERO = (RESULT == 4'b0000);
    end

endmodule
