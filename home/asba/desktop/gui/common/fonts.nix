{pkgs, ...}: {
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    dosis
    (nerdfonts.override {
      fonts = [
        "SourceCodePro"
        "JetBrainsMono"
        "NerdFontsSymbolsOnly"
      ];
    })
  ];
}
