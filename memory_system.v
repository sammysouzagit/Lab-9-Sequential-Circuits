module memory_system(
    input [7:0] data,
    input [1:0] addr,
    input store,
    output [7:0] memory 
);


    demux_1_4_1bit storeDeMux(
        .In(store),
        .Sel(addr)
    );

    demux_1_4_8bit dMux(
        .In(data),
        .Sel(addr)
    );
    
    data_block_8bit mem0(
        .data(dMux.A),
        .store(storeDeMux.A),
        .memory(mux.A)
    );
    
    data_block_8bit mem1(
        .data(dMux.B),
        .store(storeDeMux.B),
        .memory(mux.B)
    );
    
    data_block_8bit mem2(
        .data(dMux.C),
        .store(storeDeMux.C),
        .memory(mux.C)
    );
    
    data_block_8bit mem3(
        .data(dMux.D),
        .store(storeDeMux.D),
        .memory(mux.D)
    );
    
    mux_4_1_8bit mux(
        .Sel(addr),
        .Y(memory)
    );
endmodule
