{ lib, stdenv, fetchurl }:

stdenv.mkDerivation rec {

  pname = "hello";

  version = "2.12";

  src = fetchurl {
    url = "mirror://gnu/${pname}/${pname}-${version}.tar.gz";
    sha256 = "1ayhp9v4m4rdhjmnl2bq3cibrbqqkgjbl3s7yk2nhlh8vj3ay16g";
  };

  meta = with lib; {
    license = licenses.gpl3Plus;
  };

}



# This expression is a function that takes an attribute set which must have
# exactly the attributes lib, stdenv, and fetchurl.

# It returns the result of evaluating the function mkDerivation, which is 
# an attribute of stdenv, applied to a recursive set.

# The recursive set passed to mkDerivation uses its own pname and version attributes
# in the argument to the function fetchurl. fetchurl itself comes from the outer
# function’s arguments.

# The meta attribute is itself an attribute set, where the license attribute has 


# the value that was assigned to the nested attribute lib.licenses.gpl3Plus.
