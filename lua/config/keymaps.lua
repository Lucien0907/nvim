-- This file is automatically loaded by lazyvim.config.init

-- DO NOT USE `LazyVim.safe_keymap_set` IN YOUR OWN CONFIG!!
-- use `vim.keymap.set` instead
local map = LazyVim.safe_keymap_set

-- Resize window using <ctrl> arrow keys
map("n", "<S-Up>", "<cmd>resize +10<cr>", { desc = "Increase Window Height" })
map("n", "<S-Down>", "<cmd>resize -10<cr>", { desc = "Decrease Window Height" })
map("n", "<S-Left>", "<cmd>vertical resize -5<cr>", { desc = "Decrease Window Width" })
map("n", "<S-Right>", "<cmd>vertical resize +5<cr>", { desc = "Increase Window Width" })

-- quit
map("n", "<leader>qa", "<cmd>qa<cr>", { desc = "Quit All" })
map("n", "<leader>qf", Snacks.bufdelete.delete, { desc = "Delete Buffer" })

-- save
map("n", "<leader>bw", "<cmd>update<cr>", { desc = "Update" })

-- Custom terminal
map("t", "<esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
map("t", "<C-h>", "<cmd>wincmd h<cr>", { desc = "Go to Left Window" })
map("t", "<C-j>", "<cmd>wincmd j<cr>", { desc = "Go to Lower Window" })
map("t", "<C-k>", "<cmd>wincmd k<cr>", { desc = "Go to Upper Window" })
map("t", "<C-l>", "<cmd>wincmd l<cr>", { desc = "Go to Right Window" })

-- windows
map("n", "<leader>-", "<C-W>s", { desc = "Split Window Below", remap = true })
map("n", "<leader>\\", "<C-W>v", { desc = "Split Window Right", remap = true })
map("n", "<leader>wd", "<C-W>c", { desc = "Delete Window", remap = true })
map("n", "<leader>qw", "<C-W>c", { desc = "Delete Window", remap = true })
map("n", "<leader>w", "<c-w>", { desc = "Windows", remap = true })
map("n", "<c-w>w", "<Esc>", { desc = "Nothing", remap = true })
map("n", "<leader>ww", "<Esc>", { desc = "Nothing", remap = true })

-- DO NOT USE `LazyVim.safe_keymap_set` IN YOUR OWN CONFIG!!
-- use `vim.keymap.set` instead
-- local mymap = vim.keymap.set

-- map("n", "<leader>h", function() Snacks.dashboard.open() end, { desc = "Homepage" })
