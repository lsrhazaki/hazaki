{
  pkgs,
  ...
}: {
    qt = {
      enable = true;
      platformTheme.name = "gtk"; # gnome
      #platformTheme = "gnome";
      #style = {
      #  name = "adwaita-dark";
      #  package = pkgs.adwaita-qt;
      #};
    };
}
