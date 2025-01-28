
" Plugin Registration.
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-sleuth'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'mattn/vim-lsp-settings'
call plug#end()

" LSP configuration.
let g:lsp_preview_float = 0
let g:lsp_semantic_enabled = 1
let g:lsp_semantic_delay = 0
let g:lsp_signature_help_enabled = 1
let g:lsp_signature_help_delay = 10000
let g:lsp_hover_ui = 'preview'
let g:lsp_diagnostics_virtual_text_enabled = 0
let g:lsp_completion_documentation_enabled = 0
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_document_highlight_enabled = 0

function! s:on_lsp_buffer_enabled() abort

    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes

    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gD <plug>(lsp-type-definition)
    nmap <buffer> [s <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]s <plug>(lsp-next-diagnostic)
    nmap <buffer> <c-k> <plug>(lsp-hover)
    nmap <buffer> <leader>r <plug>(lsp-rename)
    nmap <buffer> <leader><space> <plug>(lsp-code-action)

endfunction

function! LspEnable()
    call lsp#enable()
    echo "LSP enabled globally."
endfunction

function! LspDisable()
    call lsp#disable()
    echo "LSP disabled globally."
endfunction

nnoremap <leader>le <cmd> call LspEnable() <cr>
nnoremap <leader>ld <cmd> call LspDisable() <cr>

" Asyncomplete configuration.
function! AsyncompleteEnable()
	let b:asyncomplete_enable = 1
    echo "Asyncomplete enabled for buffer."
endfunction

function! AsyncompleteDisable()
	let b:asyncomplete_enable = 0
    echo "Asyncomplete disabled for buffer."
endfunction

nnoremap <leader>ce <cmd> call AsyncompleteEnable() <cr>
nnoremap <leader>cd <cmd> call AsyncompleteDisable() <cr>

" Gitgutter configuration.
let g:gitgutter_set_sign_backgrounds = 0
highlight link GitGutterAdd    DiffAdd
highlight link GitGutterChange DiffChange
highlight link GitGutterDelete DiffDelete

augroup lsp_install

	" Clear autocmds.
    autocmd!

    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()

augroup END
