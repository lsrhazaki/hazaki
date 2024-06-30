{ config, pkgs, ... }:

{
  #services.xserver.displayManager.defaultSession = "none+leftwm";
  services.xserver.windowManager.leftwm.enable = true;
}

