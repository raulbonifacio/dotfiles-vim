augroup Autocmds
    autocmd!
    autocmd BufWritePre  * %s/\s\+\n/\r/e
augroup END
