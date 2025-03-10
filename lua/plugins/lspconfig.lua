return {
    -- LSP servers and clients communicate which features they support through "capabilities".
    --  By default, Neovim supports a subset of the LSP specification.
    --  With blink.cmp, Neovim has _more_ capabilities which are communicated to the LSP servers.
    --  Explanation from TJ: https://youtu.be/m8C0Cq9Uv9o?t=1275
    --
    -- This can vary by config, but in general for nvim-lspconfig:

    {
        'neovim/nvim-lspconfig',
        dependencies = { 'saghen/blink.cmp' },

        -- example using `opts` for defining servers
        opts = {
            servers = {
                lua_ls = { }
            }
        },

        -- example calling setup directly for each LSP
        config = function()
            local capabilities = require('blink.cmp').get_lsp_capabilities()
            local lspconfig = require('lspconfig')

            lspconfig['lua_ls'].setup({ capabilities = capabilities })
        end
    },
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
