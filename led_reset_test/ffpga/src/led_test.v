(* top *)module led_test(
  (* iopad_external_pin, clkbuf_inhibit *) input clk,
   (* iopad_external_pin *)input  rst,
  (* iopad_external_pin *)output  led,
  (* iopad_external_pin *) output led_en,
  (* iopad_external_pin *) output clk_en
    
 );
 
 reg [31:0] counter;
 reg LED_status;
assign led_en =1'b1;
assign clk_en =1'b1;
  
 always @( posedge clk)
 begin
 if(rst)
 begin
 LED_status <= 1'b0;
 end
 else
 begin
  counter <= counter + 1'b1;

 
  if( counter == 10_000_000)

  begin
      LED_status <= !LED_status;
      counter <= 32'b0;
      
      end
 end
end

assign led = LED_status;
endmodule



 