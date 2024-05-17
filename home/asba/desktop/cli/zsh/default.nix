_: {
  imports = [
    ./aliases.nix
  ];

  programs.zsh = {
    enable = true;
    autocd = true;
    antidote = {
      enable = true;
      plugins = [
        "Aloxaf/fzf-tab"
        "zdharma-continuum/fast-syntax-highlighting"
        "zsh-users/zsh-autosuggestions"
        "zsh-users/zsh-history-substring-search"
      ];
    };
    initExtra = ''
      ${builtins.readFile ./functions.zsh}
    '';
  };
}
