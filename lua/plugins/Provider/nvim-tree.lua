-- NVIM-TREE CONFIG
local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    -- api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
    vim.keymap.set('n', 'j', api.tree.change_root_to_parent, opts('Go to the parent'))
    vim.keymap.set('n', 'l', api.node.open.edit, opts('Open the file'))
    vim.keymap.set('n', 'G', api.node.navigate.sibling.last, opts('Last Sibling'))
    vim.keymap.set('n', 'gg', api.node.navigate.sibling.first, opts('First Sibling'))
    vim.keymap.set("n", "d", api.fs.remove, opts("Delete"))
    vim.keymap.set("n", "a", api.fs.create, opts("Create File Or Directory"))
    vim.keymap.set("n", "r", api.fs.rename, opts("Rename"))
    vim.keymap.set("n", "q", api.tree.close, opts("Close"))
end
-- NVIM-TREE CONFIG END


return
{
    -- NVIM-TREE
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        on_attach = my_on_attach,
    },
    keys = {
        { "<leader>e", "<CMD>NvimTreeToggle<CR>", mode = { "n" }, desc = "[NvimTree] Toggle NvimTree" },
    },
    init = function()
        -- disable netrw at the very start of your init.lua
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- optionally enable 24-bit colour
        vim.opt.termguicolors = true
    end
}
