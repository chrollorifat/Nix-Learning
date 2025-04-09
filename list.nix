with import <nixpkgs> { };
with stdenv.lib;
let
  list = [2 "4" true false {a = 27;} false 3];
  f = x: isString x;
  s = "foobar";
in
{
  # everything should evaluate to true
  ex00 = isList list;
  ex01 = elemAt list 2 == true;
  ex02 = length list == 7;
  ex03 = last list == 3;
  ex04 = filter f list == [ "4" ];
  ex05 = head list == 2;
  ex06 = tail list == [ "4" true false {a = 27;} false 3 ];
  ex07 = remove true list == [ 2 "4" false {a = 27;} false 3 ];
  ex08 = toList s == [ "foobar" ];
  ex09 = take 3 list == [ 2 "4" true ];
  ex10 = drop 4 list == [ {a = 27;} false 3 ];
  ex11 = unique list == [ 2 "4" true false {a = 27;} 3 ];
  ex12 = list ++ ["x" "y"] == [ 2 "4" true false {a = 27;} false 3 "x" "y" ];
}


# ex00

    # isList list:
        # checks if list is a list → true (it is).

# ex01

    # elemAt list 2 :
        # gets the 3rd element (index 2) → true.

# ex02

    # length list:
        # counts total elements → 7 (matches the list size).

# ex03

    # last list:
        # returns the final element → 3.

# ex04

    # filter f list:
        # keeps only elements where f(x) = true.

        # Breakdown of filtering:

        # list = [
        #   2        # → isString? ❌ (number)
        #   "4"      # → isString? ✔️ (string)
        #   true     # → isString? ❌ (boolean)
        #   false    # → isString? ❌ (boolean)
        #   {a=27;}  # → isString? ❌ (attribute set)
        #   false    # → isString? ❌ (boolean)
        #   3        # → isString? ❌ (number)
        # ]
        #
        #     Result: Only "4" survives → ["4"].

# ex05

    # head list:
        # returns the first element → 2.

# ex06

    # tail list:
        # removes the first element → ["4", true, ..., 3].

# ex07

    # remove true:
        # deletes the first true (at index 2) → rest remain.

# ex08

    # toList s: 
        # Turns the attrubute s into a list.

# ex09

    # take 3:
        # keeps the first 3 elements → [2, "4", true].

# ex10

    # drop 4:
        # removes the first 4 elements → leaves [{a=27;}, false, 3].

# ex11

    # unique list:
        # removes the second false (keeps the first) → deduped list.

# ex12

    #  ++ :
        # appends ["x", "y"] to the original list → combined result.


