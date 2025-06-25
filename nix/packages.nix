{ pkgs, atomi, pkgs-2505, pkgs-unstable }:
let

  all = {
    atomipkgs = (
      with atomi;
      {
        helmlint = atomi.helmlint.override { helmPackage = infrautils; };
        inherit
          infrautils
          atomiutils
          infralint
          pls
          sg;
      }
    );
    nix-unstable = (
      with pkgs-unstable;
      { }
    );
    nix-2505 = (
      with pkgs-2505;
      {
        inherit
          infisical
          git
          treefmt

          gitlint
          shellcheck
          ;
      }
    );
  };
in
with all;
atomipkgs //
nix-2505
