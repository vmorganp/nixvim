let base16ColorFile = /home/morgan/.config/stylix/generated.json;
in {
  colorschemes = if builtins.pathExists base16ColorFile then {
    base16 = {
      enable = true;
      colorscheme =
        let jsonData = builtins.fromJSON (builtins.readFile base16ColorFile);
        in {
          base00 = "#${jsonData.base00}";
          base01 = "#${jsonData.base01}";
          base02 = "#${jsonData.base02}";
          base03 = "#${jsonData.base03}";
          base04 = "#${jsonData.base04}";
          base05 = "#${jsonData.base05}";
          base06 = "#${jsonData.base06}";
          base07 = "#${jsonData.base07}";
          base08 = "#${jsonData.base08}";
          base09 = "#${jsonData.base09}";
          base0A = "#${jsonData.base0A}";
          base0B = "#${jsonData.base0B}";
          base0C = "#${jsonData.base0C}";
          base0D = "#${jsonData.base0D}";
          base0E = "#${jsonData.base0E}";
          base0F = "#${jsonData.base0F}";
        };
    };
  } else {
    ayu.enable = true;
  };
}
