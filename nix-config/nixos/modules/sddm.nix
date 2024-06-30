{
  services = {
    displayManager = {
      autoLogin.enable = true;
      autoLogin.user = "hazaki";
     sddm = {
        enable = true;    
        wayland.enable = false;
      };
      #defaultSession = "hyprland";
    };
  };
}
