{ pkgs, ... }:{

  security.polkit.enable = true;

  # Services
  services = {
      gvfs.enable = true;
      tumbler.enable = true; 
      dbus.enable = true;
      dbus.packages = with pkgs; [
  	  xfce.xfconf
  	  gnome2.GConf
  ];
 };

services.mpd = {
  enable = true;
  musicDirectory = "/home/hazaki/Music";
  extraConfig =''
      audio_output {
      type "pulse"
      name "beachslap" # this can be whatever you want
      }
    '';
    user = "hazaki";
    network.listenAddress = "any"; # if you want to allow non-localhost connections
    startWhenNeeded = true; # systemd feature: only start MPD service upon connection to its socket
  };

  # Programs
  programs = {
      xfconf.enable = true;
      direnv.enable = true;
      dconf.enable = true;
      thunar = {
         enable = true;
           plugins = with pkgs.xfce; [ thunar-archive-plugin thunar-volman ];
    };
    };
}