{ pkgs, ... }:

{
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    roboto-mono
    font-awesome
    source-han-sans
    noto-fonts-color-emoji
    material-design-icons
    source-han-sans-japanese
    source-han-serif-japanese
    (nerdfonts.override { fonts = [ "FiraCode" "Iosevka"
    "JetBrainsMono" "SourceCodePro"
    "FiraMono" "NerdFontsSymbolsOnly" "DroidSansMono" ]; })        
  ];
}