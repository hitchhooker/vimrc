return {
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<C-f>",
          clear_suggestion = "<C-x>",
          accept_word = "<C-j>",
        },
        log_level = "off",
        disable_inline_completion = false,
        disable_keymaps = false,
      })
    end,
  },
}
