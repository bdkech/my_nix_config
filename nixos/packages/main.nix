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
    arandr
    haskellPackages.network-manager-tui
    tmate

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
    feh

    # DEVELOPMENT
    nixfmt
    default-python
    gradle
    gcc
    m4
    gnumake
    binutils
    gdb
    rustup

    # SYSADMIN
    termius
    remmina

    # OFFICE
    texlive.combined.scheme-medium
    brave

    # DEFAULT
    pavucontrol
    signal-desktop
    discord
    vlc
    spotify
    blueman

  ];

}
