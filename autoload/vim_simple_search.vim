let s:save_cpo = &cpo
set cpo&vim

function! vim_simple_search#search(word)
  let s:filelist = glob("./**/". a:word . "*")
  let s:splitted = split(s:filelist, "\n")
  let s:result = []
  new
  for s:file in s:splitted
    call append('.', s:file . "\r")
  endfor
  nnoremap <silent> <buffer> <C-i> <C-w>f<C-w>p:q!<CR><C-w>w
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
