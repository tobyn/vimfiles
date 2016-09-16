runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

set nocompatible
syntax on
filetype plugin indent on

set encoding=utf-8

set bs=2
set completeopt=menuone
set laststatus=2 ruler
set et ts=2 sts=2 sw=2
set wrap linebreak
set number
set ai nosi nocin
set scrolloff=10
set wildignore=bower_components,build,node_modules,target

let mapleader = ","

map <Leader>t :NERDTreeToggle<CR>

" Add more convenient EasyMotion bindings
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>l <Plug>(easymotion-lineforward)

" Don't load .editorconfig for files matching these patterns
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" Use The Silver Searcher instead of ack with ack.vim
let g:ackprg = 'ag --vimgrep'

" Open CtrlP in the current directory, unless we're in a VCS repo. In
" that case, open at the repo root.
let g:ctrlp_working_path_mode = 'ra'
nmap <Leader>o :CtrlP<CR>

let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_loc_list_height = 3
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_java_checkers = []
let g:syntastic_html_checkers = []

" Make emmet's abbreviation expansion easier to access
imap <expr> <C-e> emmet#expandAbbrIntelligent("\<Tab>")

" Remove trailing whitespace
nmap <Leader>w :FixWhitespace<CR>
