vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- -- Fugitive
-- -- Open up the Git window from fugitive
-- vim.keymap.set("n", "<leader>g", ":G<CR>", { noremap = true })
-- 
-- -- Start a commit message
-- vim.keymap.set("n", "<leader>gc", ":G commit<CR>", { noremap = true })
-- 
-- -- Push commits
-- vim.keymap.set("n", "<leader>gp", ":G push<CR>", { noremap = true })
-- 
-- vim.keymap.set("n", "<leader>t", function ()
--     require('neo-tree.command').execute({
--         toggle = true
--     })
-- end)

require("config.keybinds")
require("config.lazysetup")

-- plugins
require("plugs.telescope")
