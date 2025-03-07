require('lazy').setup({
    {
        "LazyVim/LazyVim",
        dependencies = {
            -- Add any additional LazyVim dependencies here
        },
        config = function()
            -- Customize LazyVim configuration here
        end,
    },

    -- Add other plugins here

    -- Telescope fuzzy finding
    { 'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim' } },

    -- Fugitive git integration
    { "tpope/vim-fugitive",
        config = function()
            -- Optional: Add custom keybindings or settings for Fugitive
            vim.keymap.set('n', '<leader>g', '<cmd>Git<cr>', { desc = 'Git status' })
            vim.keymap.set('n', '<leader>gc', '<cmd>Git commit<cr>', { desc = 'Git commit' })
            vim.keymap.set('n', '<leader>gp', '<cmd>Git push<cr>', { desc = 'Git push' })
            vim.keymap.set('n', '<leader>gl', '<cmd>Git log<cr>', { desc = 'Git log' })
            vim.keymap.set('n', '<leader>gd', '<cmd>Gdiffsplit<cr>', { desc = 'Git diff' })
        end,
    },

    -- Treesitter syntax highlighting
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

    { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons', opt = true } },

    { 'folke/tokyonight.nvim' },

    { 'folke/noice.nvim', dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" }},

    { "nvim-neo-tree/neo-tree.nvim", branch = "v3.x", dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim", } },

    { "williamboman/mason.nvim" },

    -- Configure blink.cmp
    {
        'saghen/blink.cmp',
        -- optional: provides snippets for the snippet source
        dependencies = 'rafamadriz/friendly-snippets',

        -- use a release tag to download pre-built binaries
        version = '*',
        -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
        -- build = 'cargo build --release',
        -- If you use nix, you can build from source using latest nightly rust with:
        -- build = 'nix run .#build-plugin',

        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept, C-n/C-p for up/down)
            -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys for up/down)
            -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
            --
            -- All presets have the following mappings:
            -- C-space: Open menu or open docs if already open
            -- C-e: Hide menu
            -- C-k: Toggle signature help
            --
            -- See the full "keymap" documentation for information on defining your own keymap.
            keymap = { preset = 'default' },

            appearance = {
                -- Sets the fallback highlight groups to nvim-cmp's highlight groups
                -- Useful for when your theme doesn't support blink.cmp
                -- Will be removed in a future release
                use_nvim_cmp_as_default = true,
                -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
                -- Adjusts spacing to ensure icons are aligned
                nerd_font_variant = 'mono'
            },

            -- Default list of enabled providers defined so that you can extend it
            -- elsewhere in your config, without redefining it, due to `opts_extend`
            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
            },

            -- Blink.cmp uses a Rust fuzzy matcher by default for typo resistance and significantly better performance
            -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
            -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
            --
            -- See the fuzzy documentation for more information
            fuzzy = { implementation = "prefer_rust_with_warning" }
        },
        opts_extend = { "sources.default" }
    }
})

-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
-- vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = 'Telescope live grep' })
-- vim.keymap.set('n', '<leader>pb', builtin.buffers, { desc = 'Telescope buffers' })
-- vim.keymap.set('n', '<leader>pn', builtin.help_tags, { desc = 'Telescope help tags' })

-- return require('packer').startup(function(use)
--     -- LSP
--     use {
--         'VonHeikemen/lsp-zero.nvim',
--         branch = 'v3.x',
--         requires = {
--             {'williamboman/mason.nvim'},
--             {'williamboman/mason-lspconfig.nvim'},
--             {'neovim/nvim-lspconfig'},
--             {'hrsh7th/nvim-cmp'},
--             {'hrsh7th/cmp-nvim-lsp'},
--             {'L3MON4D3/LuaSnip'},
--         }
--     }
-- 
--     -- nvim-cmp
--     use { 'neovim/nvim-lspconfig' }
--     use { 'hrsh7th/cmp-nvim-lsp' }
--     use { 'hrsh7th/cmp-buffer' }
--     use { 'hrsh7th/cmp-path' }
--     use { 'hrsh7th/cmp-cmdline' }
--     use { 'hrsh7th/nvim-cmp' }
-- end)
