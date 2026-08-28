module comparator1bit(a, b, eq, gt, lt);
  input a, b;
  output eq, gt, lt;

  assign eq = ~(a ^ b);   
  assign gt = a & ~b;    
  assign lt = ~a & b;     
endmodule
