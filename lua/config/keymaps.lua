-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "<C-f>", "<Right>", { desc = "Insert Mode: Move Right" })
vim.keymap.set("i", "<C-b>", "<Left>", { desc = "Insert Mode: Move Left" })
vim.keymap.set("i", "<C-a>", "<C-o>^", { desc = "Insert Mode: Move to Start of Line" })
vim.keymap.set("i", "<C-e>", "<C-o>$", { desc = "Insert Mode: Move to End of Line" })
vim.keymap.set("c", "<C-f>", "<Right>", { desc = "Command Mode: Move Right" })
vim.keymap.set("c", "<C-b>", "<Left>", { desc = "Command Mode: Move Left" })
vim.keymap.set("c", "<C-a>", "<C-o>^", { desc = "Command Mode: Move to Start of Line" })
vim.keymap.set("c", "<C-e>", "<C-o>$", { desc = "Command Mode: Move to End of Line" })
vim.keymap.set("n", "<C-e>", "$", { desc = "Normal Mode: Move to End of Line" })
