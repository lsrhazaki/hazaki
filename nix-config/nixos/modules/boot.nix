{ lib, pkgs, ... }: {
  boot.loader.systemd-boot = {
    enable = true;
    configurationLimit = lib.mkDefault 6;
    consoleMode = lib.mkDefault "max";
  };
  boot.loader.efi.canTouchEfiVariables = true;

  # Kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;
}
