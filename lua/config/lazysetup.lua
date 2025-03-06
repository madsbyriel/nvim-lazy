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
})


-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
-- vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = 'Telescope live grep' })
-- vim.keymap.set('n', '<leader>pb', builtin.buffers, { desc = 'Telescope buffers' })
-- vim.keymap.set('n', '<leader>pn', builtin.help_tags, { desc = 'Telescope help tags' })

-- return require('packer').startup(function(use)
--     -- FUGITIVE! Git stuff.
--     use 'tpope/vim-fugitive'
-- 
--     -- Nice coloring!
--     use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
-- 
--     -- Startup screen
--     use "startup-nvim/startup.nvim"
-- 
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
--     -- The line at the bottom of the screen
--     use {'ojroques/nvim-hardline'}
-- 
--     -- Glow for markdown files
--     use {"ellisonleao/glow.nvim", config = function() require("glow").setup({
--         style = "dark",
--         width = 120,
--     }) end}
-- 
--     -- nvim-cmp
--     use { 'neovim/nvim-lspconfig' }
--     use { 'hrsh7th/cmp-nvim-lsp' }
--     use { 'hrsh7th/cmp-buffer' }
--     use { 'hrsh7th/cmp-path' }
--     use { 'hrsh7th/cmp-cmdline' }
--     use { 'hrsh7th/nvim-cmp' }
-- 
--     -- tokyonight colorscheme
--     use { 'folke/tokyonight.nvim' }
-- 
--     -- Nice command line 
--     use {
--         'folke/noice.nvim',
--         requires = {
--             "MunifTanjim/nui.nvim",
--             "rcarriga/nvim-notify",
--         }
--     }
-- 
--     -- lualine
--     use {
--         'nvim-lualine/lualine.nvim',
--         requires = { 'nvim-tree/nvim-web-devicons', opt = true }
--     }
-- 
--     -- neo-tree, better file browsing
--     use({
--         "nvim-neo-tree/neo-tree.nvim",
--         branch = "v3.x",
--         requires = {
--             "nvim-lua/plenary.nvim",
--             "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
--             "MunifTanjim/nui.nvim",
--             -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
--         }
--     })
-- end)
