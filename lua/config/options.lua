-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.cmd("set number")
vim.cmd("set relativenumber")
vim.opt.relativenumber = true

-- Transparency overrides
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
    vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
  end
end

-- Apply on start and after any colorscheme change
set_transparent()
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = set_transparent,
})
