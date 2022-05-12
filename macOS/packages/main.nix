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
      wheel
      twine
      flake8
      virtualenv
    ]);

in {
  home.packages = with pkgs; [
    # MISC
    appimage-run
    appimagekit
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
    default-python
    gcc
    gnumake
    binutils
    gdb
    rustup

    # OFFICE
    texlive.combined.scheme-medium
    brave

    # DEFAULT
    vlc
  ];

}
