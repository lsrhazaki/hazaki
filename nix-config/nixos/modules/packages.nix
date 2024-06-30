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
     hwinfo
     glxinfo
     lazygit
     pciutils
     hdparm
     
    # Desktop apps
     feh
     mpv
     heroic
     firefox
     arandr
     discord
     galculator
     winetricks
     qbittorrent
     efibootmgr
     xfce.mousepad
     lxqt.lxqt-policykit
     networkmanagerapplet
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
