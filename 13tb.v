module mux8to1_tb;
  reg d0, d1, d2, d3, d4, d5, d6, d7;
  reg [2:0] sel;
  wire y;

  mux8to1 uut(d0, d1, d2, d3, d4, d5, d6, d7, sel, y);

  initial begin
    $dumpfile("mux8to1.vcd");
    $dumpvars(0, mux8to1_tb);

    $monitor("t=%0t | sel=%b | y=%b",
              $time, sel, y);

    d0=0; d1=1; d2=0; d3=1; d4=0; d5=1; d6=0; d7=1;

    sel=3'b000; #10;  
    sel=3'b001; #10;  
    sel=3'b010; #10;  
    sel=3'b011; #10;  
    sel=3'b100; #10;  
    sel=3'b101; #10;  
    sel=3'b110; #10;  
    sel=3'b111; #10;  

    #10 $finish;
  end
endmodule
