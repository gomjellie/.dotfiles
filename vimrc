" \ ' ')/

function! BEGIN () 
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endfunction

function! Init ()
    if has('vim_starting')
        call BEGIN()
    endif

    " 구문 강조
    sy enable

    " 줄 번호 표시
    set number numberwidth=4

    " 탭 대신 스페이스
    set expandtab 

    " 탭 길이 설정
    set shiftwidth=3 tabstop=3 softtabstop=3 

    " 검색 결과를 하이라이트
    set hlsearch 

    " 호환 모드 사용하지 않음
    set nocompatible

    " 커서 위치 표시  
    set ruler

    " 터미널 제목 설정
    set title


    " 파일 변경시 자동 로드
    set autoread
    
    
    
    call MapFileType()
    call MapKeys()
    call NeoBundleInit()

    let termType = $TERM

    if termType != "linux"
        " 256색
        set t_Co=256
        "colorscheme oxeded
        colorscheme elflord
    else 
        colorscheme elflord
    endif

endfunction

function! NeoBundleInit() 
    call neobundle#begin(expand('~/.vim/bundle/'))
        NeoBundleFetch 'Shougo/neobundle.vim'

        NeoBundle "tyru/caw.vim"
        NeoBundle "Shougo/neocomplete.vim"
        NeoBundle "osyo-manga/vim-marching"
        " NeoBundle "c9s/perlomni.vim"
        NeoBundle "queyenth/oxeded.vim"
        NeoBundle "vim-jp/cpp-vim" , { 'autoload': { 'filetypes': 'cpp' } }
    call neobundle#end()

    filetype plugin indent on
    NeoBundleCheck

    
    " neocomplete config 
        " enable neocomplete at startup
        let g:neocomplete#enable_at_startup = 1
        " do not skip autocompletion 
        let g:neocomplete#skip_auto_completion_time = ""
        let g:neocomplete#sources#syntax#min_keyword_length = 3
        let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
        let g:neocomplete#enable_smart_case = 1

        " Define keyword.
        if !exists('g:neocomplete#keyword_patterns')
            let g:neocomplete#keyword_patterns = {}
        endif
        let g:neocomplete#keyword_patterns['default'] = '\h\w*'




        if !exists('g:neocomplete#sources#omni#input_patterns')
          let g:neocomplete#sources#omni#input_patterns = {}
        endif

        if !exists('g:neocomplete#force_omni_input_patterns')
          let g:neocomplete#force_omni_input_patterns = {}
        endif

        autocmd FileType cpp setlocal path=.,/usr/include,/usr/local/include
        autocmd FileType c   setlocal path=.,/usr/include,/usr/local/include


        let g:neocomplete#force_omni_input_patterns.c =
              \ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
        let g:neocomplete#force_omni_input_patterns.cpp =
              \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
        let g:neocomplete#force_omni_input_patterns.objc =
              \ '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)'
        let g:neocomplete#force_omni_input_patterns.objcpp =
              \ '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)\|\h\w*::\w*'
        "let g:neocomplete#sources#omni#input_patterns.perl =
        "      \ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

    " end
    
    " vim-marching config
        let g:marching_backend = "sync_clang_command"
        let g:marching_clang_command_option="-std=c++14"
        
        
        let g:clang_complete_auto = 0
        let g:clang_auto_select = 0
        let g:clang_default_keymappings = 0

    " end

endfunction

function! MapFileType() 
    " Perl Mojolicious Template
    autocmd BufRead,BufNewFile *.html.ep set filetype=html
endfunction

function! MapKeys() 
    map <leader>c :call CommentLines(1)<CR>
    map <leader>C :call CommentLines(0)<CR>

    " vimrc 다시 불러오기
    map <leader>R :so $MYVIMRC<CR>
endfunction

function! CommentLines(comment) range
    " OMGWTF
    if &filetype == "perl" || &filetype == "python" " is Perl/Python script file
        if a:comment == 1
            execute a:firstline . "," . a:lastline . 's/^/# /'
        else
            execute a:firstline . "," . a:lastline . 's/^# //'
        endif
    else
        if a:comment == 1
            execute a:firstline . "," . a:lastline . 's/^/\/\/ /'
        else
            execute a:firstline . "," . a:lastline . 's/^\/\/ //'
        endif
    endif
endfunction

function! HelloPerl() 
perl << HELLOPERL
    # http://vimdoc.sourceforge.net/htmldoc/if_perl.html
    VIM::Msg("Hello, World!");
HELLOPERL
endfunction

call Init()
