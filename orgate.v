module orgate2(SW0, SW1, LED;
  input SW0, SW1;
  output LED;

  assign LED = SW0 | SW1;
endmodule
