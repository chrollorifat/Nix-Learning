with import <nixpkgs> { };
with stdenv.lib;
let
  attr = {a="a"; b = 1; c = true;};
  s = "b";
in
{
  ex0 = isAttrs {};          # Check if empty set is an attribute set
  ex1 = attr.a == "a";       # Direct attribute access
  ex2 = attr.${s} == 1;      # Dynamic attribute access using string interpolation
  ex3 = attrVals ["c" "b"] attr == [ true 1 ];  # Get values in specified order
  ex4 = attrValues attr == [ "a" 1 true ];      # Get values sorted by attribute name
  ex5 = builtins.intersectAttrs attr {a="b"; d=234; c="";} 
    == { a = "b"; c = ""; }; # Intersection of attributes with second set's values
  ex6 = removeAttrs attr ["b" "c"] == { a = "a"; };  # Remove specified attributes
  ex7 = ! (attr ? a) == false;     # Check attribute existence and negate
}


# ex0: isAttrs {}

    # {} is an empty attribute set

    # isAttrs checks if the argument is an attribute set

    # Simplest valid attribute set is empty set {}

# ex1: attr.a == "a"

    # Direct access of attribute a from attr set

    # Value is explicitly defined as "a" in the attr set

# ex2: attr.${s} == 1

    # ${s} interpolates the string "b" from variable s

    # Equivalent to attr."b" which accesses attribute b

    # Value of b is defined as 1 in attr

# ex3: attrVals ["c" "b"] attr == [ true 1 ]

    # attrVals takes a list of attribute names and returns their values in order

    # c is true, b is 1 → [true 1]

# ex4: attrValues attr == [ "a" 1 true ]

    # attrValues returns values sorted by attribute names

    # Alphabetical order: a (a), b (1), c (true)

# ex5: builtins.intersectAttrs

    # Returns attributes present in both sets, taking values from the second set

    # Common attributes: a and c

    # Values from second set: a="b", c=""

# ex6: removeAttrs attr ["b" "c"]

    # Removes attributes b and c from attr

    # Leaves only a = "a"

# ex7: ! (attr ? a) == false

    # attr ? a checks if attribute a exists (returns true)

    # ! true becomes false

    # Wrapped in parentheses for proper operator precedence


