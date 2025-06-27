return
{
    -- TREESITTER
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",

    main = "nvim-treesitter.configs",
    opts = {
        -- A list of parser names, or "all" (the listed parsers MUST always be installed)
        ensure_installed = { "c", "lua", "markdown" },
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        ignore_install = { "tmux" },
        auto_install = true,

        ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
        -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!
        highlight = {
            enable = true
        },
    },
}
