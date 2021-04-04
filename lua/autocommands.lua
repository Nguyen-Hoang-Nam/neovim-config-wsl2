local augroup = vim.api.nvim_command

augroup([[augroup Scrollbar]])
augroup([[autocmd!]])
augroup([[autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()]])
augroup([[autocmd WinEnter,FocusGained,BufEnter * silent! lua require('scrollbar').show()]])
augroup([[autocmd WinLeave,FocusLost,BufLeave * silent! lua require('scrollbar').clear()]])
augroup([[augroup END]])

augroup([[augroup Theme]])
augroup([[autocmd!]])
augroup([[autocmd VimEnter * hi Normal guibg=NONE]])
augroup([[autocmd VimEnter * hi Cursor guibg=NONE]])
augroup([[autocmd VimEnter * hi CursorLine guibg=#3B4252]])
augroup([[autocmd VimEnter * hi CursorLineNr guibg=NONE]])
augroup([[autocmd VimEnter * hi ColorColumn guibg=NONE]])
augroup([[autocmd VimEnter * hi LineNr guibg=NONE]])
augroup([[autocmd VimEnter * hi EndOfBuffer guibg=#282C34 guifg=#282C34]])
augroup([[autocmd VimEnter * hi SignColumn guibg=NONE guifg=NONE]])
augroup([[autocmd VimEnter * hi VertSplit guibg=NONE]])
augroup([[autocmd VimEnter * hi GitLens guifg=#949494 gui=italic]])
augroup([[autocmd VimEnter * hi Whitespace guifg=#949494]])
augroup([[augroup END]])

augroup([[augroup Terminal]])
augroup([[autocmd!]])
augroup([[autocmd VimEnter * hi Floaterm guibg=NONE]])
augroup([[autocmd VimEnter * hi FloatermBorder guibg=NONE]])
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

--augroup([[augroup Gitlen]])
--augroup([[autocmd!]])
--augroup([[autocmd CursorHold * lua require('gitlen.lua').blameVirtText()]])
--augroup([[autocmd CursorMoved * lua require('gitlen.lua').clearBlameVirtText()]])
--augroup([[autocmd InsertEnter * lua require('gitlen.lua').clearBlameVirtText()]])
--augroup([[autocmd CursorMovedI * lua require('gitlen.lua).clearBlameVirtText()]])
--augroup([[augroup END]])