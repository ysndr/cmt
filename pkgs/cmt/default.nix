{ self, pkgs, stdenv, lib, haskellPackages }:
with haskellPackages;
  mkDerivation rec {
    pname = "cmt";
    version = "0.7.1.0";
    sha256 = "84dfafc92e9553c7bae4b4fe0cba3da29b37def606f88b989db95ee2dc933fa2";
    src = ../../.;
    isExecutable = true;
    libraryHaskellDepends = [
      ansi-terminal attoparsec base classy-prelude containers directory
      file-embed filepath process terminal-size text
    ];
    executableHaskellDepends = [ base classy-prelude ];

    doHaddock = false;
    doCheck = false;

    # libraryToolDepends = [ hpack ];

    # prePatch = "hpack";
    homepage = "https://github.com/smallhadroncollider/cmt#readme";
    description = "Write consistent git commit messages";
    license = lib.licenses.bsd3.spdxId;
    mainProgram = "cmt";
  }


# pname = "conduit";
#   version = "1.3.1.1";
#   sha256 = "84dfafc92e9553c7bae4b4fe0cba3da29b37def606f88b989db95ee2dc933fa2";
#   libraryHaskellDepends = [
#     base bytestring directory exceptions filepath mono-traversable mtl
#     primitive resourcet text transformers unix unliftio-core vector
#   ];
#   doHaddock = false;
#   doCheck = false;
#   homepage = "http://github.com/snoyberg/conduit";
#   description = "Streaming data processing library";
#   license = stdenv.lib.licenses.mit;
