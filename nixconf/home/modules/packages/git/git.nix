{ config, pkgs, userSettings, ... }:

{
  programs.git = {
    enable = true;
    userName  = "lsrhazaki";
    userEmail = "lsrhazusaki@gmail.com";
    extraConfig = {
       init.defaultBranch = "main";
  };
};
}