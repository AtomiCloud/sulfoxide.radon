{ pkgs, packages }:
with packages;
{
  system = [
    atomiutils
  ];

  dev = [
    pls
    git
  ];

  infra = [
    infrautils
  ];

  main = [
    infisical
  ];

  lint = [
    # core
    # core
    treefmt
    gitlint
    shellcheck
    infralint
    helmlint
    sg
  ];

  releaser = [
    sg
  ];
}
