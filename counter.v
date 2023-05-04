module counter (


    input clk, // Counter Clock
    input res, // reset signal
    output reg [7:0] value // Output value


);


    // We will implement the counter here
	always @ (posedge clk) begin 
		if (res) begin
			value <= 0;
		end
		else begin	
			value <= value + 1;
		end
	end
	
endmodule
