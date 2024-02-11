return {
  {
    "folke/tokyonight.nvim",
    lazy = false, -- Make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- Make sure to load this before all the other start plugins
    config = function()
      -- Configure the theme
      require("tokyonight").setup({
        -- Your configuration comes here
        -- or leave it empty to use the default settings
        -- ... rest of your configuration

        on_colors = function(colors)
          -- Here you can override the colors
          -- Main Pink color and its variants
          colors.pink0 = "#E6007A" -- Main pink color
          colors.pink1 = "#E61989"
          colors.pink2 = "#E63399"
          colors.pink3 = "#E64CA8"
          colors.pink4 = "#E666B8"
          colors.pink5 = "#E680C7"
          colors.pink6 = "#E699D7"
          colors.pink7 = "#E6B3E6"

          -- Replacing the various blues with shades of pink
          colors.blue0 = colors.pink1
          colors.blue = colors.pink2
          colors.blue1 = colors.pink3
          colors.blue2 = colors.pink4
          colors.blue5 = colors.pink5
          colors.blue6 = colors.pink6
          colors.blue7 = colors.pink7

          -- Foreground and Background colors
          colors.fg = colors.pink0 -- Main pink foreground for attention and readability
          colors.bg = "#020202" -- Darker background for better contrast with pink

          -- Other UI colors
          colors.fg_dark = "#a9b1d6" -- Dark foreground for less important text
          colors.bg_dark = "#010101" -- Darker background for better contrast with pink
          colors.fg_gutter = "#3b4261" -- Foreground for line numbers and sidebars
          colors.comment = "#565f89" -- Muted color for code comments
          colors.gray = "#555555" -- Dark gray for less important UI elements
          -- colors.highlight = "#737aa2" -- Medium gray for UI elements
          colors.highlight = "#888887" -- Medium gray for UI elements

          -- colors.cyan = "#552BBF" -- Deep and rich, suitable for syntax highlighting and UI accents
          colors.cyan = colors.pink1
          colors.green = "#D3FF33" -- Bright and lively, useful for warnings and other attention elements
          colors.teal = "#56F39A" -- Soothing and balanced, perfect for success messages and git additions
          colors.red = "#f7768e" -- Muted version of pink for error messages and git deletions

          colors.orange = "#ff9e64" -- Blend of pink and lime for warnings and notifications
          colors.yellow = "#e0af68" -- Blend of lime and orange for a muted warning color

          colors.purple = "#bb9af7" -- Lighter version of purple, useful for additional syntax highlighting
          colors.magenta = "#ff007c" -- Blend of pink and purple for extra contrast
        end,

        on_highlights = function(hl, c)
          -- Here you can override the highlight groups
          -- using the colors defined in the `on_colors` function
          -- See the "Borderless Telescope example" for how to do this
          local prompt = "#2d3149"
          hl.TelescopeNormal = {
            bg = c.bg_dark,
            fg = c.fg_dark,
          }
          hl.TelescopeBorder = {
            bg = c.bg_dark,
            fg = c.bg_dark,
          }
          hl.TelescopePromptNormal = {
            bg = prompt,
          }
          hl.TelescopePromptBorder = {
            bg = prompt,
            fg = prompt,
          }
          hl.TelescopePromptTitle = {
            bg = prompt,
            fg = prompt,
          }
          hl.TelescopePreviewTitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
          }
          hl.TelescopeResultsTitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
          }
        end,
      })

      -- Load the colorscheme here
      -- vim.cmd([[colorscheme tokyonight]])
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
