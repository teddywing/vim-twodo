function! todo#Escalate()
	let todo = getline('.')

	" First non-whitespace character
	let col = match(todo, '\S')

	let priority = todo[col]

	if priority ==# '_'
		let todo = substitute(todo, '_', '-', '')
	elseif priority ==# '-'
		let todo = substitute(todo, '-', '!', '')
	endif

	call setline(line('.'), todo)
endfunction


function! todo#Descalate()
	let todo = getline('.')

	" First non-whitespace character
	let col = match(todo, '\S')

	let priority = todo[col]

	if priority ==# '!'
		let todo = substitute(todo, '!', '-', '')
	elseif priority ==# '-'
		let todo = substitute(todo, '-', '_', '')
	endif

	call setline(line('.'), todo)
endfunction
