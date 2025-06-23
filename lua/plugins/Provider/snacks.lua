return
{
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        ---@type snacks.Config
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            bigfile = { enabled = true },
            dashboard = { enabled = true },
            gitbrowse = { enabled = true },
            indent = { enabled = true },
            input = { enabled = true },
            lazygit = { enabled = true },
            picker = {
                enabled = true,
                win = {
                    -- input window
                    input = {
                        keys = {
                            ["i"] = "list_up",
                            ["k"] = "list_down",
                            ["I"] = { "list_scroll_up", mode = { "i", "n" } },
                            ["K"] = { "list_scroll_down", mode = { "i", "n" } },
                            ["<c-i>"] = { "preview_scroll_up", mode = { "i", "n" } },
                            ["<c-k>"] = { "preview_scroll_down", mode = { "i", "n" } },
                        }
                    }
                }
            },
            notifier = { enabled = true },
            quickfile = { enabled = true },
            scope = {
                enabled = true,
                keys = {
                    ---@type table<string, snacks.scope.TextObject|{desc?:string}>
                    textobject = {
                        ri = {
                            min_size = 2, -- minimum size of the scope
                            edge = false, -- inner scope
                            cursor = false,
                            treesitter = { blocks = { enabled = false } },
                            desc = "inner scope",
                        },
                        ra = {
                            cursor = false,
                            min_size = 2, -- minimum size of the scope
                            treesitter = { blocks = { enabled = false } },
                            desc = "full scope",
                        },
                    },
                },
            },
            terminal = { enabled = true },
            words = { enabled = true },
        },
        keys = {
            { "<leader>gg", function() Snacks.gitbrowse.open() end,        desc = "GitBrowser" },
            { "<leader>gl", function() Snacks.lazygit.open() end,          desc = "LazyGit" },
            { "<leader>sl", function() Snacks.picker.lines() end,          desc = "Search Lines" },
            { "<leader>sk", function() Snacks.picker.keymaps() end,        desc = "Keymaps" },
            { "<leader>st", function() Snacks.picker.smart() end,          desc = "Smart Find Files" },
            { "<leader>fp", function() Snacks.picker.projects() end,       desc = "Projects" },
            { "<leader>sn", function() Snacks.picker.notifications() end,  desc = "Notification History" },
            { "<leader>sr", function() Snacks.picker.lsp_references() end, nowait = true,                desc = "References" },
            { "<leader>tt", function() Snacks.terminal.toggle() end,       desc = "Toggle Terminal" },
        },
    }

}
