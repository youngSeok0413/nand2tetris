module mux_gate(
    input wire a,
    input wire b,
    input wire c,
    output wire y
);

assign y = (c == 1'b1) ? b : a;

endmodule