{pkgs, ...}: {
  xdg = {
    mimeApps.enable = true;
    mime.enable = true;
    portal = {
      enable = true;
      extraPortals = with pkgs; [
        xdg-desktop-portal-wlr
        xdg-desktop-portal-gtk
      ];
      config = {
        common = {
          default = ["wlr" "gtk"];
        };
      };
    };
  };
}
