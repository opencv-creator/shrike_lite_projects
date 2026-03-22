(* top *) module clk_prescaler(
    (* iopad_external_pin, clkbuf_inhibit *) input clk,
    (* iopad_external_pin *) input reset,
    (* iopad_external_pin *) output clk_out_oe,
    (* iopad_external_pin *) output osc_en,
    (* iopad_external_pin *) output clk_out
);

 reg counter_reg;
 reg [25:0] time_steps;
 
 assign clk_out_oe = 1'b1; 
 assign osc_en = 1'b1;
 assign clk_out  = counter_reg;

 always @(posedge clk or posedge reset) begin
    if (reset) begin
        counter_reg <= 1'b0;
        time_steps  <= 26'd0;
    end else 
    
    begin
        if (time_steps >=   26'd49_999_999) 
        begin
            time_steps <= 26'd0;
             counter_reg <= ~ counter_reg ;
           
          end 
        else begin
            time_steps <= time_steps + 1'd1;
        end
    end
 end
endmodule