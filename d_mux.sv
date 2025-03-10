module DFFusingMUX(input d1, d0, sel, clk, rst, output reg q);
reg d;

always @ (*)
    begin
        case(sel)
            0 : d = d0;
            1 : d = d1;
        endcase
    end

always @(posedge clk)
     begin
         if(rst)
             q <= 0;
         else
             q <= d;
     end
 endmodule

//Adding comments to change version.
//This is V8 comment. 
//This is V8.5 design branch
