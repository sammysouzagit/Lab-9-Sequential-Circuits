module data_block_8bit (
    input [7:0] data,
    input store,
    output [7:0] memory
);

    D_Latch bit0(
        .D(data[0]),
        .enable(store),
        .Q(memory[0])
    );
    
    D_Latch bit1(
        .D(data[1]),
        .enable(store),
        .Q(memory[1])
    );
    D_Latch bit2(
        .D(data[2]),
        .enable(store),
        .Q(memory[2])
    );
    D_Latch bit3(
        .D(data[3]),
        .enable(store),
        .Q(memory[3])
    );
    D_Latch bit4(
        .D(data[4]),
        .enable(store),
        .Q(memory[4])
    );
    D_Latch bit5(
        .D(data[5]),
        .enable(store),
        .Q(memory[5])
    );
    D_Latch bit6(
        .D(data[6]),
        .enable(store),
        .Q(memory[6])
    );
    D_Latch bit7(
        .D(data[7]),
        .enable(store),
        .Q(memory[7])
    );

endmodule 