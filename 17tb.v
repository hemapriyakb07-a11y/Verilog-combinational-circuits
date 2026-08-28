module comparator4bit_tb;
  reg [3:0] a, b;
  wire A_gt_B, A_eq_B, A_lt_B;

  comparator4bit uut(a, b, A_gt_B, A_eq_B, A_lt_B);

  initial begin
    $dumpfile("comparator4bit.vcd");
    $dumpvars(0, comparator4bit_tb);

    $monitor("t=%0t | a=%b b=%b | gt=%b eq=%b lt=%b",
              $time, a, b, A_gt_B, A_eq_B, A_lt_B);

    a=4'b0101; b=4'b0101; #10;
    a=4'b1010; b=4'b0111; #10;
    a=4'b0011; b=4'b1000; #10;

    #10 $finish;
  end
endmodule
