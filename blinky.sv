//
//
//
module blinky(
					i_clk,			//12MHz clock
					o_led,			//Blinking LED
					o_led_gnd		//LEDs off
				 );
// IO declarations
input wire i_clk;					//Input from external OSC
output wire o_led;				//Output LED
output wire [6:0] o_led_gnd;	//Output LEDs
// reg/wires
reg [23:0] counter;				//Counter
//structural coding
always @(posedge i_clk)
	counter <= counter + 1'b1;	//
assign o_led = counter[23];	//
assign o_led_gnd = 0;			//Turn LEDs off
//
endmodule	