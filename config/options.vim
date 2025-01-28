
syntax on
set number
set relativenumber
set wildmenu
set notermguicolors
set noswapfile
set undofile
set undodir=$HOME/.config/vim/undodir
set path+=**
set background=dark
set updatetime=150
set tags=.ctags
set hidden
set incsearch
set hlsearch
set signcolumn=auto
set nowrap
set splitbelow
set signcolumn=yes
set completeopt+=noselect,noinsert
set completeopt-=preview
set listchars+=eol:$,space:·,tab:\ \ \¦
set tabstop=4
set softtabstop=4
set noexpandtab
set laststatus=2
set previewheight=10
set foldmethod=indent
set nofoldenable
set wildoptions=pum
set autoread
set switchbuf=uselast,useopen
set autoindent
set smartindent
set grepprg=grep\ -nHiRI

" For background color erase.
set t_ut=

colorscheme theme
