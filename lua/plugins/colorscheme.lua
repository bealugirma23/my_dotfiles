local function set_transparent()
  local groups = {
    "Normal",
    "NormalNC",
    "SignColumn",
    "StatusLine",
    "StatusLineNC",
    "EndOfBuffer",
    "MsgArea",
    "NormalFloat",
    "FloatBorder",
  }
  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
  end
end

return {
  {
    "gruvbox-community/gruvbox",
    lazy = false,
    priority = 1000,
    init = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = set_transparent,
      })
    end,
  },
  { "catppuccin/nvim", lazy = true },
  { "rebelot/kanagawa.nvim", lazy = true },
  { "elvessousa/sobrio", lazy = true },
  { "ray-x/aurora", lazy = true },
  { "EdenEast/nightfox.nvim", lazy = true },
  { "liuchengxu/space-vim-dark", lazy = true },
  {
    "folke/tokyonight.nvim",
    lazy = true,
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
