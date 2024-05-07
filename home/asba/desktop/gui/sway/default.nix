{
  config,
  inputs,
  pkgs,
  lib,
  ...
}: {
  imports = [
    ../common
    ./settings.nix
  ];

  home.packages = with pkgs; [
    sway-contrib.grimshot
    blueberry
    kooha
  ];
  
  services = {
    udiskie.enable = true;
    network-manager-applet.enable = true;
  };

  wayland.windowManager.sway = {
    enable = true;
    checkConfig = false;
    xwayland = true;
    package = inputs.swayfx.packages.${pkgs.system}.swayfx-unwrapped; 
    systemd.enable = true;
    wrapperFeatures.gtk = true;
    extraSessionCommands = ''
      export SDL_VIDEODRIVER=wayland
      export QT_QPA_PLATFORM=wayland
      export _JAVA_AWT_WM_NONREPARENTING=1
    '';
  };
}
