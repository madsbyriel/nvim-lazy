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
                    vim.lsp.config(server_name, {
                        capabilities = capabilities,
                    });
                    vim.lsp.enable(server_name);
                end,
            })
        end
    }
}
