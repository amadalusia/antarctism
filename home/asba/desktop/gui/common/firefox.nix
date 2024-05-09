{
  config,
  pkgs,
  lib,
  ...
}: {
  programs.firefox = {
    profiles.default = {
      extensions = with pkgs.nur.repos.rycee.firefox-addons; [
        bitwarden
      ];
      settings = {
        "extensions.autoDisableScopes" = 0;
      };
    };
  };
}
