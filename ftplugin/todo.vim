if exists("b:did_ftplugin")
	finish
endif
let b:did_ftplugin = 1


nnoremap <silent> <buffer> <Plug>TwodoNewTodoBelow o- 
nnoremap <silent> <buffer> <Plug>TwodoNewTodoAbove O- 
nnoremap <silent> <buffer> <Plug>TwodoMarkComplete m`:<c-u>s/\v^(\s*)[-_!xS] /\1v / \| nohlsearch<cr>``
nnoremap <silent> <buffer> <Plug>TwodoMarkDeleted m`:<c-u>s/\v^(\s*)[-_!vS] /\1x / \| nohlsearch<cr>``
nnoremap <silent> <buffer> <Plug>TwodoMarkPartiallyCompleted m`:<c-u>s/\v^(\s*)[-_!xv] /\1S / \| nohlsearch<cr>``
nnoremap <silent> <buffer> <Plug>TwodoRemoveOldTodos :<c-u>g/^\s*[vx] /d \| nohlsearch<cr>

if !hasmapto('<Plug>TwodoNewTodoBelow') || !maparg('<leader>n', 'n')
	nmap <silent> <buffer> <leader>n <Plug>TwodoNewTodoBelow
endif

if !hasmapto('<Plug>TwodoNewTodoAbove') || !maparg('<leader>N', 'n')
	nmap <silent> <buffer> <leader>N <Plug>TwodoNewTodoAbove
endif

if !hasmapto('<Plug>TwodoMarkComplete') || !maparg('<leader>c', 'n')
	nmap <silent> <buffer> <leader>c <Plug>TwodoMarkComplete
endif

if !hasmapto('<Plug>TwodoMarkDeleted') || !maparg('<leader>d', 'n')
	nmap <silent> <buffer> <leader>d <Plug>TwodoMarkDeleted
endif

if !hasmapto('<Plug>TwodoMarkPartiallyCompleted') || !maparg('<leader>s', 'n')
	nmap <silent> <buffer> <leader>s <Plug>TwodoMarkPartiallyCompleted
endif

if !hasmapto('<Plug>TwodoRemoveOldTodos') || !maparg('<leader>R', 'n')
	nmap <silent> <buffer> <leader>R <Plug>TwodoRemoveOldTodos
endif
