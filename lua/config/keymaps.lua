-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
-- Flutter Development keymaps

vim.keymap.set("n", "<leader>tf", "<cmd>FlutterRun<cr>", { desc = "Flutter Run" })
vim.keymap.set("n", "<leader>td", "<cmd>FlutterDevices<cr>", { desc = "Flutter Devices" })
vim.keymap.set("n", "<leader>th", "<cmd>FlutterHotReload<cr>", { desc = "Flutter Hot Reload" })
vim.keymap.set("n", "<leader>tH", "<cmd>FlutterHotRestart<cr>", { desc = "Flutter Hot Restart" })
vim.keymap.set("n", "<leader>tt", "<cmd>TransparentToggle<cr>", { desc = "Toggle Transparency" })
vim.keymap.set("n", "<leader>tq", "<cmd>FlutterQuit<cr>", { desc = "Flutter Quit" })

--- Godot dev keymaps

-- vim.keymap.set("n", "<leader>gdn", "<cmd>FlutterQuit<cr>", { desc = "Flutter Quit" })
