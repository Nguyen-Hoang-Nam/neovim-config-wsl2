require('options')

require 'bufferline.lua'
require 'clipboard'
require 'comment.lua'
require 'compe.lua'
require 'colorizer.lua'
require 'dashboard.lua'
require 'galaxyline.lua'
require 'gitsigns.lua'
require 'lspconfig.lua'
require 'lspkind'.init({
	File = " "
})
require 'neoformat.lua'
require 'nvim-autopairs'.setup()
require 'toggleterm.lua'
require 'tree.lua'
require 'treesitter.lua'
require 'trouble.lua'

local cmd = vim.cmd
local g = vim.g

require 'base16-colorscheme'.setup 'onedark'

cmd 'hi ScrollView guibg=#949494'
cmd 'hi Normal guibg=#282C34'
cmd 'hi EndOfBuffer guibg=#282C34 guifg=#282C34'
cmd 'hi VertSplit guibg=NONE guifg=#3e4451'
cmd 'hi StatusLineNC gui=underline guibg=NONE guifg=#3e4451'
cmd 'hi Pmenusel guibg=#85dc85'
cmd 'hi Pmenu guibg=#353b45'

cmd 'hi GitSignsAdd guifg=#282C34 guibg=#81A1C1'
cmd 'hi GitSignsChange guifg=#282C34 guibg=#3A3E44'
cmd 'hi GitSignsDelete guifg=#282C34 guibg=#81A1C1'

cmd 'hi NvimTreeFolderIcon guifg = #61afef'
cmd 'hi NvimTreeFolderName guifg = #61afef'
cmd 'hi NvimTreeIndentMarker guifg=#383c44'
cmd 'hi NvimTreeStatusLine gui=underline guibg=NONE guifg=#3e4451'

cmd 'hi TelescopeBorder   guifg=#525865'
cmd 'hi TelescopePromptBorder   guifg=#525865'
cmd 'hi TelescopeResultsBorder  guifg=#525865'
cmd 'hi TelescopePreviewBorder  guifg=#525865'

g.mapleader = ' '
require 'mappings'
require 'autocommands'
