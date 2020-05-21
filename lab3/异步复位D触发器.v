module exm5(input RST_N,CLK,D
            output reg Q);
        always@(posedge CLK,negedge RST_N)
        begin
          if(RST_N==0)
            Q<=1'b0;
          else
            Q<=D;
        end
endmodule