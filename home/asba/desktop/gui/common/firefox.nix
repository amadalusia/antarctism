{pkgs, ...}: {
  programs.firefox = {
    enable = true;
    profiles.default = {
      extensions = with pkgs.nur.repos.rycee.firefox-addons; [
        bitwarden
        firefox-color
        ublock-origin
      ];
      settings = {
        "extensions.autoDisableScopes" = 0;
      };
      bookmarks = [
        {
          name = "NVF Manual";
          url = "https://notashelf.github.io/nvf/options.html";
          keyword = "nvf";
        }
        {
          name = "HM Options";
          url = "https://home-manager-options.extranix.com";
          keyword = "hm";
        }
        {
          name = "NixOS Search";
          tags = ["nixos" "nix"];
          keyword = "nixos";
          url = "https://search.nixos.org";
        }
        {
          name = "GitHub";
          url = "https://github.com";
        }
      ];
    };
  };
}
