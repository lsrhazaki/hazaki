{ pkgs, ... }:

{
  home.packages = with pkgs; [
      rofi
      dmenu     
      polybar   
  ];
}
