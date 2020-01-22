set textwidth=80
set nocompatible
syntax on
set showcmd
set t_Co=256
set expandtab
set softtabstop=4
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set nu
set cul
set cuc
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set showmatch
set tabstop=4
set shiftwidth=4
set autoindent
set paste
set laststatus=2
set ruler
set hlsearch
set incsearch
set ignorecase
set smartcase
set spell spelllang=en_us
set autochdir
set noerrorbells
set history=1000
set listchars=tab:»■,trail:■
set list
set visualbell
filetype plugin indent on
map <F5> :call RunPython()<CR>
func! RunPython()
    exec "W"
    if &filetype == 'python'
        exec "!time python3.7 %"
    endif
endfunc
autocmd BufWritePost $MYVIMRC source $MYVIMRC
