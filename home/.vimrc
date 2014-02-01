set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

filetype plugin indent on     " required!
set number
set cc=81
set encoding=utf-8

" Theme
Bundle 'flazz/vim-colorschemes'
colorscheme solarized 

" Set leader
let mapleader = ","

" NERDTree
Bundle 'scrooloose/nerdtree'
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" Ctrl-P - file navigation
Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-t>'
let g:ctrlp_max_height = 30

" Lightline
Bundle 'itchyny/lightline.vim'
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'component': {
      \   'readonly': '%{&readonly?"⭤":""}',
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }

" Fugitive - git wrapper for vim
Bundle 'tpope/vim-fugitive'
" kill fugitive buffers on hide
augroup KillFugitiveBuffers
  autocmd!
  autocmd BufReadPost fugitive://* set bufhidden=delete
augroup end
	
" Rails - plugin for making working with rails nicer
Bundle 'tpope/vim-rails'

" Commentary - add mapping for easy commenting of lines
Bundle 'tpope/vim-commentary'

" Surround - mappings for adding "surrounding" punctuation/tags/etc.
Bundle 'tpope/vim-surround'

" vim plugin to change the contents of the innermost 'surrounding'
" Bundle 'briandoll/change-inside-surroundings'

" CocoaPods
au BufNewFile,BufRead Podfile,*.podspec      set filetype=ruby


