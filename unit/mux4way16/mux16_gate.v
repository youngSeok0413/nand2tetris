/*And gate*/

module mux16_gate (
    input wire [15:0] a,
    input wire [15:0] b,
    input wire c,
    output wire [15:0] y
);

assign y = (c == 1'b1) ? b : a;

endmodule