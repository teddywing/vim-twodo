if exists('b:current_syntax')
	finish
endif

syntax match todoUndone /^\s*- .\+/

highlight link todoUndone Statement

let b:current_syntax = 'todo'
