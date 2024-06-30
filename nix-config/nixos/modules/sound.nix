{ pkgs, ... }:

{

 #Enable Sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # rtkit is optional but recommended
  #security.rtkit.enable = true;

  services.pipewire = {
    enable = false;

    alsa.enable = false;
    alsa.support32Bit = false;
    pulse.enable = false;

    # If you want to use JACK applications, uncomment this
    #jack.enable = true;
  };

  environment.systemPackages = with pkgs; [
    pavucontrol
  ];
}
