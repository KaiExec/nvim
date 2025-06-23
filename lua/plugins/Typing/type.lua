return
{
    -- AUTOPAIRS
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config =
        {
            map_cr = true
        },
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
        init = function()
            local Rule = require('nvim-autopairs.rule')
            local npairs = require('nvim-autopairs')
            npairs.add_rules({ Rule("<", ">", { "c", "cpp" }) })
        end,
    },
}
