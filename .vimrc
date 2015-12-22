" Vundle Plugins
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Plug-ins
Plugin 'gmarik/vundle'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-fugitive'

filetype plugin indent on    " required

" Find a YCM conf in home page
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'                      
let g:ycm_confirm_extra_conf = 0


" vim configurations

let mapleader=";"
nmap <leader>o :NERDTree<cr>

" LaTeX (rubber) macro
nnoremap <leader>c :w<CR>:!latexmk -pdf %<CR>

" View PDF macro; '%:r' is current file's root (base) name.
nnoremap <leader>v :!mupdf %:r.pdf &<CR><CR>

set nu
set ai
set nobackup

set expandtab
set tabstop=2
set shiftwidth=2

imap jk <Esc>  

noremap ]] /[{}]<CR>
noremap [[ ?[{}]<CR>
