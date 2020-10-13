if !has('gui_running')
  finish
endif

if exists("g:rebirth_loaded")
  finish
endif
let g:rebirth_loaded = 1

let s:save_cpo = &cpo
set cpo&vim


if !exists('g:rebirth_file')
  let g:rebirth_file = expand('~/.rebirth.vim')
end

augroup RebirthStore
  autocmd!
  autocmd VimLeavePre * call rebirth#store()
augroup END

augroup RebirthRestore
  autocmd!
  autocmd VimEnter * call rebirth#restore()
augroup END

command! RebirthRestore call rebirth#restore()


let &cpo = s:save_cpo
unlet s:save_cpo
