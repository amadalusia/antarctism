{ ... }: {
  imports = [
    ./fonts.nix
    ./rofi
    ./pavucontrol.nix
    ./kitty.nix
    ./discord.nix
    ./waybar.nix
  ];

  xdg.mimeApps.enable = true;
}
