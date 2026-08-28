module comparator1bit_tb;
  reg a, b;
  wire eq, gt, lt;

  comparator1bit uut(a, b, eq, gt, lt);

  initial begin
    $dumpfile("comparator1bit.vcd");
    $dumpvars(0, comparator1bit_tb);

    $monitor("t=%0t | a=%b b=%b | eq=%b gt=%b lt=%b",
              $time, a, b, eq, gt, lt);

    a=0; b=0; #10;  
    a=0; b=1; #10;  
    a=1; b=0; #10;  
    a=1; b=1; #10;  

    #10 $finish;
  end
endmodule
