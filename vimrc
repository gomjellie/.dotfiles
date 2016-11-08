"mkdir -p ~/.vim/autoload ~/.vim/bundle && \ curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


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
set sw=4
set ts=4
set ai "Auto Indent
set ci "C style Indent
set si "Smart Indent
set wrap "Wrap lines 
colorscheme elflord
syntax on
set ruler


" I'm not sure that $LANG='kr' works
let $LANG='kr' 
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

" 파일 인코딩을 한국어로
if $LANG[0]=='k' && $LANG[1]=='o'
set fileencoding=korea
endif


"" NERDTree settings
"" key mappings 
let mapleader = ','
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

"subjects to change
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
