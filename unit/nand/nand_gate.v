/*And gate*/

module nand_gate (
    input wire a, b,
    output wire y
);
    assign y = ~(a&b);

endmodule