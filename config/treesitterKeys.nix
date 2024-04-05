{
  keymaps = [
    { key ="<leader>rn"; action="vim.lsp.buf.rename"; lua = true; options = { desc = "rename"; }; }
    { key ="<leader>ca"; action="vim.lsp.buf.code_action"; lua = true; options = { desc = "code action"; }; }
    { key ="<leader>gd"; action="vim.lsp.buf.definition"; lua = true; options = { desc = "goto definition"; }; }
    { key ="<leader>gr"; action="require('telescope.builtin').lsp_references"; lua = true; options = { desc = "goto references"; }; }
    { key ="<leader>gi"; action="vim.lsp.buf.implementation"; lua = true; options = { desc = "goto implementation"; }; }
    { key ="K"; action="vim.lsp.buf.hover"; lua = true; options = { desc = "Hover Documentation"; }; }
  ];
}

