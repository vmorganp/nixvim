{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        gopls.enable = true;
        golangci-lint-ls.enable = true;
        lua-ls.enable = true;
        pyright.enable = true;
        terraformls.enable = true;
        ts-ls.enable = true;

        rust-analyzer = {
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
