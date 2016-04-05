if exists('b:current_syntax')
	finish
endif

syntax match todoUndone /^- .\+/

highlight link todoUndone Statement

let b:current_syntax = 'todo'
