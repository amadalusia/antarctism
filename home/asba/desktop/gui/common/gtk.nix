{pkgs, ...}: {
  gtk = {
    enable = true;
    font = {
      name = "Dosis";
      package = pkgs.dosis;
      size = 11;
    };
    theme = {
      package = pkgs.rose-pine-gtk-theme;
      name = "oomox-rose-pine";
    };
    iconTheme = {
      package = pkgs.rose-pine-icon-theme;
      name = "rose-pine-icons";
    };
    cursorTheme = {
      package = pkgs.vanilla-dmz;
      name = "Vanilla-DMZ";
    };
  };
}
