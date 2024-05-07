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
    # package = pkgs.swayfx; 
  };
}
