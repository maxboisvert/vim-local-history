if exists("g:loaded_vim_local_history")
  finish
endif
let g:loaded_vim_local_history = 1

fun! s:Init()
    call s:LocalHistory()
endfun

func s:LocalHistory()
    let tmp = $TMPDIR . 'vim/'
    if has('nvim')
        let tmp = $TMPDIR . 'neovim/'
    endif
    silent! call mkdir(tmp, 'p')

    let g:tmp_file_prefix = tmp . substitute(getcwd(), '/', '%', 'g') . '%'
    let &viminfo = &viminfo . ',n' . g:tmp_file_prefix . 'viminfo'
    let &backupdir=tmp . '/'
    let &directory=tmp . '/'
    let &undodir=tmp . '/'
endfun

call s:Init()
