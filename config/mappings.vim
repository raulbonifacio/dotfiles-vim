" Shows which highlight group the current word has. Very useful.
nnoremap <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

" Reloads vimrc.
nnoremap R <cmd> source $MYVIMRC <cr>

" Jumps to the next quickfix list entry.
nnoremap [q <cmd> copen \| cprev <cr>
nnoremap ]q <cmd> copen \| cnext <cr>
