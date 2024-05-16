{inputs, pkgs, ...}: {
  imports = [
    inputs.nvf.homeManagerModules.default
  ];

  programs.nvf = {
    enable = true;
    settings = {
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

        visuals = {
          nvimWebDevicons.enable = true;
        };

        git = {
          enable = true;
          gitsigns.enable = true;
        };

        telescope.enable = true;

        ui = {
          noice.enable = true;
          borders = {
            enable = true;
            globalStyle = "rounded";
          };
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

        utility.motion = {
          hop.enable = true;
          leap.enable = true;
        };

        theme = {
          extraConfig = ''
            require("rose-pine").setup({
            	highlight_groups = {
            		TelescopeBorder = { fg = "highlight_high", bg = "none" },
            		TelescopeNormal = { bg = "none" },
            		TelescopePromptNormal = { bg = "base" },
            		TelescopeResultsNormal = { fg = "subtle", bg = "none" },
            		TelescopeSelection = { fg = "text", bg = "base" },
            		TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
            	},
            })
          '';
          enable = true;
          name = "rose-pine";
          style = "main";
        };

        tabline.nvimBufferline = {
          enable = true;
        };

        treesitter = {
          enable = true;
          context.enable = true;
          highlight.enable = true;
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
  };
}
