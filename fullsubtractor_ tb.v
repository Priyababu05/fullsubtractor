module test_full_subtractor_gate;
  reg A, B, Bin;
  wire D, Bout;
  full_subtractor_gate uut (.A(A), .B(B), .Bin(Bin), .D(D), .Bout(Bout));
  initial begin
    $display("A B Bin | D Bout");
    $display("--------|--------");
    $monitor("%b %b %b | %b %b", A, B, Bin, D, Bout);
    
     A = 0; B = 0; Bin = 0; #10;
     A = 0; B = 0; Bin = 1; #10;
     A = 0; B = 1; Bin = 0; #10;
     A = 0; B = 1; Bin = 1; #10;
     A = 1; B = 0; Bin = 0; #10;
     A = 1; B = 0; Bin = 1; #10;
     A = 1; B = 1; Bin = 0; #10;
     A = 1; B = 1; Bin = 1; #10;
     $finish;
  end
endmodule