syntax on
set clipboard=unnamedplus
set number
highlight LineNr ctermfg=grey
set signcolumn=yes
highlight clear SignColumn
set encoding=UTF-8
set mouse=a

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'scroolloose/nerdtree'
Plug 'bling/vim-bufferline'

call plug#end()

let g:airline_theme='dark'
nnoremap <C-t> :NERDTreeToggle <CR>
