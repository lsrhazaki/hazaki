# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
  ./modules/user.nix
  ./modules/cursor.nix
  ./modules/bundle.nix
  ];

  nixpkgs = {
    overlays = [ ];
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  # system reload
  systemd.user.startServices = "sd-switch";

  programs.home-manager.enable = true;

  home.stateVersion = "24.05";
}
