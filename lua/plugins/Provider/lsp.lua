return {
    {
        -- LSP
        "mason-org/mason.nvim",
        priority = 1000,
        dependencies = {
            "neovim/nvim-lspconfig",
        },
        opts = {},
    },

    {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
            library = {
                -- See the configuration section for more details
                -- Load luvit types when the `vim.uv` word is found
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
        -- { "folke/neodev.nvim", enabled = false }, -- make sure to uninstall or disable neodev.nvim
    }
}
