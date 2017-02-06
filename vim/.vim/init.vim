set nocompatible

call plug#begin('~/.vim/bundle')

" Tpope
Plug 'tpope/vim-sensible'

Plug 'tpope/vim-abolish'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-unimpaired'

" Color Themes
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline-themes'

Plug 'kergoth/vim-hilinks'

" Utilities
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'christoomey/vim-tmux-navigator'
Plug 'editorconfig/editorconfig-vim'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'neomake/neomake'
Plug 'vim-airline/vim-airline'

" Languages
Plug 'sheerun/vim-polyglot'

" Misc
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'

call plug#end()

inoremap jj <Esc>

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set number

let base16colorspace=256
set background=light
colorscheme base16-solarized-light

set mouse=a
set spell

set completeopt=menu,menuone,preview,longest
set wildmode=longest,list,full
set whichwrap+=<,>,h,l,[,]

set wildignore+=node_modules,bower_components,coverage

set clipboard=unnamed

set updatetime=750

set undodir=~/.vim/temp/undo//
set backupdir=~/.vim/temp/backup//
set directory=~/.vim/temp/swp//

" For better file watching
set backupcopy=yes

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" CtrlP
let g:ctrlp_show_hidden = 1

" jsx
let g:jsx_ext_required = 0

" airline
let g:airline_theme='base16'
let g:airline_powerline_fonts = 1

" neomake
autocmd! BufWritePost,BufEnter * Neomake
let g:neomake_javascript_enabled_makers = ['eslint', 'flow']
let g:neomake_jsx_enabled_makers = ['eslint', 'flow']
let g:neomake_javascript_flow_exe = substitute(system('npm bin'), '\n$', '', '') . '/flow'
let g:neomake_javascript_eslint_exe = substitute(system('npm bin'), '\n$', '', '') . '/eslint'
