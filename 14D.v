module half_subtractor(a, b, diff, borrow);
  input a, b;
  output diff, borrow;

  xor g1(diff, a, b);
  and g2(borrow, ~a, b);
endmodule

module full_subtractor(a, b, bin, diff, bout);
  input a, b, bin;
  output diff, bout;

  wire d1, b1, b2;

  half_subtractor hs1(a, b, d1, b1);
  half_subtractor hs2(d1, bin, diff, b2);
  or g3(bout, b1, b2);
endmodule
