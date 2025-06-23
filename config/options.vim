
let g:c_syntax_for_h = 1
let g:c_space_errors = 1
let g:c_functions = 1
let g:c_function_pointers = 1

" For background color erase.
set t_ut=
set t_Co=16
set background=dark

syntax on
colorscheme theme

set number
set relativenumber
set wildmenu
set notermguicolors
set noswapfile
set undofile
set undodir=$HOME/.config/vim/undodir
set path+=**
set updatetime=150
set tags=.ctags
set hidden
set incsearch
set hlsearch
set signcolumn=auto
set nowrap
set splitbelow
set signcolumn=yes
set completefuzzycollect=keyword,whole_line,files
set listchars+=eol:$,space:·,tab:\ \ \¦
set fillchars+=vert:\ "Space in here
set tabstop=4
set shiftwidth=4
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

