{ ... }: {
  programs.zsh = {
    shellAliases = {
      "ll" = "eza -la";
      "ls" = "eza -a";
      "rebuild-and-test" = "sudo nixos-rebuild test --flake ~/.dotfiles#pluto";
      "rebuild-and-switch" = "sudo nixos-rebuild switch --flake ~/.dotfiles#pluto";
    };
  };
}
