# This function takes one argument and returns
# another function y: x + y with x set to the 
# value of that argument.
let
  f = x: y: x + y;
in
f 1

# Applying the function which results from f 1 
# to another argument yields the inner body x + y 
# (with x set to 1 and y set to the other argument),
# which can now be fully evaluated.
