module counter01(input clk,RST_N
        output [3:0] chn);
        
always @(posedge clk)
begin
  if(RST_N==0||chn==0)
    chn=4'b1001;
  else
    chn=chn-4'b1;
end
endmodule