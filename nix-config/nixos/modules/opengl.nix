{pkgs, ...}: {
  hardware.opengl = {
    driSupport32Bit = true;
    extraPackages = with pkgs; [
      vulkan-loader
      mesa
    ];
  };
}