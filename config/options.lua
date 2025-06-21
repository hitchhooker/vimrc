-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.conceallevel = 1

-- Ensure commentstring is set
if vim.bo.commentstring == "" or vim.bo.commentstring == nil then
  vim.bo.commentstring = "# %s"
end

-- lines
vim.opt.textwidth = 100  -- Set to your desired line length
vim.opt.colorcolumn = "100"  -- Highlight the 80th column
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true

-- Disable animations and smooth scrolling
vim.opt.smoothscroll = false
vim.opt.lazyredraw = true

-- Disable cursor animations if using Neovide
vim.g.neovide_cursor_animation_length = 0
vim.g.neovide_scroll_animation_length = 0

-- Force immediate cursor movement
vim.opt.scrolloff = 0
vim.opt.sidescrolloff = 0
