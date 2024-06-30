{pkgs, ...}:

{

  home.file.".config/fastfetch/config.jsonc".source = ./config.jsonc;

  programs.fastfetch = {
    enable = true;
 };
}