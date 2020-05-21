module D_ff(input clk,D,ST_N,//ST低电平有效
    output reg Q);
    always@(posedge clk)
        begin
          if(ST_N == 0)
            Q<=1'b1;
          else 
            Q<=D;
        end
endmodule  