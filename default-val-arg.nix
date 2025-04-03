let
  f = {a, b ? 0}: a + b;
in
f { a = 1; }
