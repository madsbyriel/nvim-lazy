vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.opt.termguicolors = true
vim.o.background = 'dark'

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.clipboard = "unnamedplus"
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

-- Show a marker indicating errors at the column
vim.opt.signcolumn = 'yes'
-- vim.g.netrw_liststyle = 3
-- vim.g.netrw_banner = 0

if vim.g.neovide then
    vim.g.neovide_fullscreen = true
    vim.o.guifont = "0xProto Nerd Font Mono:h14"

end

-- setup of all plugins
require("config.lazysetup")

require("config.keybinds")

-- plugins
require("plugs.telescope")
require("plugs.lualine")
require("plugs.noice")
require("plugs.neo-tree")
require("plugs.mason")

vim.cmd('colorscheme tokyonight-night')
