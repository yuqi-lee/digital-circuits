module test(
input wire   a,b,clk,
output reg   o);
wire   s;
   //code
endmodule

module test(
input wire   a,b,
output reg   o);
wire   s;
   assign s = a & b;
always@( * ) o = s;// *表示任意时序控制 
endmodule

module test(
input wire   a,b,clk,
output reg   o);
wire   s;
   assign s = a & b;
   always@( posedge clk ) o <= s;
endmodule

//if(条件) 过程语句
//else 过程语句 
module test(input wire a,b,clk, output reg o);
   always@( posedge clk )
   begin
        if(a) 
            o <= a;
        else   
            o <= b;
   end
endmodule

module test(
input wire   a,b,clk,
output reg   o);
   always@( posedge clk )
       case({a,b})
        2’b00:o <= 1’b0;
        2’b01:o <= 1’b0;
        2’b10:o <= 1’b0;
        2’b11:o <= 1’b1;
       endcase
endmodule

//8bit 位宽 4 选 1 选择器，纯组合逻辑
module mux_4to1(    //8bit 位宽的 4 选 1 选择器
input [7:0] a,b,c,d,
input [1:0] sel,
output reg [7:0] o);//always 语句内赋值的信号都应定义成 reg 类型 
always@(*)  //always 语句内实现组合逻辑
begin
    case(sel)
        2’b00: o = a;//组合逻辑使用“=”进行赋值
        2’b01: o = b;
        2’b10: o = c;
        2’b11: o = d;
        default: o = 8’h0;//用 case 语句实现组合逻辑时一定要有 default
    endcase
end
endmodule

//1~10 循环计数的计数器
module cnt_1to10(
input clk,rst_n,
output reg [3:0] cnt);
always@(posedge clk or negedge rst_n) //时序控制条件为时钟上升沿和复位的下降沿 
begin
    if(!rst_n)//复位信号优先级最高，应是第一个判断的条件
        cnt <= 4’h1;
    else 
        if(cnt>=10) cnt <= 4’h1;
    else
        cnt <= cnt + 4’h1;
end
endmodule
