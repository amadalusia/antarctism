{
  config,
  pkgs,
  lib,
  ...
}: {
  home.packages = with pkgs; [
    pamixer
  ];

  programs.waybar = {
    enable = true;
    settings = [{
      layer = "top";
      position = "top";
      mod = "dock";
      height = 52;
      spacing = 4;
      gtk-layer-shell = true;
      modules-left = ["clock" "tray" "sway/workspaces"];
      modules-center = ["sway/window"];
      modules-right = [
        "network"
        "temperature"
        "battery"
        "pulseaudio"
        "backlight"
      ];

      "sway/window" = {
        format = "{}";
        max-length = 40;
      };

      "sway/workspaces" = {
        disable-scroll = false;
        on-click = "activate";
        format = "{icon}";
        format-icons = {
          "1" = "一";
          "2" = "二";
          "3" = "三";
          "4" = "四";
          "5" = "五";
          "6" = "六";
          "7" = "七";
          "8" = "八";
          "9" = "八";
	  "10" = "十";
        };
      };

      "tray" = {
        icon-size = 18;
        spacing = 10;
      };

      "clock" = {
        format = "󰅐 {:%R, 󰃭 %d/%m}";
        tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
      };

      "backlight" = {
        device = "intel-backlight";
        format = "{icon} {percent}";
        format-icons = ["󰃞" "󰃟" "󰃠"];
        on-scroll-up = "brightnessctl set 1%+";
        on-scroll-down = "brightnessctl set 1%-";
        min-length = 6;
      };

      "battery" = {
        states = {
          good = 95;
          warning = 30;
          critical = 10;
        };
        format = "{icon} {capacity}%";
        format-charging = " {capacity}%";
        format-plugged = " {capacity}%";
        format-alt = "{time} {icon}";
        format-icons = ["󰂎" "󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󱈑"];
      };

      "pulseaudio" = {
        format = "{icon} {volume}";
        tooltip = false;
        format-muted = "󰝟";
        on-click = "pamixer -t";
        on-click-right = "pavucontrol";
        on-scroll-up = "pamixer -i 5";
        on-scroll-down = "pamixer -d 5";
        scroll-step = 5;
        format-icons = {
          headphone = "";
          hands-free = "";
          headset = "";
          phone = "";
          portable = "";
          car = "";
          default = ["" "" ""];
        };
      };

      "pulseaudio#microphone" = {
        format = "{format_source}";
        format-source = "󰍬 {volume}%";
        format-source-muted = "󰍭 Muted";
        on-click = "pamixer --default-source -t";
        on-scroll-up = "pamixer --default-source -i 5";
        on-scroll-down = "pamixer --default-source -i 5";
        scroll-step = 5;
      };

      "temparature" = {
        thermal-zone = 1;
        format = " {temperatureC}°C";
        critical-threshold = 80;
        format-critical = "{temperatureC}°C 󱗗";
      };

      "memory" = {
        interval = 30;
        format = "RAM {}%";
        max-length = 10;
        tooltip = true;
        tooltip-format = "Memory - {used:0.1f}GB used";
        on-click = "kitty --start-as=fullscreen --title btop sh -c 'btop'";
      };

      "network" = {
        format = "  {signalStrength}%";
        format-ethernet = "󰈁 {ipaddr}/{cidr} ";
        tooltip = "{essid} - {ifname} via {gwaddr}";
        format-linked = " {ifname} (No IP)";
        format-disconnected = " N/A";
        format-alt = "{ifname}:{essid} {ipaddr}/{cidr}";
      };
    }];
    style = ''
      @import "${./waybar/rose-pine.css}";

      ${builtins.readFile ./waybar/style.css}
    '';
  };
}
