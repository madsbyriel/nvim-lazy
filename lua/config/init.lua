require("config.lazy")

-- plugins
require("plugs.telescope")
require("plugs.lualine")
require("plugs.noice")
require("plugs.neo-tree")
require("plugs.mason")
require("plugs.treesitter")

vim.cmd('colorscheme tokyonight-night')

-- Set some lsp functionality. Telescope is goated
vim.api.nvim_set_keymap("n", "gr", '<cmd>lua require("telescope.builtin").lsp_references()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'ge', '<cmd>lua require("telescope.builtin").diagnostics()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gs', '<cmd>lua require("telescope.builtin").git_status()<CR>', { noremap = true, silent = true })

-- For fun, see all colorschemes
vim.api.nvim_set_keymap('n', '<leader>cc', '<cmd>lua require("telescope.builtin").colorscheme()<CR>', { noremap = true, silent = true })
