return {
  "gruvbox-community/gruvbox",
  "catppuccin/nvim",
  "rebelot/kanagawa.nvim",
  "elvessousa/sobrio",
  "ray-x/aurora",
  "EdenEast/nightfox.nvim",
  "liuchengxu/space-vim-dark",
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
