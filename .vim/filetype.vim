au BufRead,BufNewFile COMMIT_EDITMSG     setf git
let g:git_diff_spawn_mode=1

if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    au! BufRead,BufNewFile *.thtml setfiletype php
    au! BufRead,BufNewFile *.md setfiletype mkd
    au! BufRead,BufNewFile *.lhtml setfiletype html
augroup END
