require("config.lazy")

-- plugins
require("plugs.seblyng-roslyn")
require("plugs.telescope")
require("plugs.lualine")
require("plugs.neo-tree")
require("plugs.mason")
require("plugs.treesitter")
require("plugs.harpoon")
require("plugs.nvim-dap")

-- require("config.gruvbox")
require("config.catppuccin")

-- Set some lsp functionality. Telescope is goated
vim.api.nvim_set_keymap('n', '<leader>gb', '<cmd>lua require("telescope.builtin").git_branches()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>lk", '<cmd>lua require("telescope.builtin").lsp_references()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>le', '<cmd>lua require("telescope.builtin").diagnostics()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ls', '<cmd>lua require("telescope.builtin").git_status()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>li', '<cmd>lua require("telescope.builtin").lsp_implementations()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>la', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>lr', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ld', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>lf', '<cmd>lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>es', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ek', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ej', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })

-- Debugging stuff
vim.api.nvim_set_keymap('n', '<leader>J', '<cmd>DapStepOver<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>H', '<cmd>DapStepOut<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>L', '<cmd>DapStepInto<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>D', '<cmd>DapNew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>S', '<cmd>DapDisconnect<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>B', '<cmd>DapToggleBreakpoint<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>BC', '<cmd>DapClearBreakpoints<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>C', '<cmd>DapContinue<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>O', '<cmd>lua require"dap".repl.open()<CR>', { noremap = true, silent = true })



-- For fun, see all colorschemes
vim.api.nvim_set_keymap('n', '<leader>cc', '<cmd>lua require("telescope.builtin").colorscheme()<CR>', { noremap = true, silent = true })

-- Create a new tab from current buffer (think buffer copy)
vim.api.nvim_set_keymap('n', '<leader>bc', '<cmd>tabnew %<CR>', { noremap = true, silent = true })

-- Create a new tab (think buffer new)
vim.api.nvim_set_keymap('n', '<leader>bn', '<cmd>tabnew<CR>', { noremap = true, silent = true })
