-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Cycle through buffers with Ctrl-Tab and Ctrl-Shift-Tab
vim.api.nvim_set_keymap("n", "<C-Tab>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-S-Tab>", ":bprev<CR>", { noremap = true, silent = true })

-- Close the current buffer with Ctrl-w
vim.api.nvim_set_keymap("n", "<C-w>", ":bd<CR>", { noremap = true, silent = true })
-- Open a new empty buffer with Ctrl-n (or choose your preferred keybinding)
vim.api.nvim_set_keymap("n", "<C-n>", ":enew<CR>", { noremap = true, silent = true })

-- this requires xclip installed
-- Copy text to clipboard
vim.api.nvim_set_keymap("n", "<C-S-c>", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-S-c>", '"+y', { noremap = true, silent = true })

-- this requires xclip installed
-- Paste text from clipboard
vim.api.nvim_set_keymap("n", "<C-S-v>", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-S-v>", "<C-R>+", { noremap = true, silent = true })
