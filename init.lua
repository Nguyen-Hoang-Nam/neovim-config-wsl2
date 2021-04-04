require('options')

require('nvim-bufferline.lua')
require('nvim-tree.lua')
require('nvim-treesitter.lua')
require('gitsigns.lua')
require('vim-hexokinase.lua')
require('nvim-lspconfig.lua')
require('nvim-compe.lua')
require('lspkind').init({
	File = " "
})
require('galaxyline.lua')
require('floaterm.lua')
require('nvim-autopairs').setup()
require('neoformat.lua')
require('clipboard')
require('dashboard-nvim.lua')

local cmd = vim.cmd
local g = vim.g
local indent = 2

cmd 'colorscheme moonfly'

g.mapleader = ' '
require('mappings')
require('autocommands')
