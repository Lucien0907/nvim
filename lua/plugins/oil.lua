return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- Optional dependencies
    opts = {
      win_options = {
        wrap = false,
        signcolumn = "yes:2",
        cursorcolumn = false,
        foldcolumn = "0",
        spell = false,
        list = false,
        conceallevel = 3,
        concealcursor = "nvic",
      },
      keymaps = {
        ["g?"] = { "actions.show_help", mode = "n" },
        ["<CR>"] = "actions.select",
        ["<C-s>"] = false,
        ["<C-h>"] = false,
        ["<C-t>"] = false,
        ["<C-p>"] = false,
        ["<C-c>"] = false,
        ["<C-l>"] = false,
        ["-"] = { "actions.close", mode = "n" },
        ["<BS>"] = { "actions.parent", mode = "n" },
        ["_"] = { "actions.open_cwd", mode = "n" },
        ["`"] = { "actions.cd", mode = "n" },
        ["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
        ["gs"] = { "actions.change_sort", mode = "n" },
        ["gx"] = "actions.open_external",
        ["g."] = { "actions.toggle_hidden", mode = "n" },
        ["H"] = { "actions.toggle_hidden", mode = "n" },
        ["g\\"] = { "actions.toggle_trash", mode = "n" },
        ["<leader>rl"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in a vertical split" },
        ["<leader>rj"] = { "actions.select", opts = { horizontal = true }, desc = "Open the entry in a horizontal split", },
        ["<leader>rt"] = { "actions.select", opts = { tab = true }, desc = "Open the entry in new tab" },
        ["<leader>rp"] = "actions.preview",
      },
      view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
        -- This function defines what is considered a "hidden" file
        is_hidden_file = function(name, bufnr)
          return vim.startswith(name, ".")
        end,
        -- This function defines what will never be shown, even when `show_hidden` is set
        is_always_hidden = function(name, bufnr)
          return vim.startswith(name, "..")
        end,
	-- Customize the highlight group for the file name
	highlight_filename = function(entry, is_hidden, is_link_target, is_link_orphan)
	  return nil
	end,
      },
    },
  },
}
