set nocompatible              " be iMproved, required
filetype on                 " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'bling/vim-airline'

Plugin 'kshenoy/vim-signature'

Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-repeat'

Plugin 'tomasr/molokai'

Plugin 'neovimhaskell/haskell-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

syntax on
set laststatus=2

" Nicen airline
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

" Various useful things
set t_Co=256
set nu
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set encoding=utf-8
set mouse=a

" Trailing whitespace highlighting
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

" Nicen colour scheme for transparency
let g:rehash256=1
let g:molokai_original=1
colorscheme molokai
hi Normal ctermbg=none

" Useful macros
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <F4> :set paste<CR>
nnoremap <F3> :set nopaste<CR>
nnoremap gf :Texplore<CR>
nnoremap <C-n> :wqa!<CR>

" Use :W to write with sudo privelages if was forgotten
command W w !sudo tee %

" Use system clipboard
set clipboard^=unnamed,unnamedplus

" Autoindent
filetype plugin indent on
