
" Generate ctags.
command -nargs=+ -complete=file CTags !ctags --verbose=yes --kinds-all=* -R -f .ctags <args>
