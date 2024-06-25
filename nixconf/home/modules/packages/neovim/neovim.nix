{pkgs, ...}:

{
  programs.neovim = {
    enable = true;
  };

  home = {
    packages = with pkgs; [
      lazygit
      stylua
      fd
      sumneko-lua-language-server
      ripgrep
    ];  
  };
}
