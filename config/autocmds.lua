-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Disable auto-formatting globally
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = "*",
  callback = function()
    vim.b.autoformat = false
  end,
})

-- Autocmds for Markdown file settings
vim.api.nvim_create_autocmd({"FileType"}, {
  pattern = "markdown",
  callback = function()
    vim.wo.colorcolumn = "81"
    vim.bo.textwidth = 80
  end,
})
