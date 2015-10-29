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

" Better split switching (Ctrl-j, Ctrl-k, Ctrl-h, Ctrl-l)
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

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

" vim-test
let test#strategy = "dispatch"
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Enable per project .vimrc (LEAVE AT END OF FILE)
set exrc
set secure

