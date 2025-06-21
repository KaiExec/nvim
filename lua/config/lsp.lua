vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('my.lsp', {}),
    callback = function(args)
        -- Get LSP client
        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
        -- Keybinding
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = args.buf, desc = 'LSP: Goto Definition' })
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { buffer = args.buf, desc = 'LSP: Goto Declaration' })
        vim.keymap.set('n', 'rn', vim.lsp.buf.rename, { buffer = args.buf, desc = 'LSP: Rename' })
        -- Diagnostics
        vim.diagnostic.config {
            virtual_text = true,
        }
        -- InlayHint if passible
        if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_inlayHint) then
            vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = args.buf })
        end
        -- Diagnostics Line
        vim.keymap.set('n', '<leader>ld', function()
            vim.diagnostic.open_float { source = true }
        end, { buffer = args.buf, desc = 'LSP: Diagnostics Line' })
        -- Toggle Diagnostics
        vim.keymap.set(
            'n',
            '<leader>td',
            (function()
                local diag_status = 1 -- 1 is show; 0 is hide
                return function()
                    if diag_status == 1 then
                        diag_status = 0
                        vim.diagnostic.config { underline = false, virtual_text = false, signs = false, update_in_insert = false }
                    else
                        diag_status = 1
                        vim.diagnostic.config { underline = true, virtual_text = true, signs = true, update_in_insert = true }
                    end
                end
            end)(),
            { buffer = args.buf, desc = 'LSP: Toggle diagnostics display' }
        )
        -- Format code
        vim.keymap.set('n', '<leader><leader>f', function()
            vim.lsp.buf.format({ async = false })
        end, { buffer = args.buf, desc = 'LSP: Goto Definition' })
vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.ERROR] = '',
        },
    }
})
    end,
})
