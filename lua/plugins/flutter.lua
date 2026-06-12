return {
  "nvim-flutter/flutter-tools.nvim",
  -- lazy = false, -- Load immediately to ensure LSP starts
  ft = { "dart" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("flutter-tools").setup({
      -- Let the plugin auto-detect the Flutter SDK from PATH/FVM.
      -- NOTE: Avoid overriding `flutter_lookup_cmd` with a non-path command.
      flutter_path = nil,
      -- flutter_lookup_cmd = nil, -- e.g. "dirname $(which flutter)" if you must override
      fvm = false, -- Set to true if using Flutter Version Management
      widget_guides = {
        enabled = true,
      },
      dev_log = {
        enabled = true,
        -- open_cmd = "tab split", -- Command to open the dev log
        open_cmd = "botright 12split",
      },
      dev_tools = { autostart = false, auto_open_browser = false },
      outline = {
        open_cmd = "30vsplit", -- Command to open the outline
        auto_open = false, -- Open outline manually to avoid startup stutter
      },
      lsp = {
        color = {
          enabled = true,
          background = true,
          background_color = nil,
          foreground = false,
          virtual_text = true,
        },
        settings = {
          showTodos = true,
          completeFunctionCalls = true,
          -- NOTE: analysisExcludedFolders requires ABSOLUTE paths.
          -- ${workspaceFolder} is a VS Code variable and does NOT expand in Neovim.
          -- dartls already excludes .dart_tool by default; only add absolute paths here if needed.
          analysisExcludedFolders = {},
        },
      },
      debugger = { enabled = false, run_via_dap = false },
    })
  end,
}
