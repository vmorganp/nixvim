{
  luaLoader.enable = true; # experimental loading stuff, idk seems fun
  opts = {
    number = true;
    undofile = true;
    relativenumber = false;
    tabstop = 4;
    shiftwidth = 4;
    softtabstop = 4;
    breakindent = true;
    # always use spaces instead of tabs
    expandtab = true;
    cursorline = true;
    mouse = "a";
    list = true;
    foldmethod = "indent";
    foldenable = true;
    foldlevelstart = 99;
    # bracket matching
    showmatch = true;
    wildmenu = true;
    wildmode = "longest:full,full";
    smartindent = true;
    wrap = false;
    linebreak = true;
    title = true;
    # always show the tab bar
    showtabline = 2;
    # keep n lines above and below the cursor
    scrolloff = 10;
    # keep n lines left and right of the cursor
    sidescrolloff = 10;
    # Sync clipboard with system
    clipboard = "unnamedplus";
    # Smart search case and other search improvements
    hlsearch = true;
    ignorecase = true;
    smartcase = true;
    # Better completion
    completeopt = "menuone,noselect";

    signcolumn = "yes";
    colorcolumn = "80";
  };
}
