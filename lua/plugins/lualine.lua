return {
  {
   "nvim-lualine/lualine.nvim",
    opts = {
      winbar = {
        lualine_a = { "filename" },
        lualine_b = { "diff", "diagnostics" },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "branch" },
      },
      inactivate_winbar = {
        lualine_a = { "filename" },
        lualine_b = { "diff", "diagnostics" },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
    },
  },
}
