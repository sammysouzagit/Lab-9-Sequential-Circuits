module demux_1_4_1bit (
    input In,
    input [1:0] Sel,
    output reg A, reg B, reg C, reg D
);

    always @(*) begin
        case(Sel)
            2'b00: {D, C, B, A} <= {1'b0, 1'b0, 1'b0, In};
            2'b01: {D, C, B, A} <= {1'b0, 1'b0, In, 1'b0};
            2'b10: {D, C, B, A} <= {1'b0, In, 1'b0, 1'b0};
            2'b11: {D, C, B, A} <= {In, 1'b0, 1'b0, 1'b0};
        endcase
    end

endmodule
