-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Disable auto-formatting globally
vim.api.nvim_create_autocmd({ "BufWinEnter", "BufRead", "BufNewFile" }, {
  pattern = "*",
  callback = function()
    vim.b.autoformat = false
  end,
})

-- Ensure no auto-format command is run on save, regardless of filetype
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    if vim.b.autoformat == false then
      -- Prevent any formatting command from executing
      return
    end
    -- Here you could place a conditional formatting command,
    -- which would only run if vim.b.autoformat is not false.
  end,
})

-- Autocmds for Markdown file settings
vim.api.nvim_create_autocmd({"BufWinEnter", "BufRead", "BufNewFile"}, {
  pattern = "*.md",
  callback = function()
    -- Set colorcolumn and textwidth specifically for Markdown
    vim.wo.colorcolumn = "81"
    vim.bo.textwidth = 80
  end,
})
