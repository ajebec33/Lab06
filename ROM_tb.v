module ROM_tb;

parameter N = 31; 
reg [7:0] address;
reg clock;

wire [31:0] out;

ROM dut( .address(address), .clock(clock), .out(out));

initial begin
    address = 7'b0;
    clock = 1'b0;
    #20;
    address = 00000001;
    #20;
    address = 00000010;
    #20;
    address = 00000100;
    #20;
    address = 00001000;
    #20;
    address = 00010000;
    #20;
    address = 00100000;
    #20;
    address = 01000000;
    #20;
    address = 10000000;
    #20;
    clock = 1'b1;
end

endmodule