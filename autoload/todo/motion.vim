" Copyright (c) 2020, 2021 Teddy Wing
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

let s:INCOMPLETE_MATCHER = '^\s*[\-_!] '
let s:REGULAR_MATCHER = '^\s*- '
let s:IMPORTANT_MATCHER = '^\s*! '


function! s:Search(pattern, extra_search_flags)
	let cnt = v:count1

	let search_flags = 's' . a:extra_search_flags

	let i = 0
	while i < cnt
		call search(a:pattern, search_flags)
		let i += 1
	endwhile
endfunction


function! todo#motion#NextIncomplete()
	call s:Search(s:INCOMPLETE_MATCHER, '')
endfunction


function! todo#motion#PreviousIncomplete()
	call s:Search(s:INCOMPLETE_MATCHER, 'b')
endfunction


function! todo#motion#NextRegular()
	call s:Search(s:REGULAR_MATCHER, '')
endfunction


function! todo#motion#PreviousRegular()
	call s:Search(s:REGULAR_MATCHER, 'b')
endfunction


function! todo#motion#NextImportant()
	call s:Search(s:IMPORTANT_MATCHER, '')
endfunction


function! todo#motion#PreviousImportant()
	call s:Search(s:IMPORTANT_MATCHER, 'b')
endfunction
