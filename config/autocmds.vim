
function s:setup_c_file()
	"Configure clang-format.
	if executable('clang-format')
		setlocal formatprg=clang-format\ -style=file
	endif

	" Add handy mapping for header and source file alternation.
	let extension = expand('<afile>:e')
	let filename = expand('<afile>:r')

	if extension == 'c'
		execute 'nnoremap <buffer> <leader>a <cmd> edit '. filename .'.h <cr>'
	elseif extension == 'h'
		execute 'nnoremap <buffer> <leader>a <cmd> edit '. filename .'.c <cr>'
	endif

endfunction

augroup Autocmds
autocmd!
autocmd BufEnter *.[ch] call s:setup_c_file()
autocmd BufWritePre  * %substitute/\s\+\n/\r/e
augroup END
