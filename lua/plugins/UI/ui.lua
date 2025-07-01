return
    {
        -- Theme settings
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,

        opts = {
            flavour = "mocha", -- latte, frappe, macchiato, mocha
            color_overrides = {
                mocha = {
                    base = "#201d2a",
                    mantle = "#201d2a",
                    crust = "#201d2a",
                }
            },
            custom_highlights =  function(colors) -- Custom highlights
                return {
                    Visual = { fg = colors.yellow, bg = colors.overlay1 }, -- Selected area
                    LineNr = { fg = colors.rosewater, style = { "italic" } }, -- Line number
                    CurSorLine = { bg = colors.surface0 }, -- Current line background
                    Search = { fg = colors.green }, -- Search results
                    IncSearch = { fg = colors.green }, -- Incremental search
                    CurSearch = { fg = colors.green }, -- Current search
                    MatchParen = { fg = colors.green, bg = colors.surface0 }, -- Matching parentheses
                    FlashLabel = { fg = colors.red, bg = colors.surface0 }, -- Matching parentheses
                }
            end,
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                notify = false,
                mini = {
                    enabled = false,
                    indentscope_color = "",
                },
                -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
            },
        },
        init = function()
            vim.cmd.colorscheme "catppuccin-mocha"
        end
    }

