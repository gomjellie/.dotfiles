set shell=/bin/bash
set nocompatible 
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"" All of your Plugins must be added before the following line

"let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" nerdtree added
Plugin 'scrooloose/nerdtree'
" syntastic
Plugin 'scrooloose/syntastic'
" Plugin 'Shougo/neocomplcache.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'edkolev/tmuxline.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'OmniCppComplete'
"
" YouCompleteMe added
" Bundle 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required
"
"##########################################################"
set nu
set sw=3
set ts=3
set ai
set ci
set si
colorscheme elflord
syntax on

"" NERDTree settings
"" key mappings 
let mapleader = '`'
"autocmd vimenter * NERDTree
"nmap <C-e> :NERDTreeToggle<CR>" ctrl+e -> mapped to open tree
""new tab : `+t
"nmap <leader>t :enew<cr>
""nxt tab : `+l
"nmap <leader>l :bnext<CR>
""prev tab : `+h
"nmap <leader>h :bprevious<CR>
""close tab : `+w
"nmap <leader>w :bp <BAR> bd #<cr>
"
"
"" neocomplcache settings
"let g:neocomplcache_enable_at_startup = 1
"
" vim-airline settings
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
"
" solarized settings
"set background=light
"let g:solarized_termcolors=256
"let g:solarized_termtrans = 0
"let g:solarized_degrade = 1
"let g:solarized_bold = 1
"let g:solarized_visibility = "high"
"colorscheme solarized
execute pathogen#infect()
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1


"for python JEDI
let g:jedi#auto_initialization=1
let g:jedi#auto_vim_configuration=0
let g:jedi#use_tabs_not_buffers=1
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#popup_on_dot = 1
let g:jedi#popup_select_first=0
let g:jedi#show_call_signatures="1"

