{
  imports = [
    ./lsp.nix
    ./options.nix
    ./colors.nix
    ./plugins.nix
    ./keybinds.nix
    ./treesitterKeys.nix
    ./autocmds.nix
  ];
  enableMan = true;

  extraConfigLuaPost = "vim.cmd [[:let g:copilot_enabled = 0]]";
}
