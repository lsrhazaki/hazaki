{ pkgs, inputs, ... }: {

home.packages = with pkgs; [ 
   rofi
   dunst
   polybar
   mpd
];
}
