{
  autoCmd = [
    {
      event = [ "BufWritePre" ];
      pattern = [ "*" ];
      command = "%s/\\s\\+$//e";
      desc = "trim trailing whitespace on save";
    }
    {
      event = [ "TextYankPost" ];
      # group = "highlight_group"; # not sure if this is correct
      pattern = [ "*" ];
      callback = { __raw = "function() vim.highlight.on_yank() end"; };
      desc = "Flash yanked text";
    }
  ];
}
