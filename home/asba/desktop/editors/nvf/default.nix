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

        visuals = {
          enable = true;
          nvimWebDevicons.enable = true;
          smoothScroll.enable = true;
          cellularAutomaton.enable = false;
          fidget-nvim.enable = true;
          highlight-undo.enable = true;

          indentBlankline = {
            enable = true;
            fillChar = null;
            eolChar = null;
            scope = {
              enabled = true;
            };
          };
          cursorline = {
            enable = true;
            lineTimeout = 0;
          };
        };

        debugger.nvim-dap = {
          enable = true;
          ui.enable = true;
        };

        ui = {
          noice.enable = true;
          borders.enable = true;
        };

        autocomplete = {
          enable = true;
          type = "nvim-cmp";
        };

        startPlugins = [
          "nui-nvim"
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
          python.enable = true;
          lua.enable = true;

          zig = {
            enable = true;
            lsp.enable = true;
          };

          nix = {
            enable = true;
            extraDiagnostics.enable = true;
            format.enable = true;
            lsp.enable = true;
          };
        };

        statusline.lualine = {
          enable = true;
          theme = "auto";
        };

        notify.nvim-notify = {
          enable = true;
        };

        treesitter = {
          fold = true;
        };

        theme = {
          enable = true;
          name = "rose-pine";
          style = "main";
          transparent = false;
        };

        visuals.
        filetree.nvimTree.enable = true;
        autopairs.enable = true;
      };
    };
  };
}
