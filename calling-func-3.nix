# We can also pass arguments in functions by name
let
  f = x: x.a;
  v = { a = 3; };
in
f v
