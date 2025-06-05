/*And gate*/

module and16_gate (
    input wire [15:0] a, b,
    output wire [15:0] y
);
    assign y = a&b;

endmodule