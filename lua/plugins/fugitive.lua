return {
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
}
