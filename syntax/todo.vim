if exists('b:current_syntax')
	finish
endif

syntax match todoUndone /^\s*- .\+/
syntax match todoImportant /^\s*!.\+/
syntax match todoUnimportant /^\s*_.\+/

highlight link todoUndone Statement
highlight link todoImportant Error
highlight link todoUnimportant Ignore

let b:current_syntax = 'todo'
