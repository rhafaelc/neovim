{ pkgs, ... }:

{
 vim = {
    theme = {
      enable = true;
      name = "catppuccin";
      style = "mocha";
      transparent = true;
    };

    statusline.lualine.enable = true;
    telescope.enable = true;
    autocomplete.nvim-cmp.enable = true;

    languages = {
      enableLSP = true;
      enableTreesitter = true;

      nix.enable = true;
      ts.enable = true;
      python.enable = true;
      go.enable = true;
     };

    extraPlugins = with pkgs.vimPlugins; {
      vim-be-good = {
        package = vim-be-good;
      };
    };
  };
}