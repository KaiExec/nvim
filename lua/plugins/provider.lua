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
                indent = {
                    enable = true
                },
            },
            -- key = {
            --     { "n", }
            --
            -- }
            init = function()
                vim.wo.foldmethod = 'expr'
                vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

                -- Make all fold open at the begining

                local vim = vim
                local api = vim.api
                local M = {}
                -- function to create a list of commands and convert them to autocommands
                -------- This function is taken from https://github.com/norcalli/nvim_utils
                function M.nvim_create_augroups(definitions)
                    for group_name, definition in pairs(definitions) do
                        api.nvim_command('augroup '..group_name)
                        api.nvim_command('autocmd!')
                        for _, def in ipairs(definition) do
                            local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
                            api.nvim_command(command)
                        end
                        api.nvim_command('augroup END')
                    end
                end


                local autoCommands = {
                    -- other autocommands
                    open_folds = {
                        {"BufReadPost,FileReadPost", "*", "normal zR"}
                    }
                }

                M.nvim_create_augroups(autoCommands)
            end,
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
        }
    }
