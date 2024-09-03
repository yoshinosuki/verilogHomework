/**
 * Filename            :   Fifo.v
 * Author              :   Wang Xiang
 * Description         :   设计一个同步FIFO，数据宽度8bit，FIFO深度16，输入信号包括时钟CLK，复位RST_N，数据输入data_in，输入使能wen，输出数据data_out，输出使能ren，FIFO空信号empty，FIFO满信号full。基本功能：数据先进先出。wen有效时将data_in存入FIFO，FIFO存满数据后full信号拉高，此时不能再将数据写入FIFO，wen信号无效。ren有效时将最先进入FIFO的数据输出到data_out，FIFO内无数据时empty信号拉高，此时不能再读出数据，ren信号无效。RST_N信号低有效，有效后FIFO要清空，不能再有残留数据。
 * Revision History    :   24-04-5
 * Revision            :   1.0
 */

module sync_fifo
(
input               clk,
input               rst_n,
input               wen,
input   [15:0]      data_in,
output              full,
input               ren,
output  [15:0]      data_out,
output              empty
);
reg  [4:0] wr_cnt=0;
reg  [4:0] rd_cnt=0;
wire [3:0] wr_p,rd_p;
assign wr_p = wr_cnt[3:0];
assign rd_p = rd_cnt[3:0];
reg [15:0] mem [16-1:0];
reg [15:0] data_out_r;
assign data_out = data_out_r;
assign full = (wr_cnt[4]!= rd_cnt[4]&&wr_p==rd_p)? 1:0;
assign empty = (wr_cnt== rd_cnt)?1:0;
always@(posedge clk or negedge rst_n)
begin
    if(!rst_n)
    begin
        wr_cnt <=0;
        rd_cnt <=0;
    end
    else
    begin
        if(!full&&wen)  
        begin
            mem[wr_p] <=  data_in;
            wr_cnt <= wr_cnt +1;
        end
        
        if(!empty&&ren)
        begin
            data_out_r  <= mem[rd_p];
            rd_cnt <= rd_cnt + 1;
        end
    end
end
endmodule