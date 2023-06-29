syntax on

set clipboard=unnamedplus
set number
set signcolumn=yes
set encoding=UTF-8
set mouse=a
set nocompatible
set tabstop=4
set shiftwidth=4
set expandtab


highlight clear SignColumn
highlight LineNr ctermfg=grey

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'ycm-core/YouCompleteMe'
Plug 'lambdalisue/suda.vim'
Plug 'tpope/vim-commentary'
Plug 'iamcco/markdown-preview.nvim'

call plug#end()

let g:airline_theme='dark'
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_powerline_fonts = 1

let g:ycm_auto_trigger = 1

nnoremap <C-t> :NERDTreeToggle <CR>
