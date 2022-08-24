local wk = require("which-key")

wk.setup({
    plugins = {
        marks = true,
        registers = true,
        spelling = {
            enabled = true,
            suggestions = 36,
        },
        presets = {
            operators = false,
            motions = false,
            text_objects = false,
            windows = true,
            nav = true,
            z = true,
            g = true,
        },
    },
    key_labels = {
        ["<space>"] = "SPC",
        ["<cr>"] = "RET",
        ["<Tab>"] = "TAB",
    },
    icons = {
        breadcrumb = "»",
        separator = "➜",
        group = "+",
    },
    window = {
        border = "single",
        position = "bottom",
        margin = { 1, 0, 1, 0 },
        padding = { 0, 2, 0, 2 },
    },
    layout = {
        height = { min = 4, max = 25 },
        width = { min = 20, max = 50 },
        spacing = 3,
        align = "left",
    },
    ignore_missing = false,
    hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " },
    show_help = true,
    triggers = "auto",
    triggers_blacklist = {
        i = { "j", "k" },
        v = { "j", "k" },
    },
})

local nmaps = {
    ["<c-\\>"] = {
        name = "Terminal",
        ["<c-\\>"] = "Toggle Terminal",
    },
    ["<c-a>"] = { "ggVG", "Select All" },
    ["<c-p>"] = { "<cmd>Telescope find_files<CR>", "Find files" },
    ["<Tab>"] = { "<cmd>BufferLineCycleNext<CR>", "Next Buffer" },
    ["<S-Tab>"] = { "<cmd>BufferLineCyclePrev<CR>", "Prev Buffer" },
    ["<leader>"] = {
        q = { "<cmd>qa<CR>", "Quit Neovim" },
        n = { "<cmd>NvimTreeToggle<CR>", "File Tree" },
        f = {
            name = "Find",
            f = { "<cmd>Telescope find_files<CR>", "Files" },
            g = { "<cmd>Telescope live_grep<CR>", "Grep" },
            h = { "<cmd>Telescope oldfiles<CR>", "Old Files" },
        },
        l = {
            name = "lsp",
            ["."] = { "<cmd>lua require('lspsaga.codeaction').code_action()<CR>", "Code Actions" },
        },
        x = { "<cmd>bp | :bd #<CR>", "Close Buffer" },
        w = {
            name = "Window",
            h = { "<c-w>h", "Focus Left" },
            j = { "<c-w>j", "Focus Down" },
            k = { "<c-w>k", "Focus Up" },
            l = { "<c-w>l", "Focus Right" },
            v = { "<c-w>v", "Vertical Split" },
            s = { "<c-w>s", "Horizontal Split" },
            x = { "<c-w>q", "Quit Window" },
        },
        o = {
            name = "Open",
            t = { "<cmd>ToggleTerm direction=horizontal<CR>", "Open Terminal" },
        },
        s = { "<cmd>SymbolsOutline<CR>", "Symbols Outline" },
        z = { "<cmd>ZenMode<CR>", "Toggle Zen Mode" },
        ["<Tab>"] = { "<cmd>Telescope buffers<CR>", "Show Buffers" },
        ["."] = { "<cmd>BufferLineMoveNext<CR>", "Buf Move Right" },
        [","] = { "<cmd>BufferLineMovePrev<CR>", "Buf Move Left" },
    },
    ["gcc"] = { "Comment Current Line" },
    ["gbc"] = { "Block Comment Current Line" },
}

local vmaps = {
    ["<c-c>"] = { '"+y', "Copy to Clipboard" },
    ["<leader>"] = {
        c = { "Comment Selection" },
    },
    ["gc"] = { "Comment Selection" },
    ["gb"] = { "Block Comment Selection" },
}

wk.register(nmaps, { mode = "n", noremap = true, silent = true })
wk.register(vmaps, { mode = "v", noremap = true, silent = true })
