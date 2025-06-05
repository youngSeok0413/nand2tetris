module not16_gate(
    input wire [15:0] a,
    output wire [15:0] y
);

assign y = ~a;

endmodule