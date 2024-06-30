{
  imports = [
  ./lf/lf.nix
  ./git/git.nix
  ./fish/fish.nix
  ./starship/starship.nix
  ./fastfetch/fastfetch.nix
  ];

  disabledModules = [
  ./zsh/zsh.nix
  ];
}