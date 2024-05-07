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
      window_margin_width = 15;
      tab_bar_min_tabs = 1;
      tab_bar_style = "powerline";
      tab_powerline_style = "slanted";
      tab_title_template = "{index}: {title}";
    };
    keybindings = {
      "alt+1" = "first_window";
      "alt+2" = "second_window";
      "alt+3" = "third_window";
      "alt+4" = "fourth_window";
      "alt+5" = "fifth_window";
      "alt+6" = "sixth_window";
      "alt+7" = "seventh_window";
      "alt+8" = "eighth_window";
      "alt+9" = "ninth_window";
      "alt+0" = "tenth_window";
    };
  };
}
