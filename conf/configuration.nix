# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "saiga"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Manila";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_PH.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "fil_PH";
    LC_IDENTIFICATION = "fil_PH";
    LC_MEASUREMENT = "fil_PH";
    LC_MONETARY = "fil_PH";
    LC_NAME = "fil_PH";
    LC_NUMERIC = "fil_PH";
    LC_PAPER = "fil_PH";
    LC_TELEPHONE = "fil_PH";
    LC_TIME = "fil_PH";
  };

  # Configure keymap in X11
  services.xserver = {
    xkb.layout = "ph";
    xkb.variant = "";
  };

  # Enable xorg
  services.xserver.enable = true;
  
  # Enable sddm and leftwm.
  services.displayManager.sddm.enable = true;
  services.xserver.windowManager.leftwm.enable = true;
 
  # Default SDDM sessions
  # services.displayManager.defaultSession = "none+leftwm";  
  
  # Enable Sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Enable OpenGL
    hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
    extraPackages = with pkgs; [
      vulkan-loader
      mesa
    ];
  };
  

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.hazaki = {
    isNormalUser = true;
    description = "hazaki";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
    packages = with pkgs; [];
  };

  # Enable automatic login for the user.
  services.getty.autologinUser = "hazaki";

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
     arandr
     galculator
     wget
     kitty 
     feh
     git
     polybar
     lf
     rofi
     picom
     mpv
     xmobar
     qbittorrent
     heroic
     wineWowPackages.stable
     winetricks
     htop
     hwinfo
     pciutils
     killall
     inxi
     lxappearance
     dunst
     unzip
     zip
     pavucontrol
     firefox
     lxqt.lxqt-policykit
     xfce.mousepad
  ];
 
  # List Of Services

  programs.thunar = {
      enable = true;
      plugins = with pkgs.xfce; [ thunar-archive-plugin thunar-volman ];
    };

  services.gvfs.enable = true;
  services.tumbler.enable = true;
  programs.xfconf.enable = true;
  programs.dconf.enable = true;
  programs.fish.enable = true; 

  # Portals
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
    ];
    config.common.default = "gtk";
  };

  # Nix Optimized Settings
  nix = {
    settings = {
      auto-optimise-store = true;
    };
    gc = {
      automatic = true;

      dates = "weekly";
      options = "--delete-older-than 5d";
    };
  };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  system.stateVersion = "24.05"; # Did you read the comment?

  nix.settings.experimental-features = [ "nix-command" "flakes" ];  

}
