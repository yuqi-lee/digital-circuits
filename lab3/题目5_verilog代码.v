module counter10(input clk,RST//RST为高电平有效
        output [3:0] chn);
        always@(posedge clk)
        begin
          if(RST==1||chn==0)
            chn=4'b1001;
          else
            chn=chn-4'b1;
        end
endmodule