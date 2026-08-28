module half_subtractor(a, b, diff, borrow);
  input a, b;
  output diff, borrow;

  xor g1(diff, a, b);
  and g2(borrow, ~a, b);
endmodule
