{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./aliases.nix
  ];

  programs.zsh = {
    enable = true;
    autocd = true;
    antidote = {
      enable = true;
      plugins = [
	"romkatv/powerlevel10k"
        "zdharma-continuum/fast-syntax-highlighting"
      ];
    };
    initExtra = ''
      [[ ! -f ${./p10k.zsh} ]] || source ${./p10k.zsh}
    '';
  };
}
