module full_subtractor_gate(input A, B, Bin, output D, Bout);
  wire w1, w2, w3, w4, w5;
  xor (w1, A, B);
  xor (D, w1, Bin);
  not (w2,A);
  and (w3, w2, B);
  not (w4, w1);
  and (w5, w4, Bin);
  or (Bout, w3, w5);
endmodule