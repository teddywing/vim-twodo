" Copyright (c) 2016 Teddy Wing
"
" Twodo is free software: you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation, either version 3 of the License, or
" (at your option) any later version.
"
" Twodo is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
" GNU General Public License for more details.
"
" You should have received a copy of the GNU General Public License
" along with Twodo. If not, see <http://www.gnu.org/licenses/>.

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
