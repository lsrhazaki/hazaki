{ ... }:

{
  imports = [
    # app
     ./apps.nix
     ./packages/git/git.nix
     ./packages/obs/obs.nix
     ./packages/neovim/neovim.nix

    # cli
    ./packages/lf/lf.nix
    ./packages/starship/starship.nix

    # shell
     ./packages/fish/fish.nix
     ./packages/fastfetch/fastfetch.nix

    # wm

    # term

    # dev

    # font
    ./fonts.nix

  ];
}
