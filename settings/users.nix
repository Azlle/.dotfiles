# users.nix
{ config, lib, pkgs, ... }:

{
  users.users.eeshta = {
    isNormalUser = true;
    hashedPassword = "$6$Jfnph2DL7BuNPfQ9$ce88umN6hc82/t9efGRE.WhH7gEbk7Q6CEIhLuwojNWBiGsmas0boSQPIIgH70EsPTnBYFPYvegBintbztSn9.";
    description = "eeshta";
    shell = pkgs.fish;
    openssh.authorizedKeys.keys = [ "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHh60Pl9Y6ns/1cNY6kZC4AF/M1yXwbWL3OibsRSdp6X NixOS" ];
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      protonup-qt
      discord-canary
    ];
  };

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };
}
