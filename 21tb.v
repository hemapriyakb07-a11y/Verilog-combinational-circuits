module bcd_to_7seg_tb;
  reg [3:0] bcd;
  wire [6:0] seg;

  bcd_to_7seg uut(bcd, seg);

  initial begin
    $dumpfile("bcd_to_7seg.vcd");
    $dumpvars(0, bcd_to_7seg_tb);

    $monitor("t=%0t | bcd=%b | seg=%b", $time, bcd, seg);

    bcd=4'b0000; #10;
    bcd=4'b0001; #10;
    bcd=4'b0010; #10;
    bcd=4'b0011; #10;
    bcd=4'b0100; #10;
    bcd=4'b0101; #10;
    bcd=4'b0110; #10;
    bcd=4'b0111; #10;
    bcd=4'b1000; #10;
    bcd=4'b1001; #10;

    #10 $finish;
  end
endmodule
