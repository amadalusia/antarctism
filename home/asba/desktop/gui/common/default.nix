{ ... }: {
  imports = [
    ./fonts.nix
    ./rofi
    ./pavucontrol.nix
    ./kitty.nix
    ./discord.nix
  ];

  xdg.mimeApps.enable = true;
}
