-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.scrolloff = 12 -- Lines of context
opt.winminwidth = 10 -- Minimum window width
opt.wrap = true -- Disable line wrap

-- Add any additional options here
vim.g.python3_host_prog = "/home/tao-wei_chan/.pyenv/versions/pynvim/bin/python"
