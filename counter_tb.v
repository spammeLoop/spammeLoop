module counter_tb;



     //Clock and reset

     reg clk;

     reg res;


     // counter output, if the counter is 8 bit wide

     wire [7:0] cnt_val; // in original here and down in testcase different, bc "trust me it's a feature" (Assignment of multiple large Busses)


     // clock generation

     always begin

         #10 clk <= ~clk;

     end


     //Beginning of timing

     initial begin

         clk = 0;

         res = 1; //active reset
	
	 #20 res <= 0;	// greater 10 bc clock takes 10 cycles to do sync reset

         // After 200 units, in our case 200ns, the simulation will stop

         #200 $finish();

     end


     // DUT instance

     counter dut (

         .clk(clk),
	 .res(res),

         .value(cnt_val)

     );


endmodule
