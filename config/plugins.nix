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

    # Applications/Extensions? I guess
    telescope = {
      enable = true;
      extraOptions = {
        pickers = {
          find_files = { hidden = true; };
          # live_grep = {
          #     additional_args = function(opts)
          #         return { "--hidden" }
          #     end
          # };
        };
        defaults = {
          file_ignore_patterns = [ ".git/" "node_modules" "venv" ];
        };
      };
    };
    # TODO add keybinds
    harpoon.enable = true;
    chadtree.enable = true;

    markdown-preview.enable = true;

    # Git stuff

    fugitive.enable = true;
    gitgutter.enable = true;

    # Autocomplete/lsp
    cmp_luasnip.enable = true;
    cmp-nvim-lsp.enable = true;

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
