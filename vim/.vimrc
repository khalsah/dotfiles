runtime bundle/vim-pathogen/autoload/pathogen.vim

execute pathogen#infect()

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set number

syntax enable
set t_Co=16
set background=light
colorscheme solarized
filetype plugin indent on

set mouse=a
set spell

set completeopt=menu,menuone,preview,longest
set wildmode=longest,list,full
set whichwrap+=<,>,h,l,[,]

set wildignore+=node_modules,bower_components,coverage

" Better split switching (Ctrl-j, Ctrl-k, Ctrl-h, Ctrl-l)
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" CtrlP
let g:ctrlp_show_hidden = 1

" jsx
let g:jsx_ext_required = 0
