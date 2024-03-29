vim.keymap.set("n", "n", vim.cmd.NvimTreeToggle, {})

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
	view = {
		side = "right",
	},
    actions = {
        open_file = {
            quit_on_open = true
        }
    }
})
