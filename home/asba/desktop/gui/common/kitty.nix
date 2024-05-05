{
  config,
  pkgs,
  lib,
  ...
}: {
  programs.kitty = {
    enable = true;
    theme = "Rosé Pine";
    font = {
      name = "RecMonoLinear Nerd Font Propo";
    };
    settings = {
      window_margin_width = 11;
    };
  };
}
