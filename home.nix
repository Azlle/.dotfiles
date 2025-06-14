# home.nix
{ config, pkgs, ... }:

{
  imports = [
    ./hm_modules
  ];

  home = rec {
    username = "eeshta";
    homeDirectory = "/home/${username}";
    stateVersion = "25.05";
  };

  home.file = {
    "eeshta_wallpaper.png" = {
      target = "Pictures/eeshta_wallpaper.png";
      source = ./artworks/nix-wallpaper-simple-dark-gray_mellomixed.png;
    };
    "eeshta_icon.png" = {
      target = "Pictures/eeshta_icon.png";
      source = ./artworks/IMG_4900_foricon.png;
    };
  };
}
