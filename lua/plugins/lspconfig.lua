return {
    {
        'neovim/nvim-lspconfig',
        dependencies = { 'saghen/blink.cmp', 'williamboman/mason-lspconfig.nvim' },
        config = function()
            local capabilities = require('blink.cmp').get_lsp_capabilities()
            local lspconfig = require('lspconfig')

            -- Setup LSP servers installed via mason-lspconfig
            require('mason-lspconfig').setup_handlers({
                -- Default handler for installed servers
                function (server_name)
                    lspconfig[server_name].setup({
                        capabilities = capabilities,
                    })
                end,
            })
        end
    }
}
