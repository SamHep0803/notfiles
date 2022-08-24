-- [[ plug.lua ]]

return require("packer").startup({
    function(use)
        -- [[ Plugins Go Here ]]
        use({
            "kyazdani42/nvim-tree.lua",
            requires = "kyazdani42/nvim-web-devicons",
        })
        use({ "ellisonleao/gruvbox.nvim" })
        use({ "Mofiqul/dracula.nvim" })
        -- use({ "mhinz/vim-startify" })
        -- use({ "glepnir/dashboard-nvim" })
        use({ "goolord/alpha-nvim" })
        use({ "DanilaMihailov/beacon.nvim" })
        use({ "folke/persistence.nvim" })

        use({
            "nvim-lualine/lualine.nvim",
            requires = { "kyazdani42/nvim-web-devicons", opt = true },
            config = [[require("config.lualine")]],
        })
        use({
            "akinsho/bufferline.nvim",
            tag = "v2.*",
            requires = "kyazdani42/nvim-web-devicons",
            config = [[require("config.bufferline")]],
        })
        use({ "fgheng/winbar.nvim" })

        use({
            "nvim-telescope/telescope.nvim",
            requires = { "nvim-lua/plenary.nvim" },
        })
        use({ "tpope/vim-fugitive" })
        use({ "windwp/nvim-autopairs" })
        use({
            "folke/which-key.nvim",
            config = [[require("config.which-key")]],
        })

        use({ "preservim/tagbar" })
        use({ "simrat39/symbols-outline.nvim" })

        use({ "akinsho/toggleterm.nvim", tag = "v2.*" })

        use({ "numToStr/Comment.nvim" })
        use({ "lukas-reineke/indent-blankline.nvim" })

        use({ "folke/zen-mode.nvim" })
        use({ "folke/twilight.nvim" })

        use({ "andweeb/presence.nvim" })

        use({ "rmagatti/auto-session" })

        -- LSP
        use({ "jose-elias-alvarez/null-ls.nvim" })
        use({
            "VonHeikemen/lsp-zero.nvim",
            requires = {
                -- LSP Support
                { "neovim/nvim-lspconfig" },
                { "williamboman/mason.nvim" },
                { "williamboman/mason-lspconfig.nvim" },

                -- Autocompletion
                { "hrsh7th/nvim-cmp" },
                { "hrsh7th/cmp-buffer" },
                { "hrsh7th/cmp-path" },
                { "saadparwaiz1/cmp_luasnip" },
                { "hrsh7th/cmp-nvim-lsp" },
                { "hrsh7th/cmp-nvim-lua" },

                -- Snippets
                { "L3MON4D3/LuaSnip" },
                { "rafamadriz/friendly-snippets" },
            },
        })
        use({
            "nvim-treesitter/nvim-treesitter",
        })
        use({
            "glepnir/lspsaga.nvim",
            branch = "main",
        })
        use({ "folke/trouble.nvim" })
        use({ "jwalton512/vim-blade" })
    end,
    config = {
        auto_clean = true,
        compile_on_sync = true,
        ensure_dependencies = true,
        display = {
            open_cmd = "vnew \\[packer]\\",
        },
        profile = {
            enable = false,
        },
    },
})
