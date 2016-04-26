if exists('b:current_syntax')
	finish
endif

syntax match todoUndone /^\s*- .\+/
syntax match todoImportant /^\s*!.\+/
syntax match todoUnimportant /^\s*_.\+/
syntax match todoCompleted /^\s*v.\+/
syntax match todoDeleted /^\s*x.\+/

highlight link todoUndone Statement
highlight link todoImportant Error
highlight link todoUnimportant Ignore
highlight link todoCompleted Ignore
highlight link todoDeleted Ignore

let b:current_syntax = 'todo'
