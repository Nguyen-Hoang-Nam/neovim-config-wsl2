local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

local function opt(scope, key, value)
	scopes[scope][key] = value
	if scope ~= 'o' then scopes['o'][key] = value end
end

-- Global
opt('o', 'scrolloff', 18)
opt('o', 'showtabline', 2)
opt('o', 'hidden', true)
opt('o', 'showmode', false)
opt('o', 'showmatch', true)
opt('o', 'splitright', true)
opt('o', 'updatetime', 300)
opt('o', 'smartcase', true)
opt('o', 'termguicolors', true)

-- Local to window
opt('w', 'number', true)
opt('w', 'relativenumber', true)
opt('w', 'cursorline', true)
opt('w', 'signcolumn', 'yes')
opt('w', 'list', true)
opt('w', 'listchars', 'tab:▏\\ ,trail:-,eol:↵')

-- Local to buffer
opt('b', 'shiftwidth', 2)
opt('b', 'tabstop', 2)
opt('b', 'smartindent', true)
opt('b', 'swapfile', false)

vim.cmd('set shortmess+=c')
vim.cmd('set clipboard+=unnamedplus')
