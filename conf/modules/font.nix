{ pkgs, ... }:

{
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "FiraCode" "Iosevka"
  "JetBrainsMono" "SourceCodePro"
  "FiraMono" "Noto"
   "NerdFontsSymbolsOnly" "DroidSansMono" ]; })
    font-awesome
    noto-fonts-color-emoji
    material-design-icons
    roboto-mono
  ];
}