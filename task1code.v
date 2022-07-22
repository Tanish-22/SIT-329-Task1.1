module blink1 (input clock, output reg [2:0] led, output reg [4:2] led1, output reg [8:4] led2);
    reg [31:0] counter; //32 bit counter 

    always @(posedge clock) begin
        if(counter <= 50000000) // will blink for 0.5 secs clock freq is 50MHz
        begin
            counter <= counter + 1;
        end
        else
        begin
            counter <= 0; // reset the counter 
            led[4:0] = ~led[4:0]; //opposite of the current logical inverse of each led assigned.
        end
    end
     always @(posedge clock) begin
        if(counter <= 2500000) // will blink for 0.025 secs clock freq is 50MHz
        begin
            counter <= counter + 1;
        end
        else
        begin
            counter <= 0; // reset the counter 
                led1[8:4] = ~led1[8:4];
        end
    end
     always @(posedge clock) begin
        if(counter <= 20000)
        begin
            counter <= counter + 1;
        end
        else
        begin
            counter <= 0; // reset the counter 
            led[4:2] = ~led[4:2]; //opposite of the current logical inverse of each led assigned.
        end
    end
endmodule
