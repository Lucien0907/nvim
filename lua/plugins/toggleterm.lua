return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      { [[<c-/><c-/>]], "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" },
      { [[<c-/>/]], "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" },
      { [[<c-/>1]], "<cmd>ToggleTerm 1<cr>", desc = "Term 1" },
      { [[<c-/>2]], "<cmd>ToggleTerm 2<cr>", desc = "Term 2" },
      { [[<c-/>3]], "<cmd>ToggleTerm 3<cr>", desc = "Term 3" },
      { [[<c-/>f]], "<cmd>TermSelect<cr>", desc = "Select opened terminals" },
    },
    opts = {
      open_mapping = [[<c-/><c-/>]],
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
          return 20
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
