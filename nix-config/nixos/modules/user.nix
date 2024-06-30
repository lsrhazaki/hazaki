{ pkgs, ... }: {
  programs.fish.enable = true;
  
  users.users = {
    hazaki = {
      isNormalUser = true;
      description = "hazaki";
      shell = pkgs.fish;
      extraGroups = [ "networkmanager" "wheel" ];
      openssh.authorizedKeys.keys = [
        # TODO: Add your SSH public key(s) here, if you plan on using SSH to connect
      ];
    };
  };


  # Enable automatic login for the user.
  #services.getty.autologinUser = "hazaki";

}
