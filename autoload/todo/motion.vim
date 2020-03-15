let s:INCOMPLETE_MATCHER = '^\s*[\-_!] '


function! todo#motion#NextIncomplete()
	normal! m'
	call search(s:INCOMPLETE_MATCHER)
endfunction


function! todo#motion#PreviousIncomplete()
	normal! m'
	call search(s:INCOMPLETE_MATCHER, 'b')
endfunction
