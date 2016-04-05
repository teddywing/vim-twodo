if exists('b:current_syntax')
	finish
endif

" highlight Undone ctermbg=yellow ctermfg=235
" match Undone /^- .\+/

syntax match todoUndone /^- .\+/

highlight link todoUndone Statement

let b:current_syntax = 'todo'
