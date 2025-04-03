
{ pkgs ? import <nixpkgs> {} }:
let
  message = "hello world";
in
pkgs.mkShellNoCC {
  packages = with pkgs; [ cowsay ];
  shellHook = ''
    cowsay ${message}
  '';
}

# This example declares a shell environment (which runs the shellHook on initialization).

# This expression is a function that takes an attribute set as an argument.

# If the argument has the attribute pkgs, it will be used in the function body.
# Otherwise, by default, import the Nix expression in the file found on the lookup
# path <nixpkgs> (which is a function in this case), call the function with an empty
# attribute set, and use the resulting value.

# The name message is bound to the string value "hello world".

# The attribute mkShellNoCC of the pkgs set is a function that is passed an attribute set
# as argument. Its return value is also the result of the outer function.

# The attribute set passed to mkShellNoCC has the attributes packages (set to a list with
# one element: the cowsay attribute from pkgs) and shellHook (set to an indented string).

# The indented string contains an interpolated expression, which will expand the value of
# message to yield "hello world".

