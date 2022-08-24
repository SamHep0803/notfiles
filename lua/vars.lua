--[[ vars.lua ]]

local g = vim.g

g.t_co = 256
g.background = "dark"

g.gui_font_face = "Monoid Nerd Font"
g.gui_font_default_size = 14

g.neovide_transparency = 0.8
g.top_padding = 40

local packer_path = vim.fn.stdpath("config") .. "/site"
vim.o.packpath = vim.o.packpath .. "," .. packer_path
