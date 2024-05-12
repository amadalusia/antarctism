{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.nvf.homeManagerModules.default
  ];

  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        package = inputs.neovim-nightly-overlay.packages.${pkgs.system}.neovim;
        viAlias = true;
        vimAlias = true;
        lsp = {
          formatOnSave = true;
          lspkind.enable = false;
          lightbulb.enable = true;
          lspsaga.enable = false;
          nvimCodeActionMenu.enable = true;
          trouble.enable = true;
          lspSignature.enable = true;
          lsplines.enable = true;
          nvim-docs-view.enable = true;
          enable = true;
        };

        debugger.nvim-dap = {
          enable = true;
          ui.enable = true;
        };

        ui = {
          noice.enable = true;
        };

        startPlugins = [
          "plenary-nvim"
        ];

        binds = {
          whichKey.enable = true;
          cheatsheet.enable = true;
        };

        comments.comment-nvim.enable = true;

        telescope.enable = true;
        git.gitsigns.enable = true;
        snippets.vsnip.enable = true;

        languages = {
          enableLSP = true;
          enableFormat = true;
          enableTreesitter = true;
          enableExtraDiagnostics = true;

          rust.enable = true;
          clang.enable = true;
          go.enable = true;
          nix.enable = true;
          python.enable = true;
          lua.enable = true;

          zig = {
            enable = true;
            lsp.enable = true;
          };
        };

        notify.nvim-notify = {
          enable = true;
        };

        theme = {
          enable = true;
          name = "rose-pine";
          style = "main";
          transparent = false;
        };

        visuals.cursorline = {
          enable = true;
          lineTimeout = 0;
        };

        filetree.nvimTree.enable = true;
        autopairs.enable = true;
      };
    };
  };
}
