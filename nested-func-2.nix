let
  f = x: y: x + y;
in
f 1 2

# This function firstly takes the first value
# which evaluates into another function with 
# x set to 1 and then it takes the second value 
# and evaluates the second function that resulted 
# from the first evaluation, hence it become 1 + 2 = 3
