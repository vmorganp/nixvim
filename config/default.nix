{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./colors.nix
    ./plugins.nix
    ./keybinds.nix
  ];

# enable manual
  enableMan = true;

# Plugins

  plugins.bufferline.enable = true;

  plugins.lsp = {
    enable = true;
    servers = {
      tsserver.enable=true;
      lua-ls.enable=true;
      nixd.enable=true; # nix
# rust
      rust-analyzer = {
        enable = true;
        installRustc = true;
        installCargo = true;
      };
    };
  };

}
