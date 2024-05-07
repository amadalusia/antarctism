{
  config,
  pkgs,
  lib,
  ...
}: {
  xdg.mimeApps.enable = true;
  xdg.mime.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-wlr
      xdg-desktop-portal-gtk
    ];
    config = {
      common = {
        default = [ "wlr" "gtk" ];
      };
    };
  };
}
