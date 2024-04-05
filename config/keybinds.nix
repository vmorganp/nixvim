{
  globals.mapleader = " ";
  keymaps = [
# Basics
  { key = "<leader>fs"; action = "<cmd>:w<CR>"; options = { desc = "save"; }; }
  { key = "<leader>fS"; action = "<cmd>:noautocmd w<CR>"; options = { desc = "save without formatting"; }; }
  { key = "<leader>qq"; action = "<cmd>:conf qa<CR>"; options = { desc = "quit"; }; }
  { key = "<leader>ff"; action = "function() vim.lsp.buf.format() end"; lua = true; options = { desc = "format"; }; }

# Telescope stuff
  { key = "<leader>sf"; action = "<cmd>Telescope find_files<CR>"; options = { desc = "find files"; }; }
  { key = "<leader>sc"; action = "require('telescope.builtin').commands"; lua = true; options = { desc = "search commands"; }; }
  { key = "<leader>sk"; action = "require('telescope.builtin').keymaps"; lua = true; options = { desc = "search keymaps"; }; }
  { key = "<leader>sb"; action = "require('telescope.builtin').buffers"; lua = true; options = { desc = "search buffers"; }; }
  { key = "<leader>sp"; action = "require('telescope.builtin').quickfix"; lua = true; options = { desc = "search problems"; }; }
  { key = "<leader>sh"; action = "require('telescope.builtin').help_tags"; lua = true; options = { desc = "search help documents"; }; }
  { key = "<leader>sg"; action = "require('telescope.builtin').live_grep"; lua = true; options = { desc = "search dir"; }; }
  { key = "<leader>sm"; action = "require('telescope.builtin').marks"; lua = true; options = { desc = "search marks"; }; }
  { key = "<leader>sr"; action = "require('telescope.builtin').resume"; lua = true; options = { desc = "search resume"; }; }
  { key = "<leader>sd"; action = "require('telescope.builtin').diagnostics"; lua = true; options = { desc = "search diagnostics"; }; }
  { key = "<leader>?"; action = "require('telescope.builtin').oldfiles"; lua = true; options = { desc = "search recent files"; }; }
  { key = "<leader><space>"; action = "require('telescope.builtin').buffers"; lua = true; options = { desc = "search buffers"; }; }
  { key = "<leader>/"; action = "require('telescope.builtin').current_buffer_fuzzy_find"; lua = true; options = { desc = "search current buffer"; }; }

# Toggles
  { key = "<leader>Tw"; action = "<cmd>:set wrap!<CR>"; options = { desc = "toggle word wrap"; }; }
  { key = "<leader>Tn"; action = "<cmd>:set number!<CR>"; options = { desc = "toggle line numbers"; }; }
  { key = "<leader>"; action = ""; options = { desc = ""; }; }

# tabs
    { key ="<leader>tc"; action="<cmd>:tabnew<CR>"; options = { desc = "create tab"; }; }
    { key ="<leader>th"; action="<cmd>:tabprevious<CR>"; options = { desc = "tab left"; }; }
    { key ="<leader>tl"; action="<cmd>:tabnext<CR>"; options = { desc = "tab next"; }; }
    { key ="<leader>tn"; action="<cmd>:tabnext<CR>"; options = { desc = "tab next"; }; }

# windows
    { key ="<leader>wj"; action="<C-w>j"; options = { desc = "window down"; }; }
    { key ="<leader>wk"; action="<C-w>k"; options = { desc = "window up"; }; }
    { key ="<leader>wl"; action="<C-w>l"; options = { desc = "window right"; }; }
    { key ="<leader>wh"; action="<C-w>h"; options = { desc = "window left"; }; }
    { key ="<leader>wM"; action="<cmd>:only<CR>"; options = { desc = "window maximize"; }; }

# buffers
    { key ="<leader>bk"; action="<cmd>:bd<CR>"; options = { desc = "buffer kill"; }; }
    { key ="<leader>bn"; action="<cmd>:bnext<CR>"; options = { desc = "buffer next"; }; }
    { key ="<leader>bl"; action="<cmd>:b#<CR>"; options = { desc = "buffer last (toggle between)"; }; }
    { key ="<leader>bp"; action="<cmd>:bprev<CR>"; options = { desc = "buffer previous"; }; }
    { key ="<leader>be"; action="<cmd>:enew!<CR>"; options = { desc = "buffer empty"; }; }
    { key ="<leader>bo"; action=''<cmd>:%bd|e#|bd#|normal `"<CR>''; options = { desc = "buffer only (close all others)"; }; }

# quickfix
    { key ="<leader>td"; action="<cmd>:TodoTelescope<CR>"; options = { desc = "Quickfix List"; }; }
    { key ="<leader>ql"; action="<cmd>:copen<CR>"; options = { desc = "Quickfix List"; }; }
    { key ="<leader>qp"; action="<cmd>:cprevious<CR>zz"; options = { desc = "Quickfix Previous"; }; }
    { key ="<leader>qn"; action="<cmd>:cnext<CR>zz"; options = { desc = "Quickfix Next"; }; }
    { key ="<leader>qc"; action="<cmd>:cexpr []<CR>"; options = { desc = "Quickfix Clear"; }; }

# git
    { key ="<leader>gg"; action="<cmd>:Git<CR>"; options = { desc = "git"; }; }
    { key ="<leader>gb"; action="<cmd>:Git blame<CR>"; options = { desc = "git blame"; }; }
    { key ="<leader>gs"; action="<cmd>:Gvdiffsplit<CR>"; options = { desc = "git diff split"; }; }
    { key ="<leader>gp"; action="<cmd>:Git push origin HEAD<CR>"; options = { desc = "Git push head"; }; }

# Tree
    { key ="<leader>ot"; action="<cmd>:Oil --float<CR>"; options = { desc = "Toggle File Tree"; }; }
  ];
}

