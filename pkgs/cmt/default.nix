let
  pkgs = import <nixpkgs> { };
  hp = pkgs.haskellPackages;
in
{ self }:
hp.mkDerivation rec {

  pname = "cmt";
  version = "0.7.1.0";
  src = ./.;
  isExecutable = true;
  libraryHaskellDepends = [
    hp.ansi-terminal hp.attoparsec hp.base hp.classy-prelude hp.containers hp.directory
    hp.file-embed hp.filepath hp.process hp.terminal-size hp.text
  ];
  libraryToolDepends = [ hp.hpack ];
  executableHaskellDepends = [ hp.base hp.classy-prelude ];
  testHaskellDepends = [
    hp.base hp.classy-prelude hp.file-embed hp.tasty hp.tasty-discover
    hp.tasty-expected-failure hp.tasty-hunit
  ];
  testToolDepends = [ hp.tasty-discover ];
  prePatch = "hpack";
  homepage = "https://github.com/smallhadroncollider/cmt#readme";
  description = "Write consistent git commit messages";
  license = pkgs.lib.licenses.bsd3;
  mainProgram = "cmt";

}
