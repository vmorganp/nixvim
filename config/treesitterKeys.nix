{
  keymaps = [
    {
      key = "<leader>rn";
      action.__raw = "vim.lsp.buf.rename";
      options = { desc = "rename"; };
    }
    {
      key = "<leader>ca";
      action.__raw = "vim.lsp.buf.code_action";
      options = { desc = "code action"; };
    }
    {
      key = "<leader>gd";
      action.__raw = "vim.lsp.buf.definition";
      options = { desc = "goto definition"; };
    }
    {
      key = "<leader>gr";
      action.__raw = "require('telescope.builtin').lsp_references";
      options = { desc = "goto references"; };
    }
    {
      key = "<leader>gi";
      action.__raw = "vim.lsp.buf.implementation";
      options = { desc = "goto implementation"; };
    }
    {
      key = "K";
      action.__raw = "vim.lsp.buf.hover";
      options = { desc = "Hover Documentation"; };
    }
  ];
}
