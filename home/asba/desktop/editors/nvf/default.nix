{inputs, pkgs, ...}: {
  imports = [
    inputs.nvf.homeManagerModules.default
  ];

  programs.nvf = {
    enable = true;
    vim = {
      package = inputs.neovim-nightly-overlay.packages.${pkgs.system}.neovim;
      autoIndent = true;

      lsp = {
        enable = true;
        formatOnSave = true;
        lightbulb.enable = true;
        lspSignature.enable = true;
        lsplines.enable = true;
        lspconfig.enable = true;
        lspkind.enable = true;
        lspsaga.enable = true;
        null-ls.enable = true;
        nvimCodeActionMenu.enable = true;
      };

      git = {
        enable = true;
        gitisigns.enable = true;
      };

      ui = {
        noice.enable = true;
      };

      snippets.vsnip.enable = true;
      spellcheck.enable = true;

      startPlugins = [
        "plenary-nvim"
        "nui-nvim"
      ];
      
      autocomplete = {
        enable = true;
        type = "nvim-cmp";
      };

      statusline.lualine = {
        enable = true;
        icons.enable = true;
        theme = "auto";
      };

      theme = {
        name = "rose-pine";
        style = "main";
      };

      tabline.nvimBufferline = {
        enable = true;
      };

      languages = {
        nix.enable = true;
        ts.enable = true;
        rust.enable = true;
        python.enable = true;
        lua.enable = true;
        java.enable = true;
        go.enable = true;
        clang.enable = true;
        zig.enable = true;
      };
    };
  };
}
