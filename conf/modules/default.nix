{ ... }:

{
  imports = [
    # app
     ./app.nix     
     ./obs.nix

    # cli
    ./starship
    ./user/app/lf/lf.nix

    # shell
     ./shell/sh.nix

    # wm

    # term

    # dev

    # font
    ./font.nix

  ];
}
