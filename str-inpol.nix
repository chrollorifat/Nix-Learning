let
  name = "Nix";
  a = "eight";
  b = "and";
  c = "a half";
  d = "out of";
  e = "ten";
in
"${name} is a 8.5/10" + " " +
"in other words, ${a + " " + b + " " + c + " " + d + " " + e}"
