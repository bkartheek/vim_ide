set nocompatible               " be iMproved
filetype off                   " required!
set path+=**

set number          

set cindent
set autoindent
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set backspace=indent,eol,start

set nobackup
set nowb
set noswapfile

set encoding=utf8
set ffs=unix,dos,mac

set wildmenu
set wildignore=*.o,*~,*.pyc

set autoread
set history=700

set ignorecase
set smartcase
set hlsearch
set lazyredraw
set magic
set showmatch

set noerrorbells
set novisualbell
set t_vb=
set tm=500

filetype plugin on
filetype indent on
syntax enable

autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-airline/vim-airline'

filetype plugin indent on 
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
autocmd VimEnter * wincmd p

