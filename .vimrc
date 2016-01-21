set nocompatible              " be iMproved, required
filetype on                 " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'https://github.com/bling/vim-airline'

Plugin 'https://github.com/Valloric/YouCompleteMe'

Plugin 'https://github.com/kshenoy/vim-signature'

Plugin 'https://github.com/tpope/vim-surround'

Plugin 'https://github.com/tpope/vim-repeat'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
syntax on
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

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

let g:rehash256=1
let g:molokai_original=1
colorscheme molokai

"let g:ycm_server_log_level = "debug"
let g:ycm_confirm_extra_conf = 0
let g:ycm_goto_buffer_command = 'new-tab'

nnoremap gd : YcmCompleter GoTo<CR>

nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>

nnoremap <F4> :set paste<CR>
nnoremap <F3> :set nopaste<CR>

nnoremap gf :Texplore<CR>

command W w !sudo tee %

set clipboard=unnamedplus

filetype plugin indent on
