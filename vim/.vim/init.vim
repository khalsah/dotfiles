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
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'kergoth/vim-hilinks'

" Utilities
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'christoomey/vim-tmux-navigator'
Plug 'editorconfig/editorconfig-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'

" Languages
Plug 'sheerun/vim-polyglot'

" Misc
Plug 'godlygeek/tabular'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'

call plug#end()

inoremap jj <Esc>

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set number

" Enable True Color support in tmux
if &term =~# 'tmux'
  let &t_8f = "\e[38;2;%lu;%lu;%lum"
  let &t_8b = "\e[48;2;%lu;%lu;%lum"
endif

if $TERM =~# '256color'
  set termguicolors
endif

" Fix highlighting for spell checks in terminal
function! s:base16_customize() abort
  " Colors: https://github.com/chriskempson/base16/blob/master/styling.md
  " Arguments: group, guifg, guibg, ctermfg, ctermbg, attr, guisp
  call Base16hi("SpellBad",   g:base16_gui08, g:base16_gui00, g:base16_cterm08, g:base16_cterm00, "bold,undercurl", g:base16_gui08)
  call Base16hi("SpellCap",   g:base16_gui0A, g:base16_gui00, g:base16_cterm0A, g:base16_cterm00, "bold,undercurl", g:base16_gui0A)
  call Base16hi("SpellLocal",   g:base16_gui0D, g:base16_gui00, g:base16_cterm0D, g:base16_cterm00, "bold,undercurl", g:base16_gui0D)
  call Base16hi("SpellRare",   g:base16_gui0B, g:base16_gui00, g:base16_cterm0B, g:base16_cterm00, "bold,undercurl", g:base16_gui0B)

  hi htmlItalic cterm=italic gui=italic
  hi htmlBold cterm=bold gui=bold
endfunction

augroup on_change_colorschema
  autocmd!
  autocmd ColorScheme base16-* call s:base16_customize()
augroup END

colorscheme base16-tomorrow

set mouse=a
set spell

set completeopt=menu,menuone,preview,longest
set wildmode=longest,list,full
set whichwrap+=<,>,h,l,[,]

set wildignore+=node_modules,bower_components,coverage

set updatetime=750

set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swp//

" For better file watching
set backupcopy=yes

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" CtrlP
let g:ctrlp_show_hidden = 1

" jsx
let g:jsx_ext_required = 0

" Airline
let g:airline_theme='base16'

" ALE
let g:ale_linters = {
      \  'javascript': ['eslint', 'prettier'],
      \  'typescript': ['tsserver', 'tslint', 'prettier'],
      \  'css': ['prettier'],
      \  'scss': ['prettier'],
      \ }

let g:ale_fixers = {
      \ 'javascript': ['prettier'],
      \ 'typescript': ['prettier'],
      \ 'css': ['prettier'],
      \ 'scss': ['prettier'],
      \ }

let g:ale_fix_on_save = 1

" Switch between the last two files
nnoremap <Leader><Leader> <C-^>
