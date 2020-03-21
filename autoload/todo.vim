function! todo#MarkComplete()
	let view = winsaveview()

	keeppatterns s/\v^(\s*)[-_!xS] /\1v /

	call winrestview(view)

	silent! call repeat#set("\<Plug>TwodoMarkComplete", v:count)
endfunction


function! todo#MarkDeleted()
	let view = winsaveview()

	keeppatterns s/\v^(\s*)[-_!vS] /\1x /

	call winrestview(view)

	silent! call repeat#set("\<Plug>TwodoMarkDeleted", v:count)
endfunction


function! todo#MarkPartiallyCompleted()
	let view = winsaveview()

	keeppatterns s/\v^(\s*)[-_!xv] /\1S /

	call winrestview(view)

	silent! call repeat#set("\<Plug>TwodoMarkPartiallyCompleted", v:count)
endfunction


function! todo#RemoveOldTodos()
	let view = winsaveview()

	keeppatterns g/^\s*[vx] /d

	call winrestview(view)

	silent! call repeat#set("\<Plug>TwodoRemoveOldTodos", v:count)
endfunction


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

	silent! call repeat#set("\<Plug>TwodoEscalate", v:count)
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

	silent! call repeat#set("\<Plug>TwodoDescalate", v:count)
endfunction
