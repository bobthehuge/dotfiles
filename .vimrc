set nocompatible

call plug#begin()

    Plug 'preservim/nerdtree'
    Plug 'tpope/vim-commentary'
    Plug 'sheerun/vim-polyglot'

call plug#end()

syntax on

let mapleader="!"
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
" set termguicolors
set relativenumber
set number
set background=dark
set mouse=a
set foldmethod=manual
set list
set listchars=tab:>-

let g:colorcolumn_state=0
let g:gruvbox_material_background='hard'
let g:gruvbox_material_better_performance=1

" colorscheme gruvbox-material

autocmd VimEnter * loadview
autocmd VimLeave * mkview
autocmd BufRead,BufNewFile ~/prog/68k/*.asm set syntax=asm68k

def ColorColumnToggle()
    if g:colorcolumn_state == 0
        set colorcolumn=80
        g:colorcolumn_state = 1
    else
        set colorcolumn=0
        g:colorcolumn_state = 0
    endif
enddef

noremap <C-t> :NERDTreeToggle<CR>
noremap <Leader>cc :call ColorColumnToggle()<CR>
