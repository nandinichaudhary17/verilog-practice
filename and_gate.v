module and_gate(input a , input b,output y);
    assign y=a&b;
endmodule
module tb;
    reg a, b;
    wire y;

    and_gate uut (a, b, y);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars;
        $monitor("a=%b b=%b | y=%b", a, b, y);

        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $finish;
    end
endmodule
