set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Tpope
Plugin 'tpope/vim-sensible'

Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-tbone'
Plugin 'tpope/vim-unimpaired'

" Color Themes
Plugin 'chriskempson/base16-vim'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'kergoth/vim-hilinks'

" Utilities
Plugin 'airblade/vim-gitgutter'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'

" Languages
Plugin 'sheerun/vim-polyglot'

" Misc
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'

call vundle#end()
filetype plugin indent on

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set number

let base16colorspace=256
set background=light
colorscheme base16-solarized

set mouse=a
set spell

set completeopt=menu,menuone,preview,longest
set wildmode=longest,list,full
set whichwrap+=<,>,h,l,[,]

set wildignore+=node_modules,bower_components,coverage

set clipboard=unnamed

set updatetime=750

" CtrlP
let g:ctrlp_show_hidden = 1

" jsx
let g:jsx_ext_required = 0

" airline
let g:airline_theme='base16'
let g:airline_powerline_fonts = 1

" neocomplete
" source ~/.vim/neocomplete.vim

" neosnippet
" source ~/.vim/neosnippet.vim

" vim-test
let test#strategy = "dispatch"
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
