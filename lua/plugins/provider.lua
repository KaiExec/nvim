return
{
    {
        -- TREESITTER
        "nvim-treesitter/nvim-treesitter",
        branch = 'master',
        lazy = false,
        build = ":TSUpdate",

        main = "nvim-treesitter.configs",
        opts = {
            -- A list of parser names, or "all" (the listed parsers MUST always be installed)
            ensure_installed = { "c", "lua", "markdown"},
            -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
            auto_install = true,

            ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
            -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!
            highlight = {
                enable = true
            },
        },
        },
        {
            -- WHICH-KEY
            "folke/which-key.nvim",
            event = "VeryLazy",
            opts = {
                ---@type false | "classic" | "modern" | "helix"
                preset = "helix",
            },
            keys = {
                {
                    "<leader>?",
                    function()
                        require("which-key").show({ global = false })
                    end,
                    desc = "Buffer Local Keymaps (which-key)",
                },
            },
        },
        {
            "neovim/nvim-lspconfig",
            dependencies = {
                "mason-org/mason.nvim",

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
            },
            config = function()
                require("mason").setup()
            end,
        },

    }
