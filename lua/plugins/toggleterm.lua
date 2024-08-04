return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      -- { [[<c-\>\]], "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" },
      { [[<c-\><c-\>]], "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" },
      { [[<c-/>]], "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" },
      { [[<c-\>\]], "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" },
      { [[<c-\>1]], "<cmd>ToggleTerm 1<cr>", desc = "Term 1" },
      { [[<c-\>2]], "<cmd>ToggleTerm 2<cr>", desc = "Term 2" },
      { [[<c-\>3]], "<cmd>ToggleTerm 3<cr>", desc = "Term 3" },
      { [[<c-\>f]], "<cmd>TermSelect<cr>", desc = "Select opened terminals" },
    },
    opts = {
      open_mapping = [[<c-\><c-\>]],
      shade_terminals = true, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
      start_in_insert = true,
      insert_mappings = true, -- whether or not the open mapping applies in insert mode
      terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
      persist_size = true,
      persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
      direction = "horizontal",
    },
  },
}
