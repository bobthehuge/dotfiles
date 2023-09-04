set nocompatible

call plug#begin()

	Plug 'preservim/nerdtree'
	Plug 'morhetz/gruvbox'
	Plug 'tpope/vim-commentary'
	Plug 'joshdick/onedark.vim'
	Plug 'sheerun/vim-polyglot'

call plug#end()

syntax on

let mapleader="!"
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set termguicolors
set relativenumber
set number
set background=dark
set mouse=a
set foldmethod=manual

let g:colorcolumn_state=0

colorscheme gruvbox

autocmd VimEnter * loadview
autocmd VimLeave * mkview

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
