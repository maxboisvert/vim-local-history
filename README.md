# vim-local-history

Use viminfo file relative to current working directory.

## Insatallation
With Vim-plug (or your prefered way) :
```VimL
call plug#begin()
Plug 'maxboisvert/vim-local-history'
call plug#end()
```

## Tips

This plugin is useful with this mapping :

```VimL
nnoremap <Leader>p :e **/*
```

After opening a file with this command, you can do `:e <Up><Up>` to access the current project's history. This is like a MRU.

## License

GPL3
