let
  list = [ { name = "foo"; value = 123; }
           { name = "bar"; value = 456; } ];
  string = ''{"x": [1, 2, 3], "y": null}'';
in 
{
  ex0 = builtins.listToAttrs list == { foo = 123; bar = 456; };
  ex1 = builtins.fromJSON string == { x = [1 2 3]; y = null; };
}


# ex0: builtins.listToAttrs

    # Takes a list of attribute sets with name and value keys

    # Converts them into a single attribute set where:

        # { name = "foo"; value = 123; } becomes foo = 123

        # { name = "bar"; value = 456; } becomes bar = 456

    # Result: { foo = 123; bar = 456; }

# ex1: builtins.fromJSON

    # Parses the JSON string into Nix values with these conversions:

        # JSON arrays [1, 2, 3] → Nix lists [1 2 3] (note: comma removal)

        # JSON null → Nix null

        # JSON object keys → Nix attribute set keys

    # Result: { x = [1 2 3]; y = null; }


