syntax on

" Line numbers
set number
set relativenumber

" OS clipboard is the default copy/paste buffer
set clipboard=unnamedplus

" Tabs are replaced with spaces
set expandtab
" Width of a tabulation
set tabstop=4
" Width used for shifting commands (e.g. >>, <<, ==)
set shiftwidth=4
" Increase the indenting level after '{' and so on
set smartindent

" Keep search results highlighted
set hlsearch
" Dynamic highlighting while typing what to search 
set incsearch
" Ctrl+L redraws screen and use :noh (nohlsearch) to hide a recent search highlight
nnoremap <C-L> :noh<CR><C-L>

" Show 'invisible' characters
set listchars=tab:▸\ ,trail:·,nbsp:_
set list

" Cursor will be 4 lines away the start/end of the viewport
set scrolloff=4
" Visual threshold
set colorcolumn=80
" Don't go on line start when scrolling vertically
set nostartofline

" Centralize info, backups, swapfiles and undo history
set viminfo+=n~/.vim/viminfo
" set backupdir=~/.vim/backups
" set directory=~/.vim/swaps
" if exists("&undodir")
"     set undodir=~/.vim/undo
" endif
