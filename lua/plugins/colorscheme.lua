return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "tiagovla/tokyodark.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent_background = true,
      custom_palette = function(palette)
        palette.black = "#000000"
        palette.bg0 = "#000000"
        return palette
      end,
    },
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      dimInactive = true, -- dim inactive window `:h hl-NormalNC`
      colors = { -- add/modify theme and palette colors
        palette = {
          dragonBlack0 = "#16161D",
          dragonBlack1 = "#000000",
          dragonBlack2 = "#000000",
          dragonBlack3 = "#000000",
          dragonBlack4 = "#000000",
        },
      },
    },
  },
  { "yorumicolors/yorumi.nvim", lazy = false, priortty = 1000 },
  {
    "bluz71/vim-moonfly-colors",
    lazy = false,
    priority = 1000,
    init = function()
      vim.g.moonflyWinSeparator = 2
      vim.g.moonflyUnderlineMatchParen = true
    end,
  },
  { "miikanissi/modus-themes.nvim", lazy = false, priority = 1000 },
  { "hachy/eva01.vim", lazy = false, priority = 1000 },
  { "sainnhe/everforest", lazy = false, priority = 1000 },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "kanagawa-lotus",
      -- colorscheme = "kanagawa-wave",
      -- colorscheme = "kanagawa-dragon",
      -- colorscheme = "kanagawa-paper",
      -- colorscheme = "tokyonight"
      colorscheme = "tokyodark",
      -- colorscheme = "catppuccin",
    },
  },
}
