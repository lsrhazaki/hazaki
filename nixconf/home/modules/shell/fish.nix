{ pkgs, config, ... }:

### Shell Aliases ###
let
  myAliases = {
    cat = "bat -f";
    ftf = "fastfetch";
     c = "clear";
    
     # Files shortcuts
     config = "cd ~/.config/";
     nixconf = "cd ~/.nixconf/";
     local = "cd ~/.local/";
     dls = "cd ~/Downloads/";
     images = "cd ~/Images/";
     music = "cd ~/Music/";
     nix = "cd /etc/nixos";

    # git
    ga = "git add";
    gc = "git commit";
    gcm = "git commit -m";
    gcl = "git clone";
    gclone = "git clone git@github.com:lsrhazaki/";
    gp = "git push";
    gpl = "git pull";
  };

 in
{
  ### Fish Shell ###
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';
    shellInit = '' fastfetch '';
  };

  ### Install these packages with your shells ###
  home.packages = with pkgs; [
    fastfetch
  ];

  ### Home Session Aliases ###
  home.shellAliases = myAliases;

}