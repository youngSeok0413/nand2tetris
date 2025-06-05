/*And gate*/

module mux16_gate (
    input wire [15:0] a,
    input wire [15:0] b,
    input wire c,
    output reg [15:0] y
);
    always @(*) begin
        if (c == 0) begin
            y = a;
        end
        else begin
            y = b;
        end
    end

endmodule