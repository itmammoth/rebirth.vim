function! rebirth#store()
  let l:body = [
    \ 'set columns=' . &columns,
    \ 'set lines=' . &lines,
    \ 'winpos ' . getwinposx() . ' ' . getwinposy(),
    \ ]
  try
    call writefile(l:body, g:rebirth_file)
  catch
    call s:show_error('Failed to write rebirth file to ' . g:rebirth_file)
    call input('Press enter key.')
  endtry
endfunction

function! rebirth#restore()
  if filereadable(g:rebirth_file)
    execute 'source' g:rebirth_file
  endif
endfunction

function! s:show_error(message)
  echohl ErrorMsg | echo '[rebirth] ' . a:message | echohl None
endfunction
