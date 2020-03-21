let s:INCOMPLETE_MATCHER = '^\s*[\-_!] '


function! s:Incomplete(search_flags)
	let cnt = v:count1

	normal! m'

	let i = 0
	while i < cnt
		call search(s:INCOMPLETE_MATCHER, a:search_flags)
		let i += 1
	endwhile
endfunction


function! todo#motion#NextIncomplete()
	call s:Incomplete('')
endfunction


function! todo#motion#PreviousIncomplete()
	call s:Incomplete('b')
endfunction
