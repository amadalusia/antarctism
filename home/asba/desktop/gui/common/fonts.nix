{pkgs, ...}: {
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    (nerdfonts.override {
      fonts = [
        "Recursive"
        "JetBrainsMono"
        "NerdFontsSymbolsOnly"
      ];
    })
  ];
}
