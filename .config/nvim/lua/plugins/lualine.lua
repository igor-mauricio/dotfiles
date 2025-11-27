return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- Define the colors for your new black theme
    local black_theme = {
      -- Normal mode (Active Window)
      normal = {
        a = { fg = "#FFFFFF", bg = "#000000" }, -- White text on Black BG
        b = { fg = "#CCCCCC", bg = "#000000" }, -- Lighter gray text on Black BG
        c = { fg = "#AAAAAA", bg = "#000000" }, -- Gray text on Black BG
        x = { fg = "#AAAAAA", bg = "#000000" },
        y = { fg = "#CCCCCC", bg = "#000000" },
        z = { fg = "#FFFFFF", bg = "#000000" },
      },
      -- Insert/Visual/Replace modes will inherit colors from your main colorscheme,
      -- but this forces the background to black for a consistent look across modes.
      insert = {
        a = { bg = "#000000" },
        b = { bg = "#000000" },
        c = { bg = "#000000" },
        x = { bg = "#000000" },
        y = { bg = "#000000" },
        z = { bg = "#000000" },
      },
      visual = {
        a = { bg = "#000000" },
        b = { bg = "#000000" },
        c = { bg = "#000000" },
        x = { bg = "#000000" },
        y = { bg = "#000000" },
        z = { bg = "#000000" },
      },
      replace = {
        a = { bg = "#000000" },
        b = { bg = "#000000" },
        c = { bg = "#000000" },
        x = { bg = "#000000" },
        y = { bg = "#000000" },
        z = { bg = "#000000" },
      },

      -- Inactive Window Status Line
      inactive = {
        a = { fg = "#555555", bg = "#111111" }, -- Darker gray text on Darker Black BG
        b = { fg = "#555555", bg = "#111111" },
        c = { fg = "#555555", bg = "#111111" },
        x = { fg = "#555555", bg = "#111111" },
        y = { fg = "#555555", bg = "#111111" },
        z = { fg = "#555555", bg = "#111111" },
      },
    }

    -- Assign the new custom theme
    opts.options.theme = black_theme

    -- Return the modified options table to LazyVim
    return opts
  end,
}
