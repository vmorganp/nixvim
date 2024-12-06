{
  globals.mapleader = " ";
  keymaps = [
    # Basics
    {
      key = "<leader>fs";
      action = "<cmd>:w<CR>";
      options = { desc = "save"; };
    }
    {
      key = "<leader>fS";
      action = "<cmd>:noautocmd w<CR>";
      options = { desc = "save without formatting"; };
    }
    {
      key = "<leader>qq";
      action = "<cmd>:conf qa<CR>";
      options = { desc = "quit"; };
    }
    {
      key = "<leader>ff";
      action.__raw = "function() vim.lsp.buf.format() end";
      options = { desc = "format"; };
    }
    {
      key = "<leader>Tf";
      action = "<cmd>:FormatToggle<CR>";
      options = { desc = "Toggle Formatting"; };
    }

    # Telescope stuff
    {
      key = "<leader>sf";
      action = "<cmd>Telescope find_files<CR>";
      options = { desc = "find files"; };
    }
    {
      key = "<leader>sc";
      action.__raw = "require('telescope.builtin').commands";
      options = { desc = "search commands"; };
    }
    {
      key = "<leader>sk";
      action.__raw = "require('telescope.builtin').keymaps";
      options = { desc = "search keymaps"; };
    }
    {
      key = "<leader>sb";
      action.__raw = "require('telescope.builtin').buffers";
      options = { desc = "search buffers"; };
    }
    {
      key = "<leader>sp";
      action.__raw = "require('telescope.builtin').quickfix";
      options = { desc = "search problems"; };
    }
    {
      key = "<leader>sh";
      action.__raw = "require('telescope.builtin').help_tags";
      options = { desc = "search help documents"; };
    }
    {
      key = "<leader>sg";
      action.__raw = "require('telescope.builtin').live_grep";
      options = { desc = "search dir"; };
    }
    {
      key = "<leader>sm";
      action.__raw = "require('telescope.builtin').marks";
      options = { desc = "search marks"; };
    }
    {
      key = "<leader>sr";
      action.__raw = "require('telescope.builtin').resume";
      options = { desc = "search resume"; };
    }
    {
      key = "<leader>sd";
      action.__raw = "require('telescope.builtin').diagnostics";
      options = { desc = "search diagnostics"; };
    }
    {
      key = "<leader>e";
      action.__raw = "vim.diagnostic.open_float";
      options = { desc = "show error float"; };
    }
    {
      key = "<leader>?";
      action.__raw = "require('telescope.builtin').oldfiles";
      options = { desc = "search recent files"; };
    }
    {
      key = "<leader><space>";
      action.__raw = "require('telescope.builtin').buffers";
      options = { desc = "search buffers"; };
    }
    {
      key = "<leader>/";
      action.__raw = "require('telescope.builtin').current_buffer_fuzzy_find";
      options = { desc = "search current buffer"; };
    }
    {
      key = "s";
      action.__raw = "function() require('flash').jump() end";
      options = { desc = "jump"; };
      mode = [ "n" ];
    }

    # Toggles
    {
      key = "<leader>Tw";
      action = "<cmd>:set wrap!<CR>";
      options = { desc = "toggle word wrap"; };
    }
    {
      key = "<leader>Tf";
      action = "<cmd>:Twilight<CR>";
      options = { desc = "[Toggle] [Fade]"; };
    }
    {
      key = "<leader>Tn";
      action.__raw = ''
        function()
          vim.o.number = not vim.o.number
          vim.o.signcolumn = vim.o.number and "yes" or "no"
        end'';
      options = { desc = "toggle line numbers"; };
    }

    # tabs
    {
      key = "<leader>tc";
      action = "<cmd>:tabnew<CR>";
      options = { desc = "create tab"; };
    }
    {
      key = "<leader>th";
      action = "<cmd>:tabprevious<CR>";
      options = { desc = "tab left"; };
    }
    {
      key = "<leader>tl";
      action = "<cmd>:tabnext<CR>";
      options = { desc = "tab next"; };
    }
    {
      key = "<leader>tn";
      action = "<cmd>:tabnext<CR>";
      options = { desc = "tab next"; };
    }

    # windows
    {
      key = "<leader>wj";
      action = "<C-w>j";
      options = { desc = "window down"; };
    }
    {
      key = "<leader>wk";
      action = "<C-w>k";
      options = { desc = "window up"; };
    }
    {
      key = "<leader>wl";
      action = "<C-w>l";
      options = { desc = "window right"; };
    }
    {
      key = "<leader>wh";
      action = "<C-w>h";
      options = { desc = "window left"; };
    }
    {
      key = "<leader>wM";
      action = "<cmd>:only<CR>";
      options = { desc = "window maximize"; };
    }

    # buffers
    {
      key = "<leader>bk";
      action = "<cmd>:confirm bd<CR>";
      options = { desc = "buffer kill"; };
    }
    {
      key = "<leader>bn";
      action = "<cmd>:bnext<CR>";
      options = { desc = "buffer next"; };
    }
    {
      key = "<leader>bl";
      action = "<cmd>:b#<CR>";
      options = { desc = "buffer last (toggle between)"; };
    }
    {
      key = "<leader>bp";
      action = "<cmd>:bprev<CR>";
      options = { desc = "buffer previous"; };
    }
    {
      key = "<leader>be";
      action = "<cmd>:enew!<CR>";
      options = { desc = "buffer empty"; };
    }
    {
      key = "<leader>bo";
      action = ''<cmd>:%bd|e#|bd#|normal `"<CR>'';
      options = { desc = "buffer only (close all others)"; };
    }

    # quickfix
    {
      key = "<leader>ql";
      action = "<cmd>:copen<CR>";
      options = { desc = "Quickfix List"; };
    }
    {
      key = "<leader>qp";
      action = "<cmd>:cprevious<CR>zz";
      options = { desc = "Quickfix Previous"; };
    }
    {
      key = "<leader>qn";
      action = "<cmd>:cnext<CR>zz";
      options = { desc = "Quickfix Next"; };
    }
    {
      key = "<leader>qc";
      action = "<cmd>:cexpr []<CR>";
      options = { desc = "Quickfix Clear"; };
    }

    # git
    {
      key = "<leader>gg";
      action = "<cmd>:Git<CR>";
      options = { desc = "git"; };
    }
    {
      key = "<leader>gb";
      action = "<cmd>:Git blame<CR>";
      options = { desc = "show git blame"; };
    }
    {
      key = "<leader>gs";
      action = "<cmd>:Gvdiffsplit<CR>";
      options = { desc = "git diff split"; };
    }
    {
      key = "<leader>gp";
      action = "<cmd>:Git push origin HEAD<CR>";
      options = { desc = "Git push head"; };
    }

    # Tree
    {
      key = "<leader>ot";
      action = "<cmd>:NvimTreeFindFileToggle<CR>";
      options = { desc = "Toggle File Tree"; };
    }

    # Random stuff
    {
      key = "<leader>mp";
      action = "<cmd>:MarkdownPreview<CR>";
      options = { desc = "Markdown Preview"; };
    }

    # Cope ilot
    {
      key = "<C-c>";
      action = "<cmd>:Copilot suggestion accept<CR>";
      # This is a little jank, in that it types out keycodes. nixvim doesn't currently have the override for this
      options = {
        desc = "Copilot Accept";
        silent = true;
        # expr = true;
      };
      mode = [ "i" ];
    }

    {
      key = "<M-Bslash>";
      action = "<cmd>:Copilot suggestion next<CR>";
      # This is a little jank, in that it types out keycodes. nixvim doesn't currently have the override for this
      options = {
        desc = "Copilot Suggest";
        silent = true;
      };
      mode = [ "i" ];
    }

  ];
}
