let
  x = 1;
  y = 2;
  a = { alpha = "we can access this"; beta = "through ( ) from the attribute set, a"; };
in
{
  inherit x y;
  inherit (a) alpha beta;
}


