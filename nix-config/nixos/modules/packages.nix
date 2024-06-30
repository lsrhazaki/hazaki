{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = ["openssl-1.1.1u"];
  };

  environment.systemPackages = with pkgs; [
     # Terminal coms.
     zip
     inxi
     btop
     wget
     unzip
     killall
     lazygit
     hwinfo
     glxinfo
     pciutils
     hdparm
     
    # Desktop apps
     feh
     mpv
     arandr
     heroic
     firefox
     discord
     galculator
     winetricks
     qbittorrent
     efibootmgr
     xfce.mousepad
     lxqt.lxqt-policykit
     wineWowPackages.stable

    # Coding stuff
    fd
    gcc
    stylua
    lazygit
    ripgrep
    gnumake
    sumneko-lua-language-server

    # Screenshotting
    slurp
    flameshot
  ];
}
