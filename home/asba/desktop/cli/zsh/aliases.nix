_: {
  programs.zsh = {
    shellAliases = {
      "rbt" = "sudo nixos-rebuild test --flake ~/.dotfiles#pluto";
      "rbs" = "sudo nixos-rebuild switch --flake ~/.dotfiles#pluto";
      "nr" = "nix run";
      "ns" = "nix shell";
      "nd" = "nix develop";
      "lg" = "lazygit";
    };
  };
}
