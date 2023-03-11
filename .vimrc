set nocompatible
colo industry
syntax on
filetype plugin indent on
" show line numbers
set number
" highlight current line
set cursorline

" INDENT OPTIONS
" number of spaces when tab keypress
set tabstop=4
" convert tabs to spaces
set expandtab
" insert tabstop number of spaces, and not a tab character when tab keypress
set smarttab
" indent with shiftwidth number of spaces when shifting
set shiftwidth=4
" when shifting, round to nearest multiple of shiftwidth number
set shiftround
set cindent
" new lines inherit previous line indentation
set autoindent
" disable indenting with paste mode
set pastetoggle=<f5>

autocmd FileType yml,yaml setlocal ts=2 sw=2 smarttab expandtab 

" SEARCH OPTIONS
" search highlighting
set hlsearch
" ignore case when searching
set ignorecase
" if searching an uppercase letter, don't ignorecase
set smartcase
" show partial matches when searching
set incsearch
" PERFORMANCE OPTIONS
" don't search included files when ctrl+p autocomplete
set complete-=i
" don't update screen during macro and script execution
set lazyredraw

" UI OPTIONS
" change title to current file
set title
" always display status bar
set laststatus=2
" show cursor rownumber and column number in statusbar
set ruler
" show tab complete options as a menu
set wildmenu
set wildmode=list:longest,full
" disable beep on errors
set noerrorbells
" flash screen instead of beeping on errors
set visualbell
" use mouse for scrolling and resizing
set mouse=a

" FOLDING OPTIONS
" fold based on indentation levels
set foldmethod=indent
" fold up to 3 nested levels
set foldnestmax=3
" disable folding by default
set nofoldenable

" OTHER OPTIONS
" increase undo limit
set history=1000
" don't list these files
set wildignore+=*.pyc,*.swp
" interpret octal as decimals when incrementing numbers
set nrformats-=octal
" backspace over indentation from autoindent, backspace over eol to join with
" line above, backspace past position where you started to insert
set backspace=indent,eol,start
