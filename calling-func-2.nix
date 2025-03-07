# This calls a function on a literal attribute set
let
  f = x: x.a;
in
f { a = 1; }
