_: {
  programs.kitty = {
    enable = true;
    theme = "Rosé Pine";
    font = {
      name = "JetBrainsMono Nerd Font";
    };
    settings = {
      window_margin_width = 5;
      tab_bar_min_tabs = 1;
      tab_bar_style = "powerline";
      tab_powerline_style = "slanted";
      tab_title_template = "{index}: {title}";
    };
    keybindings = {
      "alt+1" = "goto_tab 1";
      "alt+2" = "goto_tab 2";
      "alt+3" = "goto_tab 3";
      "alt+4" = "goto_tab 4";
      "alt+5" = "goto_tab 5";
      "alt+6" = "goto_tab 6";
      "alt+7" = "goto_tab 7";
      "alt+8" = "goto_tab 8";
      "alt+9" = "goto_tab 9";
    };
  };
}
