{ config, pkgs, lib, ... }:

{
  imports = [ ./configs/main.nix ./packages/main.nix ];
  fonts.fontconfig.enable = true;
  home.packages = [
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" "FiraMono" "Hack" ]; })
  ];

  home.keyboard.options = [
     "ctrl:nocaps"
  ];
}
