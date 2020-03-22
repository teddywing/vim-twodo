" Copyright (c) 2016, 2020 Teddy Wing
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

if exists("b:did_ftplugin")
	finish
endif
let b:did_ftplugin = 1

if exists('g:no_plugin_maps') || exists('g:no_todo_maps')
	finish
endif

nnoremap <silent> <buffer> <Plug>TwodoNewTodoBelow o- 
nnoremap <silent> <buffer> <Plug>TwodoNewTodoAbove O- 
nnoremap <silent> <buffer> <Plug>TwodoMarkComplete :<c-u>call todo#MarkComplete()<cr>
nnoremap <silent> <buffer> <Plug>TwodoMarkDeleted :<c-u>call todo#MarkDeleted()<cr>
nnoremap <silent> <buffer> <Plug>TwodoMarkPartiallyCompleted :<c-u>call todo#MarkPartiallyCompleted()<cr>
nnoremap <silent> <buffer> <Plug>TwodoRemoveOldTodos :<c-u>call todo#RemoveOldTodos()<cr>
nnoremap <silent> <buffer> <Plug>TwodoEscalate :<c-u>call todo#Escalate()<cr>
nnoremap <silent> <buffer> <Plug>TwodoDescalate :<c-u>call todo#Descalate()<cr>

nnoremap <silent> <buffer> <Plug>TwodoNextIncomplete :<c-u>call todo#motion#NextIncomplete()<cr>
nnoremap <silent> <buffer> <Plug>TwodoPreviousIncomplete :<c-u>call todo#motion#PreviousIncomplete()<cr>
onoremap <silent> <buffer> <Plug>TwodoNextIncomplete :<c-u>call todo#motion#NextIncomplete()<cr>
onoremap <silent> <buffer> <Plug>TwodoPreviousIncomplete :<c-u>call todo#motion#PreviousIncomplete()<cr>

if !hasmapto('<Plug>TwodoNewTodoBelow') && !maparg('<leader>n', 'n')
	nmap <silent> <buffer> <leader>n <Plug>TwodoNewTodoBelow
endif

if !hasmapto('<Plug>TwodoNewTodoAbove') && !maparg('<leader>N', 'n')
	nmap <silent> <buffer> <leader>N <Plug>TwodoNewTodoAbove
endif

if !hasmapto('<Plug>TwodoMarkComplete') && !maparg('<leader>c', 'n')
	nmap <silent> <buffer> <leader>c <Plug>TwodoMarkComplete
endif

if !hasmapto('<Plug>TwodoMarkDeleted') && !maparg('<leader>d', 'n')
	nmap <silent> <buffer> <leader>d <Plug>TwodoMarkDeleted
endif

if !hasmapto('<Plug>TwodoMarkPartiallyCompleted') && !maparg('<leader>s', 'n')
	nmap <silent> <buffer> <leader>s <Plug>TwodoMarkPartiallyCompleted
endif

if !hasmapto('<Plug>TwodoRemoveOldTodos') && !maparg('<leader>R', 'n')
	nmap <silent> <buffer> <leader>R <Plug>TwodoRemoveOldTodos
endif

if !hasmapto('<Plug>TwodoEscalate') && !maparg('<leader>=', 'n')
	nmap <silent> <buffer> <leader>= <Plug>TwodoEscalate
endif

if !hasmapto('<Plug>TwodoDescalate') && !maparg('<leader>-', 'n')
	nmap <silent> <buffer> <leader>- <Plug>TwodoDescalate
endif

if !hasmapto('<Plug>TwodoNextIncomplete', 'n') && !maparg(']u', 'n')
	nmap <buffer> ]u <Plug>TwodoNextIncomplete
endif

if !hasmapto('<Plug>TwodoNextIncomplete', 'o') && !maparg(']u', 'o')
	omap <buffer> ]u <Plug>TwodoNextIncomplete
endif

if !hasmapto('<Plug>TwodoPreviousIncomplete', 'n') && !maparg('[u', 'n')
	nmap <buffer> [u <Plug>TwodoPreviousIncomplete
endif

if !hasmapto('<Plug>TwodoPreviousIncomplete', 'o') && !maparg('[u', 'o')
	omap <buffer> [u <Plug>TwodoPreviousIncomplete
endif
