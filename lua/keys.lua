--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

map("i", "jj", "<Esc>", {})
map("t", "jj", "<C-\\><C-n>", {})

map("n", "n", [[:NvimTreeToggle<CR>]], { silent = true })
map("n", "ff", [[:Telescope find_files<CR>]], { silent = true })
