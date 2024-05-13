# Custom packages, that can be defined similarly to ones from nixpkgs
# You can build them using 'nix build .#example'
pkgs: {
  # example = pkgs.callPackage ./example { };
  rose-pine-gtk = (pkgs.callPackage ./rose-pine.nix {}).gtk-theme;
}
