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
    zen-mode.enable = true;
    marks.enable = true; # qol marks plugin

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
      extensions.fzf-native.enable = true;
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
    todo-comments = {
      enable = true;
      keymaps.todoTelescope = { key = "<leader>td"; };
    };
    treesitter.enable = true;
    rainbow-delimiters.enable = true;

    leap = {
      enable = true;
      addDefaultMappings = false;
    };
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
                    ["<Tab>"] = cmp.mapping(function(fallback)
                      local luasnip = require("luasnip")
                      local has_words_before = function()
                          unpack = unpack or table.unpack
                          local line, col = unpack(vim.api.nvim_win_get_cursor(0))
                          return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
                      end
                      if cmp.visible() then
                        cmp.select_next_item()
                      -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
                      -- that way you will only jump inside the snippet region
                      elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                      elseif has_words_before() then
                        cmp.complete()
                      else
                        fallback()
                      end
                    end, { "i", "s" }),

                    ["<S-Tab>"] = cmp.mapping(function(fallback)
                      local luasnip = require("luasnip")
                      if cmp.visible() then
                        cmp.select_prev_item()
                      elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                      else
                        fallback()
                      end
                    end, { "i", "s" }),})
          '';
        };
      };
    };

    # Dark arts
    copilot-vim = {
      enable = true;
      settings = { "no_tab_map" = true; };
    };
  };
}
