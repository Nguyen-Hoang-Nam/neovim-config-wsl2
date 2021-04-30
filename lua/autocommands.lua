local augroup = vim.api.nvim_command

augroup([[augroup Terminal]])
augroup([[autocmd!]])
augroup([[autocmd TermOpen * setlocal nonumber]])
augroup([[autocmd TermOpen * setlocal norelativenumber]])
augroup([[augroup END]])

augroup([[augroup VIMRC]])
augroup([[autocmd!]])
augroup([[autocmd InsertEnter * set nocul]])
augroup([[autocmd InsertLeave * set cul]])
augroup([[autocmd VimEnter * set formatoptions-=cro]])
augroup([[augroup END]])

augroup([[augroup Format]])
augroup([[autocmd!]])
augroup([[autocmd BufWritePre * undojoin | Neoformat]])
augroup([[augroup END]])

augroup([[augroup Vertical]])
augroup([[autocmd!]])
augroup([[autocmd! BufEnter * if &ft ==# 'help' | wincmd L | endif]])
augroup([[augroup END]])
