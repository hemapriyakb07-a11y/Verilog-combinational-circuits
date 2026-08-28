module encoder4to2_tb;
  reg d0, d1, d2, d3;
  wire y1, y0;

  encoder4to2 uut(d0, d1, d2, d3, y1, y0);

  initial begin
    $dumpfile("encoder4to2.vcd");
    $dumpvars(0, encoder4to2_tb);

    $monitor("t=%0t | d0=%b d1=%b d2=%b d3=%b | y1=%b y0=%b",
              $time, d0, d1, d2, d3, y1, y0);

    d0=1; d1=0; d2=0; d3=0; #10;  // output 00
    d0=0; d1=1; d2=0; d3=0; #10;  // output 01
    d0=0; d1=0; d2=1; d3=0; #10;  // output 10
    d0=0; d1=0; d2=0; d3=1; #10;  // output 11

    #10 $finish;
  end
endmodule
