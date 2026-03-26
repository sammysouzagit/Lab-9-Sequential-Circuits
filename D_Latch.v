module D_Latch(
    input D, enable,
    output reg Q,
    output NotQ
);
    
    always @(D, enable) begin
        if (D && enable)
            Q <= 1;
        else if (~D && enable)
            Q <= 0;
    end
    
    assign NotQ = ~Q;
        
endmodule
