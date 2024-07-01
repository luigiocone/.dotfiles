syntax on

" Store 'viminfo' in a custom folder
set viminfo+=n~/.vim/viminfo

set number          " Line numbers
set relativenumber

set expandtab       " Tabs are replaced with spaces 
set smartindent     " Increase the indenting level after '{' and so on 
set tabstop=4       " Width of a tabulation 
set shiftwidth=4    " Width used for shifting commands (e.g. >>, <<, ==)   

set scrolloff=4     " Cursor will be 4 lines away the start/end of the viewport

set colorcolumn=80  " Visual threshold

set nostartofline   " Don't go on line start when scrolling vertically

set hlsearch        " Keep search results highlighted
set incsearch       " Dynamic highlighting while typing what to search 
" Ctrl+L redraws screen and use :noh (nohlsearch) to hide a recent search highlight
nnoremap <C-L> :noh<CR><C-L>

