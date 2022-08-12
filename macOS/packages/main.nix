{ pkgs, ... }:

with pkgs;
let
  default-python = python3.withPackages (python-packages:
    with python-packages; [
      pip
      black
      flake8
      setuptools
      streamlink
      remarkable-fs
      wheel
      twine
      virtualenv
    ]);

in {
  home.packages = with pkgs; [
    # MISC
    nmap

    # TERMINAL
    any-nix-shell
    htop
    neofetch
    zip
    unrar
    unzip
    mosh
    tree
    gnupg
    aria2
    imagemagick

    # DEVELOPMENT
    nixfmt
    gnumake
    binutils
    gdb
    rustup
  ];

}
