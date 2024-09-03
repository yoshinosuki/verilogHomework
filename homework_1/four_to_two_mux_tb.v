`timescale 1ns/1ns

module testbench;

reg [3:0] A, B, C, D;
reg [1:0] SE;
wire [3:0] M, N;

// 实例化多路选择器
four_to_two_mux uut (
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .SE(SE),
    .M(M),
    .N(N)
);

initial begin
    // 初始化输入数据和选择信号
    A = 4'b1100;
    B = 4'b1010;
    C = 4'b1001;
    D = 4'b0110;
    SE = 2'b00;

    // 将 SE 设置为不同值，观察输出 M 和 N 的变化
    #10 SE = 2'b01;
    #10 SE = 2'b10;
    #10 SE = 2'b11;

    // 在仿真结束时输出结果
    $display("M = %b, N = %b", M, N);
    $finish;

end

endmodule
