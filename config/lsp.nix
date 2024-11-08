{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        gopls.enable = true;
        golangci_lint_ls.enable = true;
        templ.enable = true;
        lua_ls.enable = true;
        pyright.enable = true;
        terraformls.enable = true;
        ts_ls.enable = true;

        # Web stuff
        svelte.enable = true;
        html.enable = true;
        htmx.enable = true;
        cssls.enable = true;
        eslint.enable = true;

        rust_analyzer = {
          enable = true;
          installRustc = true;
          installCargo = true;
        };
      };
    };

    lsp-format.enable = true;

    none-ls = {
      enable = true;
      enableLspFormat = true;
      sources = {
        diagnostics = {
          actionlint.enable = true;
          codespell.enable = true;
          mypy.enable = true;
          terraform_validate.enable = true;
        };
        formatting = {
          prettierd.enable = true;
          nixfmt.enable = true;
          black = {
            enable = true;
            settings = ''{extra_args = { "--line-length=120" }}'';
          };
          terraform_fmt.enable = true;
        };
      };

    };
  };
}
