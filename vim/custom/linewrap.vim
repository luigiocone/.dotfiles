" Function triggered each time the 'wrap' option changes
function! WrapOptionChanged()
    if &wrap
        " Vertical movement in wrapped multiline text
        noremap <expr> k (v:count == 0 ? 'gk' : 'k')
        noremap <expr> j (v:count == 0 ? 'gj' : 'j')
        " Behaviour of cursor when scrolling horizontally
        "set virtualedit=all
    else
        " Back to default
        unmap k
        unmap j
        "set virtualedit=none
    endif
endfunction

" Set up autocommand to trigger WrapOptionChanged when 'wrap' option changes
au OptionSet wrap call WrapOptionChanged()

" Default: Turn off word wrapping
set nowrap

