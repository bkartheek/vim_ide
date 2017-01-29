set nocompatible               " be iMproved
filetype off                   " required!
" Search path automatic 
set path+=**
" line Numbers
set number          
" C+x C+n search term in the sam file
" C+x C+f search in file names in local directory
" C+n searcg the word anywhere in the system
" 
"Alternate menu items to look into
set wildmenu
set wildignore=*.o,*~,*.pyc


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

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
call plug#end()
 
" :PlugUpdate

filetype plugin indent on 
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
autocmd VimEnter * wincmd p

