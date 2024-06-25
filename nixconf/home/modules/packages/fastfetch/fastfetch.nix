{pkgs, ...}:

{

  xdg.configFile."config.jsonc".source = ./config.jsonc;  

  programs.fastfetch = {
    enable = true;
 };
}