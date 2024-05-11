{inputs, ...}: {
  imports = [
    inputs.nvf.homeManagerModules.default
  ];

  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        viAlias = true;
        vimAlias = true;
        lsp = {
          enable = true;
        };
        languages = {
          zig = {
            enable = true;
            lsp.enable = true;
          };
          rust.enable = true;
          clang.enable = true;
          go.enable = true;
          nix.enable = true;
          python.enable = true;
          lua.enable = true;
        };
      };
    };
  };
}
