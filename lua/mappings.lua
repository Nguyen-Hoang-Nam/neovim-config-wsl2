local map = vim.api.nvim_set_keymap

local options = { noremap = true }
local cmd_options = { noremap = true, silent = true }

map('n', '<Enter>', 'o<Esc>', options)
map('n', '<Leader>c', '<C-w>w', options)
map('n', '<Leader>h', '<C-w>h', options)
map('n', '<Leader>j', '<C-w>j', options)
map('n', '<Leader>k', '<C-w>k', options)
map('n', '<Leader>l', '<C-w>l', options)
map('n', 'p', 'p=`]', options)

map('i', 'jk', '<Esc>', options)

map('v', 'e', '<Esc>', options)

map('t', '<Esc>', '<C-\\><C-n>', options)

----------------------------------------
--
-- Commands
--
----------------------------------------

map('n', '<Leader>q', [[:wqa<CR>]], cmd_options)
map('n', '<Leader>s', [[<Cmd>let @/=""<CR>]], cmd_options)
map('n', '<Leader>w', [[<Cmd>w<CR>]], cmd_options)
map('n', '<Leader>d', [[<Cmd>b# | bd#<CR>]], cmd_options)
vim.cmd('command! -nargs=* -complete=help H vertical bo help <args>')

map('n', '<M-j>', [[:m .+1<CR>==]], cmd_options)
map('n', '<M-k>', [[:m .-2<CR>==]], cmd_options)
map('i', '<M-j>', [[<Esc>:m .+1<CR>==gi]], cmd_options)
map('i', '<M-k>', [[<Esc>:m .-2<CR>==gi]], cmd_options)
map('v', '<M-j>', [[:m '>.+1<CR>gv=gv]], cmd_options)
map('v', '<M-k>', [[:m '<'.-2<CR>gv=gv]], cmd_options)

map('n', '<Leader>f', [[<Cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], cmd_options)
map('n', '<Leader>p', [[:lua require('telescope.builtin').find_files()<CR>]], cmd_options)
map('n', '<Leader>g', [[<Cmd>lua require('telescope.builtin').git_commits()<CR>]], cmd_options)

map('n', '<Leader>e', [[<Cmd>lua require('telescope.builtin').symbols{ sources = {'gitmoji'} }<CR>]], cmd_options)

vim.g.NERDCreateDefaultMappings = 0
map('n', '<Leader>/', [[<Cmd>call NERDComment(0,"toggle")<CR>]], cmd_options)
map('v', '<Leader>/', [[:call NERDComment(1,"toggle")<CR>]], cmd_options)

map('n', '<M-t>', [[<Cmd>FloatermToggle<CR>]], cmd_options)
map('t', '<M-t>', [[<C-\><C-n>:FloatermToggle<CR>]], cmd_options)

map('n', '<Leader>b', [[<Cmd>NvimTreeToggle<CR>]], cmd_options)
map('v', '<Leader>b', [[<Cmd>NvimTreeToggle<CR>]], cmd_options)

map('n', '<Leader>r', [[<Cmd>Glow<CR>]], cmd_options)

map('x', 'ga', [[:EasyAlign<CR>]], cmd_options)
map('n', 'ga', [[:EasyAlign<CR>]], cmd_options)
