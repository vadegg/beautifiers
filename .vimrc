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
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'fatih/vim-go'
let g:go_fmt_autosave = 1
Bundle 'cespare/vjde'
Bundle 'nvie/vim-flake8'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

Bundle 'altercation/vim-colors-solarized'
" All of your Plugins must be added before the following line
call vundle#end()            " required
colorscheme lucario
filetype plugin indent on    " required

"Pathogen for python options
execute pathogen#infect()
"vim-flake8 for python options
"autocmd FileType python map <buffer> <F5> :call Flake8()<CR>
"let g:pep8_map='whatever' 
"let g:flake8_show_in_file=0
"let g:flake8_error_marker='EE'     " set error marker to 'EE'
"let g:flake8_warning_marker='WW'   " set warning marker to 'WW'
"let g:flake8_pyflake_marker='WW'     " disable PyFlakes warnings
"let g:flake8_complexity_marker='WW'  " disable McCabe complexity warnings
"let g:flake8_naming_marker='WW'      " disable naming warnings

let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]
let g:no_of_ID_Files=2 
"let g:srchJdPlugin oc_loc="~/.vim/srchJdoc.sh" 
au FileType java let browser="links" 
"au FileType java ! /Applications/Eclipse\ Java.app/Contents/Eclipse/eclimd
nmap <F4> :call OpenJavadoc()<CR><CR> 


set nolist
