module sync_fifo_tb();
reg               clk    ;
reg               rst_n  ;
reg               wen  ;
reg               wen_r=0 ;
reg   [15:0]      data_in    ;
wire              full   ;
reg               ren  ;
reg               ren_r=0  ;
wire  [15:0]      data_out   ;
wire              empty  ;
 
initial begin
clk = 0;
rst_n =0;
wen =0;
ren =0;
data_in =0;
# 16 
rst_n =1;
#20 wen_r =  1;
#170 wen_r = 0;
 
#20 ren_r =  1;
#170 ren_r = 0;
end
always #5 clk = ~clk;
always@(posedge clk)
begin
    data_in <= data_in + 1;
    wen <= wen_r;
    ren <= ren_r;
end
 
sync_fifo uut(
.clk    (clk   ),
.rst_n  (rst_n ),
.wen  (wen ),
.data_in    (data_in   ),
.full   (full  ),
.ren  (ren ),
.data_out   (data_out  ),
.empty  (empty )
);
 
endmodule