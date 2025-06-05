`timescale 1ns/1ps

module tb_not16_gate;

reg [15:0] a;
wire [15:0] y;

not16_gate uut(
    .a(a),
    .y(y)
);

initial begin
    $dumpfile("not16_gate.vcd");  // VCD 파일 생성
    $dumpvars(0, tb_not16_gate);  // 전체 신호 덤프

    // 초기 값 설정
    a = 16'hAAAA;
    #10;
    a = 16'h5555;
    #10;
    a = 16'hAAAA;
    #10;

    $finish;  // 시뮬레이션 종료
end

endmodule