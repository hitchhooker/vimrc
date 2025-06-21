return {
  -- Disable snacks scroll animation
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
      animate = { enabled = false },
    },
  },
  
  -- Disable noice animations
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false,
      },
      views = {
        mini = {
          win_options = {
            winblend = 0,
          },
        },
      },
      routes = {
        {
          view = "notify",
          filter = { event = "msg_showmode" },
        },
      },
    },
  },
}
