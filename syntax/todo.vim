if exists('b:current_syntax')
	finish
endif

syntax match todoUndone /^\s*- .\+/
syntax match todoImportant /^\s*!.\+/

highlight link todoUndone Statement
highlight link todoImportant Error

let b:current_syntax = 'todo'
