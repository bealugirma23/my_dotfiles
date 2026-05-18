return {
  "okuuva/auto-save.nvim",
  cmd = "ASToggle",
  event = { "InsertLeave", "TextChanged" },
  opts = {
    enabled = true,
    execution_message = {
      message = function()
        return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
      end,
    },
  },
}
