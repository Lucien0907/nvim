return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = {},
          winbar = { "neo-tree", "toggleterm" },
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      winbar = {
        lualine_a = { "filename" },
        lualine_b = { "diff", "diagnostics" },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "branch" },
      },
      inactive_winbar = {
        lualine_a = { "filename" },
        lualine_b = { "diff", "diagnostics" },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "branch" },
      },
    },
  },
}
