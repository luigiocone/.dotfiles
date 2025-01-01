" Set leader key to space
let mapleader = " "

" [p]roject [v]iew
nnoremap <leader>pv :Ex<CR>

" Fast esc from insert mode
inoremap jk <esc>

" Replace selected text without yanking into the default register
" (deleted text goes into the black hole register)
vnoremap <leader>p "_dP

" delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" replace currently selected text with default register
" without yanking it
vnoremap <leader>p "_dP

