return {
  -- disable mini.pairs
  { "echasnovski/mini.pairs", enabled = false },
  -- disable mini.animate (removes animations)
  { "echasnovski/mini.animate", enabled = false },
  -- disable flash.nvim (cursor animations on search)
  { "folke/flash.nvim", enabled = false },
  -- disable noice (animations and UI fluff)
  { "folke/noice.nvim", enabled = false },
  -- Keep snacks enabled but disable all its features
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
      animate = { enabled = false },
      statuscolumn = { enabled = false },
      notifier = { enabled = false },
      quickfile = { enabled = false },
      words = { enabled = false },
    },
  },
}
