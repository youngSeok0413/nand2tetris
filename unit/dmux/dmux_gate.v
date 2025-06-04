module dmux_gate(
    input wire a,
    input wire c,
    output reg y1,
    output reg y2
);

always @(*) begin
    if (c == 0) begin
        y1 = a;
        y2 = 0;
    end
    else begin
        y2 = a;
        y1 = 0;
    end
end

endmodule