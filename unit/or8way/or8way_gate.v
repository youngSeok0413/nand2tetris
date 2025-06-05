/*And gate*/

module or8way_gate (
    input wire a0,
    input wire a1,
    input wire a2,
    input wire a3,
    input wire a4,
    input wire a5,
    input wire a6,
    input wire a7,
    output wire y
);
    assign y = a0|a1|a2|a3
        |a4|a5|a6|a7;

endmodule