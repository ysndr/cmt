let
  pkgs = import <nixpkgs> { };

in
  pkgs.haskellPackages.callPackage ./pkgs/cmt/default.nix { }
