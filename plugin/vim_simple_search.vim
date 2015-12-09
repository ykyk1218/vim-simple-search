if exists('g:loaded_vim_simple_search')
  finish
endif
let g:loaded_vim_simple_search = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=1 ES call vim_simple_search#search("<args>")

let &cpo = s:save_cpo
unlet s:save_cpo
