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
      inherit (inputs.nix-direnv.${pkgs.system}.nix-direnv) package;
    };
  };
}
