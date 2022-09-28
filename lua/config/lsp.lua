local lsp = require("lsp-zero")
local cmp = require("cmp")
local null_ls = require("null-ls")

lsp.preset("recommended")
lsp.nvim_workspace()

-- Mappings
local cmp_mappings = lsp.defaults.cmp_mappings()

cmp_mappings["<C-Space>"] = cmp.mapping(function(fallback)
    if cmp.visible() then
        cmp.close()
        fallback()
    else
        cmp.complete()
    end
end)
cmp_mappings["<Tab>"] = cmp.mapping.confirm({ select = true })
cmp_mappings["<S-Tab>"] = nil

lsp.setup_nvim_cmp({
    mapping = cmp_mappings,
})

-- -- null-ls
-- local null_opts = lsp.build_options("null-ls", {})
-- null_ls.setup({
--     on_attach = function(client, bufnr)
--         null_opts.on_attach(client, bufnr)
--     end,
--     sources = {
--         null_ls.builtins.formatting.stylua,
--         null_ls.builtins.diagnostics.eslint,
--         null_ls.builtins.diagnostics.golangci_lint,
--         null_ls.builtins.formatting.pint,
--     },
-- })

-- Misc
require("nvim-treesitter.configs").setup({
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
    },
})
require("lspsaga").init_lsp_saga({})
require("trouble").setup({})

lsp.setup({})

vim.diagnostic.config({ virtual_text = true })
