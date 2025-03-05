return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      { [[<leader>tt]], "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" },
      { [[<leader>t1]], "<cmd>ToggleTerm 1<cr>", desc = "Term 1" },
      { [[<leader>t2]], "<cmd>ToggleTerm 2<cr>", desc = "Term 2" },
      { [[<leader>t3]], "<cmd>ToggleTerm 3<cr>", desc = "Term 3" },
      { [[<leader>t4]], "<cmd>ToggleTerm 4<cr>", desc = "Term 4" },
      { [[<leader>t5]], "<cmd>ToggleTerm 5<cr>", desc = "Term 5" },
      { [[<leader>t6]], "<cmd>ToggleTerm 6<cr>", desc = "Term 6" },
      { [[<leader>ts]], "<cmd>TermSelect<cr>", desc = "Select opened terminals" },
    },
    opts = {
      open_mapping = [[<leader>tt]],
      autochdir = true,
      shade_terminals = true, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
      start_in_insert = false,
      insert_mappings = true, -- whether or not the open mapping applies in insert mode
      terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
      persist_size = true,
      persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
      direction = "horizontal",
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      winbar = {
        enabled = false,
        name_formatter = function(term) -- term: Terminal
          return term.name_formatter
        end,
      },
    },
  },
}
