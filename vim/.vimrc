runtime bundle/vim-pathogen/autoload/pathogen.vim

execute pathogen#infect()

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set number

set t_Co=16
set background=light
colorscheme solarized

set mouse=a
set spell

set completeopt=menu,menuone,preview,longest
set wildmode=longest,list,full
set whichwrap+=<,>,h,l,[,]

set wildignore+=node_modules,bower_components,coverage

set clipboard=unnamed

" CtrlP
let g:ctrlp_show_hidden = 1

" jsx
let g:jsx_ext_required = 0

" airline
let g:airline_powerline_fonts = 1

" neocomplete
source ~/.vim/neocomplete.vim

" neosnippet
source ~/.vim/neosnippet.vim
