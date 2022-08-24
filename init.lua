--[[ init.lua ]]

vim.g.mapleader = " "

-- Imports
require("vars")
require("opts")
require("keys")
require("plug")

-- Plugins
require("bufferline").setup({})
require("winbar").setup({
    enabled = true,

    show_file_path = true,
    show_symbols = true,

    colors = {
        path = "", -- You can customize colors like #c946fd
        file_name = "",
        symbols = "",
    },

    icons = {
        file_icon_default = "",
        seperator = ">",
        editor_state = "●",
        lock_icon = "",
    },

    exclude_filetype = {
        "help",
        "startify",
        "dashboard",
        "packer",
        "neogitstatus",
        "NvimTree",
        "Trouble",
        "alpha",
        "lir",
        "Outline",
        "spectre_panel",
        "toggleterm",
        "qf",
    },
})
require("nvim-tree").setup({
    view = {
        side = "right",
    },
})
require("nvim-autopairs").setup({})
require("Comment").setup({})
require("zen-mode").setup({
    window = {
        width = 80,
    },
})
require("twilight").setup({})
require("toggleterm").setup({})
require("presence"):setup({})
require("indent_blankline").setup({})
require("auto-session").setup({
    log_level = "error",
    auto_session_suppress_dirs = { "~/", "~/Programming", "~/Downloads", "/" },
})
require("config.alpha")
require("symbols-outline").setup({
    position = "left",
    --[[     relative_width = false,
    width = 30, ]]
})

-- LSP
require("config.lsp")
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])
