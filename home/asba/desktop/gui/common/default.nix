{ ... }: {
  imports = [
    ./fonts.nix
    ./pavucontrol.nix
    ./kitty.nix
    ./rofi
    ./discord
  ];

  xdg.mimeApps.enable = true;
}
