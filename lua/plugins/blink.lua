return {
    {
        'saghen/blink.cmp',
        dependencies = 'rafamadriz/friendly-snippets',
        version = '*',
        opts = {
            snippets = {
                expand = function(snippet, _)
                    return LazyVim.cmp.expand(snippet)
                end,
            },
            appearance = {
                use_nvim_cmp_as_default = false,
                nerd_font_variant = "mono",
            },
            completion = {
                accept = {
                    -- experimental auto-brackets support
                    auto_brackets = {
                        enabled = true,
                    },
                },
                menu = {
                    draw = {
                        treesitter = { "lsp" },
                    },
                },
                documentation = {
                    auto_show = true,
                    auto_show_delay_ms = 200,
                },
                ghost_text = {
                    enabled = vim.g.ai_cmp,
                },
            },

            sources = {
                -- adding any nvim-cmp sources here will enable them
                -- with blink.compat
                default = { "lsp", "path", "snippets", "buffer" },
            },

            cmdline = {
                enabled = false,
            },

            keymap = {
                preset = "enter",
                ["<C-y>"] = { "select_and_accept" },
            },
        },
        opts_extend = { "sources.default" }
    }
}
