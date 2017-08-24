set nocompatible
filetype off

set exrc
set secure

syntax on
set nu

set wildmenu
nmap <F3> :tabnew<Space>
nmap <F2> :tabnext<CR>
nmap <F1> :tabprevious<CR>

imap <F3> <ESC>:tabnew<Space>
imap <F2> <ESC>:tabnext<CR>
imap <F1> <ESC>:tabprevious<CR> 
"mappings for arrow keys
map <up> :echo 'HEXOPOWO ATATA'<CR>
map <down> :echo 'HEXOPOWO ATATA'<CR>
map <right> :echo 'HEXOPOWO ATATA'<CR>
map <left> :echo 'HEXOPOWO ATATA'<CR>

imap <up> <ESC> :echo 'HEXOPOWO ATATA'<CR>
imap <down> <ESC> :echo 'HEXOPOWO ATATA'<CR>
imap <right> <ESC> :echo 'HEXOPOWO ATATA'<CR>
imap <left> <ESC> :echo 'HEXOPOWO ATATA'<CR>

set nu
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set hlsearch
set incsearch
set ic

set listchars=eol:┐
",tab:▹\ 
set list
set noswapfile
set path+=**
set term=screen-256color
set t_Co=256
command! W w

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin 'fatih/vim-go'
" let g:go_fmt_autosave = 1

Bundle 'altercation/vim-colors-solarized'
" All of your Plugins must be added before the following line
call vundle#end()            " required

colorscheme lucario
filetype plugin indent on    " required

"Pathogen for python options
execute pathogen#infect()

set nolist
