{
  inputs,
  pkgs,
  ...
}: {
  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    nix-direnv = {
      enable = true;
      package = inputs.nix-direnv.packages.${pkgs.system}.nix-direnv;
    };
  };
}
