module mux4to1(i0, i1, i2, i3, s0, s1, y);
  input i0, i1, i2, i3;
  input s0, s1;
  output y;

  assign y = (s1==0 && s0==0) ? i0 :
             (s1==0 && s0==1) ? i1 :
             (s1==1 && s0==0) ? i2 :
                                i3;
endmodule

module xor_using_mux(a, b, f);
  input a, b;
  output f;

  mux4to1 m1(0, 1, 1, 0, a, b, f);
endmodule
