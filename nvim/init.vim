" ~/.vimrc

call plug#begin('~/.local/share/nvim/site/plugged')

 " appearance
 Plug 'vv9k/bogster'
 Plug 'joshdick/onedark.vim'
 Plug 'itchyny/lightline.vim'
 
 " utils
 Plug 'preservim/nerdtree'
 
 " auto-completion
 Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
 Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
 Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

 " syntax highlighting
 Plug 'sheerun/vim-polyglot'
 Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

" Add Lua configuration
source $HOME/.config/nvim/initlua.vim

" calls COQ auto-completion with silent flag
let g:coq_settings = { 'auto_start': 'shut-up' }

" let g:onedark_termcolors = 16

execute pathogen#infect('bundle/{}', '~/.config/nvim/bundle/{}')
filetype indent plugin on
syntax enable

set cc=80
set number
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8
set smarttab
set smartindent
set cindent
set textwidth=80
set backspace=eol,start,indent
set clipboard=unnamedplus
set belloff=all
set colorcolumn=0
set splitbelow

set background=dark
colorscheme bogster

let g:slime_target = "vimterminal"

noremap <silent> <C-S-Up> :resize -1<CR>
noremap <silent> <C-S-Down> :resize +1<CR>
noremap <C-Insert> :tabnew<CR>
noremap <C-Delete> :tabclose<CR>
noremap <tab> :tabnext<CR>
noremap <S-tab> :tabprev<CR>
noremap <C-t> :NERDTreeToggle<CR>

