Derek's vim files
================

This vim configuration is derived from Xueqiao Xu's.

## Bundled Plugins ##

* [c.vim](https://github.com/vim-scripts/c.vim) - C/C++ IDE -- Write and run programs. Insert statements, idioms, comments etc
* [delimitMate](https://github.com/Raimondi/delimitMate) - provides insert mode auto-completion for quotes, parens, brackets, etc
* [endwise](https://github.com/tpope/vim-endwise) - wisely add "end" in ruby, endfunction/endif/more in vim script, etc
* [fugitive](https://github.com/tpope/vim-fugitive) - Git wrapper 
* [haskell.vim](https://github.com/vim-scripts/haskell.vim) - Syntax highlight for haskell
* [indent guides](https://github.com/nathanaelkane/vim-indent-guides) - visually displaying indent levels in code
* [nerd commenter](https://github.com/scrooloose/nerdcommenter) - for intensely orgasmic commenting 
* [nerd tree](https://github.com/scrooloose/nerdtree) - tree explorer plugin for navigating the filesystem
* [powerline](https://github.com/Lokaltog/vim-powerline) - create better-looking, more functional vim statuslines
* [rainbow parenthesis](https://github.com/kien/rainbow_parentheses.vim) - highlights matching parenthesis with a rainbow of colors
* [syntastic](https://github.com/scrooloose/syntastic/) - Syntax checking hacks for vim 
* [tabular](https://github.com/godlygeek/tabular) - for text filtering and alignment 
* [tagbar](https://github.com/majutsushi/tagbar) - displays tags in a window, ordered by class etc
* [rust](https://github.com/wting/rust.vim) - vim support for rust file detection and syntax highlighting

## Themes ##

* [tomorrow](https://github.com/ChrisKempson/Tomorrow-Theme/tree/master/Vim)
* [tir\_black](http://www.vim.org/scripts/script.php?script_id=2777)
* [inkpot](http://www.vim.org/scripts/script.php?script_id=1143)

## Dependencies ##

* `ctags` - required by `tagbar`

For ArchLinux. 

    sudo yaourt -S ag ctags

For MacOS:

	brew install ag ctags

Note that package names and install tools may differ in other environments.


## Installation ##

Backup your own vim files.

    mv .vim .vim.bak
    mv .vimrc .vimrc.bak

Clone this repository.

    git clone git@github.com:dkozel/vimfiles.git .vim

Create link for `.vimrc`.
    
    ln -s .vim/vimrc .vimrc

Install the plugins (This step may take some time. Go have yourself a cup of tea).

    .vim/install.sh

## Key Bindings ##

* `F4` -> Toggle indentation guides
* `F5` -> Toggle Nerd-Tree file viewer
* `F6` -> Toggle tagbar
* `Ctrl` + `j` -> Call zen-coding expansion on html tags
* `Alt` + `1~9` -> Switch between multiple buffers


## FAQ ##

1. The `Alt` + `1~9` combination does not work in iTerm.
    
    iTerm Preference --> Profiles --> Keys --> set `Left option key acts as` to `Meta`
    
