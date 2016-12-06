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
Plugin 'valloric/youcompleteme'
"
" YouCompleteMe added

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
let $LANG='ko' 
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

set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

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

"execute pathogen#infect()
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1


"for python JEDI
let g:jedi#completions_enabled = 0
let g:jedi#auto_initialization=1
let g:jedi#auto_vim_configuration=0
let g:jedi#use_tabs_not_buffers=1
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#popup_on_dot = 1
let g:jedi#popup_select_first=0
let g:jedi#show_call_signatures="2"

"subjects to change
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>f"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#comkletions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

" Add the virtualenv's site-packages to vim path
if has('python')
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
endif

" You Complete Me
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_auto_trigger = 1
let g:ycm_filetype_whitelist = { '*': 1}
let g:ycm_filetype_blacklist = { 'c': 1}
let g:ycm_show_diagnostics_ui = 0
