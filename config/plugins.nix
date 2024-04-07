{
  plugins = {
    # Quality of life
    lualine.enable = true;
    which-key.enable = true;
    comment.enable = true;
    bufferline = {
      enable = true;
      separatorStyle = "slant";
    };
    autoclose.enable = true;
    nvim-lightbulb.enable = true;

    # Applications/Extensions? I guess
    telescope = {
      enable = true;
      extraOptions = {
        pickers = {
          find_files = { hidden = true; };
          live_grep = { additional_args = [ "--hidden" ]; };
        };
      };
      defaults = { file_ignore_patterns = [ ".git/" "node_modules" "venv" ]; };
    };

    harpoon = {
      enable = true;
      keymaps = {
        addFile = "<leader>ha";
        toggleQuickMenu = "<leader>hs";
        navFile = {
          "1" = "<leader>h1";
          "2" = "<leader>h2";
          "3" = "<leader>h3";
          "4" = "<leader>h4";
          "5" = "<leader>h5";
        };
      };
    };

    chadtree.enable = true;
    markdown-preview.enable = true;
    surround.enable = true;
    todo-comments.enable = true;
    rainbow-delimiters.enable = true;

    leap.enable = true;
    nvim-colorizer.enable = true;

    # Git stuff

    fugitive.enable = true;
    gitsigns.enable = true;

    # Autocomplete/lsp/snippets
    luasnip.enable = true;
    cmp_luasnip.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-path.enable = true;
    friendly-snippets.enable = true;

    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        sources = [
          { name = "nvim_lsp"; }
          { name = "path"; }
          { name = "buffer"; }
          { name = "luasnip"; }
        ];

        mapping = {
          __raw = ''
            cmp.mapping.preset.insert({
                    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-Space>'] = cmp.mapping.complete {},
                    ['<CR>'] = cmp.mapping.confirm {
                    behavior = cmp.ConfirmBehavior.Replace,
                    select = false,
                    },
                    ['<Tab>'] = cmp.mapping(function(fallback)
                            if cmp.visible() then
                            cmp.select_next_item()
                            elseif luasnip.expand_or_jumpable() then
                            luasnip.expand_or_jump()
                            else
                            fallback()
                            end
                            end, { 'i', 's' }),
                    ['<S-Tab>'] = cmp.mapping(function(fallback)
                            if cmp.visible() then
                            cmp.select_prev_item()
                            elseif luasnip.jumpable(-1) then
                            luasnip.jump(-1)
                            else
                            fallback()
                            end
                            end, { 'i', 's' }),
            })
          '';
        };
      };
    };
  };
}
