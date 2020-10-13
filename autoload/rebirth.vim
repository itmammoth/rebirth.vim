function! rebirth#store()
  if !filewritable(g:rebirth_file)
    call s:show_error("Can't write rebirth file to " . g:rebirth_file)
    return
  endif

  let l:body = [
    \ 'set columns=' . &columns,
    \ 'set lines=' . &lines,
    \ 'winpos ' . getwinposx() . ' ' . getwinposy(),
    \ ]
  call writefile(l:body, g:rebirth_file)
endfunction

function! rebirth#restore()
  if filereadable(g:rebirth_file)
    execute 'source' g:rebirth_file
  endif
endfunction

function! s:show_error(message)
  echohl ErrorMsg | echo '[rebirth] ' . a:message | echohl None
endfunction
