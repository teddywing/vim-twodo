let s:INCOMPLETE_MATCHER = '^\s*[\-_!] '


function! s:Incomplete(extra_search_flags)
	let cnt = v:count1

	let search_flags = 's' . a:extra_search_flags

	let i = 0
	while i < cnt
		call search(s:INCOMPLETE_MATCHER, search_flags)
		let i += 1
	endwhile
endfunction


function! todo#motion#NextIncomplete()
	call s:Incomplete('')
endfunction


function! todo#motion#PreviousIncomplete()
	call s:Incomplete('b')
endfunction
