set nocompatible
filetype off

set exrc
set secure

syntax on
set nu

map <esc><esc> :set rnu!<cr>
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
set backspace=2

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Bundle 'altercation/vim-colors-solarized'
Plugin 'python-mode'
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set laststatus=2 
set statusline=%f       "tail of the filename
set statusline+=\       "tail of the filename
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=%{&paste?'=':'\ '} 
set completeopt-=preview

hi clear
colorscheme lucario
autocmd FileType python setlocal colorcolumn=80
set mousehide
" Курсор
set cuc cul
highlight CursorLine                    cterm=none ctermbg=none
highlight CursorColumn                  cterm=none ctermbg=none
filetype plugin on
filetype indent on
set nofoldenable
let g:pymode_lint_on_write = 0
let g:pymode_lint_cwindow = 0
let g:pymode_rope_completion_bind = '<C-n>'

