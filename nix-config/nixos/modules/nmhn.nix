{ lib, hostname, ... }: {
  # Hostname
  networking.hostName = "nixsaiga";
  networking.networkmanager.enable = true;
  networking.firewall.enable = lib.mkDefault true;

  # networking.firewall.allowedTCPPorts = [ 3000 ];
  # networking.firewall.allowedUDPPorts = [ 3000 ];
  # Or disable the firewall altogether.

  services.openssh = {
    enable = true;
    settings = {
      PermitRootLogin = "no";
      # Remove if you want to SSH using passwords
      PasswordAuthentication = false;
    };
  };


  services.avahi = {
    enable = true;
    };
 }