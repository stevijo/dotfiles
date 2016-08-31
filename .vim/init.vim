set runtimepath+=~/.dein/repos/github.com/Shougo/dein.vim/

if &compatible
	  set nocompatible
endif
call dein#begin('~/.vim/bundle')
call dein#add('Shougo/dein.vim', {'rtp': ''})
call dein#add('Shougo/unite.vim')
source ~/.vim/bundle.vim
call dein#end()
if dein#check_install()
	call dein#install()
endif

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
let base16colorspace=256
filetype plugin indent on
syntax enable
colorscheme base16-solarized-dark

set background=dark
set number
set clipboard=unnamed
set relativenumber
set tabstop=2
set smartcase
set expandtab
set shiftwidth=2
set noswapfile
set cc=79
set undofile
set undodir=~/.vim/temp/undodir
set completeopt-=preview

source ~/.vim/config/plugin/all.vim
source ~/.vim/config/bindings.vim
source ~/.vim/config/autocmds.vim
