{
  config,
  pkgs,
  lib,
  ...
}: {
  wayland.windowManager.sway = {
    config = let 
      fonts = {};
      modifier = "Mod4";
      rosePine = {
        base = "#191724";
        surface = "#1f1d2e";
        overlay = "#26233a";
        muted = "#6e6a86";
        subtle = "#908caa";
        text = "#e0def4";
        love = "#eb6f92";
        gold = "#f6c177";
        rose = "#ebbcba";
        pine = "#31748f";
        foam = "#9ccfd8";
        iris = "#c4a7e7";
        highlightlow = "#21202e";
      };
    in {
      defaultWorkspace = "workspace number 1";
      terminal = "${config.programs.kitty.package}/bin/kitty --single-instance";
      menu = "${config.programs.rofi.package}/bin/rofi -show drun";
      inherit modifier;
      gaps = {
        inner = 9;
        outer = 9;
      };
      window = {
        titlebar = false;
      };
      input."*" = {
        xkb_layout = "gb";
      };
      output.eDP-1 = {
        bg = "${../../../wallpapers/SignsSignsSigns.jpg} fill";
      };
      bars = [{
        command = "waybar";
      }];
      colors = {
        focusedInactive = {
          background = "${rosePine.base}";
  	  text = "${rosePine.text}";
  	  border = "${rosePine.surface}";
  	  indicator = "${rosePine.subtle}";
  	  childBorder = "${rosePine.surface}";
          };
        focused = {
          background = "${rosePine.base}";
  	  text = "${rosePine.text}";
  	  border = "${rosePine.rose}";
  	  indicator = "${rosePine.rose}";
  	  childBorder = "${rosePine.rose}";
        };
        unfocused = {
          background = "${rosePine.base}";
  	  text = "${rosePine.text}";
  	  border = "${rosePine.overlay}";
  	  indicator = "${rosePine.subtle}";
  	  childBorder = "${rosePine.overlay}";
        };
        urgent = {
  	  background = "${rosePine.base}";
  	  indicator = "${rosePine.love}";
  	  border = "${rosePine.love}";
  	  childBorder = "${rosePine.love}"; 
  	  text = "${rosePine.text}";
        };
      };
    };
    extraConfig = ''
      corner_radius 7
    '';
  };
}
