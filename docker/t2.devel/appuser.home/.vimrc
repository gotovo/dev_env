" # 2023-08-21 - vim config adjustments
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set ruler
syntax on
set mouse=""
" filetype plugin indent on
set background=dark
" " set background=light

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd        " Show (partial) command in status line.
set showmatch      " Show matching brackets.
set ignorecase     " Do case insensitive matching
set smartcase      " Do smart case matching
set incsearch      " Incremental search
"set autowrite      " Automatically save before commands like :next and :make
set hidden     " Hide buffers when they are abandoned
" set mouse=a        " Enable mouse usage (all modes)
"
set hlsearch      " highlight search
