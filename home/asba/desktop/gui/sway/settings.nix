{
  config,
  pkgs,
  lib,
  ...
}: {
  wayland.windowManager.sway = let
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
    config = {
      defaultWorkspace = "workspace number 1";
      terminal = "${config.programs.kitty.package}/bin/kitty --single-instance --title \"kitty\"";
      menu = "${config.programs.rofi.package}/bin/rofi -show drun";
      modifier = "Mod4";
      startup = [
        {
          command = "${pkgs.autotiling}/bin/autotiling";
          always = true;
        }
      ];
      gaps = {
        inner = 9;
        outer = 9;
      };
      window = {
        titlebar = false;
      };
      input."type:keyboard" = {
        xkb_layout = "gb";
      };
      output.eDP-1 = {
        bg = "${../../../wallpapers/such-sweet-poetry_rosepine.png} fill";
      };
      bars = [
        {
          position = "top";
          command = "waybar";
        }
      ];
      colors = {
        focusedInactive = {
          background = "${rosePine.base}";
          inherit (rosePine) text;
          border = "${rosePine.surface}";
          indicator = "${rosePine.subtle}";
          childBorder = "${rosePine.surface}";
        };
        focused = {
          background = "${rosePine.base}";
          inherit (rosePine) text;
          border = "${rosePine.rose}";
          indicator = "${rosePine.rose}";
          childBorder = "${rosePine.rose}";
        };
        unfocused = {
          background = "${rosePine.base}";
          inherit (rosePine) text;
          border = "${rosePine.overlay}";
          indicator = "${rosePine.subtle}";
          childBorder = "${rosePine.overlay}";
        };
        urgent = {
          background = "${rosePine.base}";
          indicator = "${rosePine.love}";
          border = "${rosePine.love}";
          childBorder = "${rosePine.love}";
          inherit (rosePine) text;
        };
      };
      keybindings = let
        modifier = config.wayland.windowManager.sway.config.modifier;
      in
        lib.mkOptionDefault {
          "Print" = "exec ${pkgs.sway-contrib.grimshot}/bin/grimshot copy screen";
          "shift+Print" = "exec ${pkgs.sway-contrib.grimshot}/bin/grimshot copy area";
        };
    };
    extraConfig = ''
      corner_radius 7

      shadows enable
      shadow_blur_radius 10
      shadow_color ${rosePine.base}99
    '';
  };
}
