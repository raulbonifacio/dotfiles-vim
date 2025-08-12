
" Only do this when not done yet for this buffer
if exists("b:did_c_config")
	finish
endif

let b:did_c_config = 1

"Configure clang-format.
if executable('clang-format')
	setlocal formatprg=clang-format\ -style=file
endif

" Add handy mapping for header and source file alternation.
let extension = expand('%:e')
let filename = expand('%:r')

if extension == 'c'
	execute 'nnoremap <buffer> <leader>a <cmd> edit '. filename .'.h <cr>'
elseif extension == 'h'
	execute 'nnoremap <buffer> <leader>a <cmd> edit '. filename .'.c <cr>'
endif
