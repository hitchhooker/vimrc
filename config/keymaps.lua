-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Buffer navigation
vim.keymap.set("n", "<C-Tab>", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-S-Tab>", ":bprev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-w>", ":bd<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-n>", ":enew<CR>", { noremap = true, silent = true })

-- Clipboard operations (requires xclip)
vim.keymap.set({ "n", "v" }, "<C-S-c>", '"+y', { noremap = true, silent = true })
vim.keymap.set("n", "<C-S-v>", '"+p', { noremap = true, silent = true })
vim.keymap.set("i", "<C-S-v>", "<C-R>+", { noremap = true, silent = true })

-- Wrap current line
vim.keymap.set("n", "<leader>w", "gqq", { noremap = true, silent = true, desc = "Wrap current line" })

-- Restore q for macro recording (will be applied after plugins load)
vim.defer_fn(function()
  pcall(vim.keymap.del, "n", "q")
  pcall(vim.keymap.del, "x", "q")
end, 500)
