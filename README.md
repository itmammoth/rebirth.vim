# rebirth.vim

rebirth.vim is a plugin to restore the window size and position on starting your gvim. (Typically for Windows)

# Installation

## vim-plug

Add the following code to your `.vimrc`.

```
if has('win32') || has('win64')
  Plug 'itmammoth/rebirth.vim'
endif
```

Nothing else to do!

# Configurable variables

## g:rebirth_file

Set the rebirth file path to store the window size and position on `VimLeavePre`.

(default: `~/.rebirth.vim`)

```
" example
let g:rebirth_file = expand('~/.vimfiles/.rebirth.vim')
```

# Command

## :RebirthRestore

Restore the window size and position from the rebirth file manually.

# Contribution

Just fork it. `blankslate.g?vimrc` are essential vim script files for testing.

```bash
$ gvim -u blankslate.vimrc -U blankslate.gvimrc
```

# License

MIT License
