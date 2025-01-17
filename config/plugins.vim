let g:lsp_preview_float = 0
let g:lsp_semantic_enabled = 1
let g:lsp_signature_help_delay = 150
let g:lsp_hover_ui = 'preview'
let g:lsp_completion_documentation_enabled = 0

call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-sleuth'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'mattn/vim-lsp-settings'
call plug#end()

"let g:asyncomplete_enable_for_all = 0

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes

    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>r <plug>(lsp-rename)
    nmap <buffer> [s <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]s <plug>(lsp-next-diagnostic)
    nmap <buffer> <c-k> <plug>(lsp-hover)


endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
