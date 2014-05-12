set number
set clipboard+=unnamed

syntax on

au BufRead,BufNewFile *.spec setfiletype python

set pastetoggle=<F2>

set backupdir=~/.vim/backup/
set directory=~/.vim/backup/

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

set backspace=2

inoremap # X<BS>#

set hlsearch
noremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>
nnoremap <leader>t :CtrlPTag<CR>

command Pyin !pyinstaller % -y

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
Bundle 'davidhalter/jedi-vim'
Bundle 'kien/ctrlp.vim'
" Bundle 'terryma/vim-multiple-cursors'
"vim-scripts repos
Bundle 'scrooloose/syntastic'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
