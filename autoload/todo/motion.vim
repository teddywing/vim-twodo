let s:INCOMPLETE_MATCHER = '^\s*[\-_!] '


function! todo#motion#NextIncomplete()
	let cnt = v:count1

	normal! m'

	let i = 0
	while i < cnt
		call search(s:INCOMPLETE_MATCHER)
		let i += 1
	endwhile
endfunction


function! todo#motion#PreviousIncomplete()
	normal! m'
	call search(s:INCOMPLETE_MATCHER, 'b')
endfunction
