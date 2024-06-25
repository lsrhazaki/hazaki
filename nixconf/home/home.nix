# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other home-manager modules here
  imports = [
    ./modules
  ];

  nixpkgs = {
    # Add Home overlays.
    overlays = [

    ];
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  # username
  home = {
    username = "hazaki";
    homeDirectory = "/home/hazaki";
  };

  home.packages = with pkgs; [  ];

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.kitty.enable = true;   

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "24.05";
}
