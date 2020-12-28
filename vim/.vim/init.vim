set nocompatible

let g:polyglot_disabled = ['markdown']

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
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-unimpaired'

" Color schemes and appearance
Plug 'chriskempson/base16-vim'
Plug 'kergoth/vim-hilinks'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Utilities
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'chrisbra/unicode.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'kana/vim-textobj-user'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'urbainvaes/vim-tmux-pilot'

" Language support and integration
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'

" Misc
Plug 'edkolev/tmuxline.vim'

call plug#end()

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set number

" Fix highlighting for spell checks in terminal
function! s:base16_customize() abort
  " Colors: https://github.com/chriskempson/base16/blob/master/styling.md
  " Arguments: group, guifg, guibg, ctermfg, ctermbg, attr, guisp
  call Base16hi("SpellBad",   g:base16_gui08, g:base16_gui00, g:base16_cterm08, g:base16_cterm00, "undercurl", g:base16_gui08)
  call Base16hi("SpellCap",   g:base16_gui0A, g:base16_gui00, g:base16_cterm0A, g:base16_cterm00, "undercurl", g:base16_gui0A)
  call Base16hi("SpellLocal",   g:base16_gui0D, g:base16_gui00, g:base16_cterm0D, g:base16_cterm00, "undercurl", g:base16_gui0D)
  call Base16hi("SpellRare",   g:base16_gui0B, g:base16_gui00, g:base16_cterm0B, g:base16_cterm00, "undercurl", g:base16_gui0B)

  hi htmlItalic cterm=italic gui=italic
  hi htmlBold cterm=bold gui=bold
  hi Statement cterm=bold gui=bold
endfunction

augroup on_change_colorschema
  autocmd!
  autocmd ColorScheme base16-* call s:base16_customize()
augroup END

set background=light
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

" Airline
let g:airline_theme = 'base16'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = '│'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '│'
let g:airline_skip_empty_sections = 1

" Tmuxline
let g:airline#extensions#tmuxline#snapshot_file = "~/.tmux/tmuxline.conf"
let g:tmuxline_powerline_separators = 0
let g:tmuxline_separators = {
      \ 'left': '',
      \ 'left_alt': '│',
      \ 'right': '',
      \ 'right_alt': '│'
      \ }

" FZF
nnoremap <silent> <C-p> :Files<CR>

" ALE
nmap K <Plug>(ale_hover)
nmap gd <Plug>(ale_go_to_definition)

let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1

let g:ale_c_parse_compile_commands = 1
let g:ale_c_clangd_options = '-background-index'

let g:ale_linters = {
      \ 'c': ['clangd'],
      \ 'javascript': ['eslint'],
      \ 'typescript': ['eslint', 'tsserver'],
      \ 'typescriptreact': ['eslint', 'tsserver'],
      \ 'vue': ['eslint', 'vls'],
      \ 'ruby': ['rubocop', 'solargraph'],
      \ 'rust': ['analyzer'],
      \ 'html': [],
      \ }

let g:ale_fixers = {
      \ 'c': ['clang-format'],
      \ 'css': ['prettier'],
      \ 'scss': ['prettier'],
      \ 'javascript': ['prettier'],
      \ 'typescript': ['prettier'],
      \ 'typescriptreact': ['prettier'],
      \ 'vue': ['prettier'],
      \ 'rust': ['rustfmt'],
      \ 'html': ['prettier'],
      \ }


" Hybrid line numbers in normal mode
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
augroup END

" Assume C not C++ in .h files
let g:c_syntax_for_h = 1

" Misc Mappings
nnoremap <Leader><Leader> <C-^>
inoremap jj <Esc>
