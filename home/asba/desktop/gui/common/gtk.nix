{pkgs, ...}: {
  gtk = {
    enable = true;
    font = {
      name = "Dosis";
      package = pkgs.dosis;
      size = 11;
    };
    theme = {
      package = pkgs.rose-pine-gtk;
      name = "RosePine-Main-BL";
    };
    iconTheme = {
      package = pkgs.rose-pine-gtk;
      name = "Rose-Pine";
    };
    cursorTheme = {
      package = pkgs.vanilla-dmz;
      name = "Vanilla-DMZ";
    };
  };

  home.pointerCursor = {
    package = pkgs.vanilla-dmz;
    name = "Vanilla-DMZ";
  };
}
