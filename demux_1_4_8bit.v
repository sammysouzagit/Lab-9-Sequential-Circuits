module demux_1_4_8bit (
    input [7:0] In,
    input [1:0] Sel,
    output reg [7:0] A, reg [7:0] B, reg [7:0] C, reg [7:0] D
);

    always @(*) begin
        case(Sel)
            2'b00: {D, C, B, A} <= {8'b0, 8'b0, 8'b0, In};
            2'b01: {D, C, B, A} <= {8'b0, 8'b0, In, 8'b0};
            2'b10: {D, C, B, A} <= {8'b0, In, 8'b0, 8'b0};
            2'b11: {D, C, B, A} <= {In, 8'b0, 8'b0, 8'b0};
        endcase
    end

endmodule