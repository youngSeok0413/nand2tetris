/*And gate*/

module mux4way16_gate (
    input wire [15:0] a0,
    input wire [15:0] a1,
    input wire [15:0] a2,
    input wire [15:0] a3,
    input wire [1:0] c,
    output wire [15:0] y
);

wire c0 = (~c[1]) & (~c[0]);
wire c1 = (~c[1]) & (c[0]);
wire c2 = (c[1]) & (~c[0]);
wire c3 = (c[1]) & (c[0]);

wire [15:0] y0, y1, y2, y3;
mux16_gate g0(.a(16'b0), .b(a0), .c(c0), .y(y0));
mux16_gate g1(.a(16'b0), .b(a1), .c(c1), .y(y1));
mux16_gate g2(.a(16'b0), .b(a2), .c(c2), .y(y2));
mux16_gate g3(.a(16'b0), .b(a3), .c(c3), .y(y3));

assign y = y0|y1|y2|y3;

endmodule