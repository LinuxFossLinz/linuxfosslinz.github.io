**************************************************************************

```
            #########   #######    #######    #######
            ##         ##     ##  ##      #  ##      #
            ##         ##     ##  ##         ##
            ######     ##     ##   ####       ####
            ##         ##     ##       ###        ###
            ##         ##     ##         ##         ##
            ##         ##     ##  #      ##  #      ##
            ##          #######    #######    #######
```
~                            Linux / FOSS Meetup Linz                   ~

~                                      Jan 2024                         ~




CC BY-SA 4.0                                          Daniel KNITTL-FRANK
*************************************************************************

# Whois

* GNU ♥ Linux
* Software Engineer at Dynatrace
* Member of [HgbSec](https://hgbsec.at) CTF team
* I run [fhLUG](https://fhLUG.at)

# Vim

```
          ###       ###    ####     #         #
           ##       ##      ##      ##       ##
           ##       ##      ##      ####   ####
            ##     ##       ##      ## ## ## ##
             ##   ##        ##      ##  ###  ##
              ## ##         ##      ##   #   ##
               ###          ##      ##       ##
                #          ####    ####     ####
```

* [Vi Improved](https://www.vim.org/)
* First release in 1991
* Authored by Bram Moolenaar († 2023)
* Open-source (of course!)

<https://en.wikipedia.org/wiki/Vim_(text_editor)>

# First Things First

* How to start vim? Type `vim`

* How to exit Vim? Type `:wq<Enter>` to save and exit,
  `:q!` to exit without save

  (Pro-tip: `ZZ` and `ZQ` in normal mode)



# Testimonials

> Vi is like a Ferrari, if you're a beginner, it handles like a `*****`, but once
> you get the hang of it, it's small, powerful and FAST!
>  --- (Unknown)

> VIM is like a new model Ferrari, and sounds like one too - "VIIIIIIMMM!"
>  --- (Stephen Riehm, Germany)

  <https://elias.rhi.hi.is/vim/quotes.html>


# Mode Based Editing

* Vim supports different modes (normal, `i`nsert, `v`isual, etc.)
* `<Esc>` to exit any mode and return to normal mode


# Getting Started

  Vim comes with `vimtutor` binary which provides an "interactive" tutorial.

  You should try it :]


# Basic Motions

```
          ^
          k         Hint:  The h key is at the left and moves left.
    < h      l >           The l key is at the right and moves right.
         j                 The j key looks like a down arrow.
         v
```

  *But* you can almost always simply use the arrow keys to navigate

  Shameless plug: … or you can learn [Neo](https://neo-layout.org/) to avoid moving your hand to the arrow keys

# Basic Inserting

  To enter insert mode:

* `i`: `i`nsert
* `a`: `a`ppend
* `o`: starts a new line


# When Something Goes Wrong

Don't panic and `<ESC>`

* `u`:     `u`ndo
* `<C-R>`: `r`edo

  (`g-`/`g+` for walking through _undo-tree_)


# Cool Selection Tricks

* `<C-V>`:   block/column selection
* `V`:       line-based select
* `o`:       jump to start/end of selection
* `gv`:      re-select previous selection

# Basic Editing

* `x`:  delete character (cross out)
* `dd`: `d`elete line
* `cc`: `c`hange line
* `s`:  `s`ubstitute character under cursor
* `J`:  `J`oin lines


# Copy & Paste

* `y`:        copy (`y`ank)
* `d` or `x`:   cut (`d`elete)
* `p`, `P`:     `p`aste after, `P`aste before


# More Motions

* `w`:               `w`ord forward
* `b`:               word `b`ackward
* `e`:               `e`nd of word
* `)`, `(`:            sentence forward, backward
* `}`, `{`:            paragraph forward, backward
* `%`:               matching item, e.g. `()` `[]` `{}`
* `^`:               start of text
* `0`, `$`:            start and end of line
* `1G` or `1gg`:       go to line `1`


# Combining Keys

  Compose single keys to build powerful actions:

* `2.`:   repeat last action `2` times

* `yw`:   `y`ank to next `w`ord
* `y3w`:  `y`ank next `3` `w`ords

* `das`:  `d`elete `a` `s`entence
* `ciw`:  `c`hange `i`nner `w`ord

* `gUiw`: `U`pper-case `i`nner `w`ord


# Text Object Selection

`v` enters `v`isual mode (selecting text)

* `viw`: `i`nner `w`ord
* `vis`: `i`nner `s`entence
* `vib`: `i`nner `b`lock, e.g. `()` `[]`
* `vi"`: `i`nside double quotes
* `vap`: `a`round `p`aragraph
* `va]`: `a`round brackets
* `vat`: `a`round `t`ag
* ... plus many more


# Searching

* `/regex`, `?regex`: search regular expression forward, backward
* `*`, `#`:   forward search for word under cursor, backward search
* `n`, `N`:   next match, previous match

* `fc`, `Fc`: next/previous character 'c' (inclusive)
* `tc`, `Tc`: next/previous character 'c' (exclusive)
* `;`, `,`:   repeat forward, repeat backward

* `:%s/pattern/replace/g`: `s`ubstitute text file-wide


# Text layout

* `=`:       auto-indent text/source code
* `>`, `<`:    indent, unindent
* `gq`:      format text
* `:center`: center text
* `:left`:   left align text
* `:right`:  right aliign text


# Autocompletion

* `<C-N>`:       autocomplete next
* `<C-P>`:       autocomplete previous
* `<C-X> <C-L>`: autocomplete line
* `<C-X> <C-F>`: autocomplete file path
* `<C-X> <C-N>`: autocomplete with context
* `<C-X> <C-O>`: omni-completion


# Registers

* Yank and delete fill numbered registers 0 to 9
* 26 named registers a to z
* Access registers with `"r`

* `"ry3w`: `y`ank next `3` `w`ords into register "`r`"
* `"r2p`:  `p`aste `2` times from register "`r`"


# Macros

  Registers can be used to store and replay macros

* `qr`:  start recording into register "r"; press `q` when finished
* `@r`:  execute macro from register "r"
* `@@`:  re-run last macro
* `@:`:  re-run last "ex" command

  E.g. macro to capitalize first word in sentence,
       then jump to next sentence:

```
()guw~)
```

  Pro-tip: Macros are simply text in registers, you can yank, edit, and paste them:
  `"rp` and `"ry`


# Quick Filter

  Need to filter current line through external command?

* `:.!cmd`: filter current line through command

  (Pro-tip: Type `!!`)
  (Pro-tip: `!!sh` to execute the current line as shell command)


# Command Line Mode ("ex" mode)

`:[range][command]`

  Useful commands:

* `:make`:                execute Makefile
* `:!cmd`:                run external command
* `:%!cmd`:               filter and replace content by command
* `:1,10w file`:          `w`rite first 10 lines to file
* `:r!date`:              `r`ead current date and time into file
* `:g/pattern/command`:   perform `g`lobal command
* `:v/pattern/command`:   perform in`v`erted global command
  * e.g. `:g/^$/d`:       delete empty lines
  * e.g. `:g/^#/norm A #` add " #" after each Markdown header line


# Useful Config Options

```
set number               " show line numbers

set ignorecase smartcase " ignore case if pattern lower case

set incsearch            " incremental search
set hlsearch             " highlight all matches

" show non-printing characters (make sure your terminal supports UTF8!)
set list listchars=tab:→ ,nbsp:␣,trail:•,space:⋅
```

  Can be persisted in `~/.vimrc`. If you want to have a look at my settings,
  check out <https://github.com/knittl/.files/blob/master/.vimrc>


# Plugins

* Possibility to write and load plugins written in _VimL_
* Stored in `~/.vim/plugin/`


## Plugin Manager: Plug

* Single-file plugin manager
* <https://github.com/junegunn/vim-plug>

  Installing:

```
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://github.com/junegunn/vim-plug/raw/master/plug.vim
```

  Then add to your `~/.vimrc`:

```
call plug#begin()
  Plug 'git repository url'
call plug#end()
```


# Useful Plugins (Incomplete List)

* `mattn/emmet-vim`:         HTML and CSS editing on steroids
* `tpope/vim-surround`:      Clever way of changing surrounding elements
* `tpope/vim-fugitive`:      Never leave Vim to do Git stuff
* `plasticboy/vim-markdown`: Better visual editing of markdown files
* `junegunn/vim-easy-align`: Align text and tables


# Using Vim in Other Applications

* [vscodevim:](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)
    A Vim plugin for Visual Studio Code
* [ideavim:](https://github.com/JetBrains/ideavim)
    A Vim plugin for IntelliJ
* [vimperator:](http://vimperator.org/)
    A Vim plugin for Firefox (discontinued)
* [tridactyl:](https://tridactyl.xyz/)
    A Vim extension for Firefox
* [evil mode:](https://github.com/emacs-evil/evil)
    The extensible vi layer for Emacs


# Sources and Further Reading

* `man vim`
* Vim's `:help`
* <https://en.wikipedia.org/wiki/Vim_(text_editor)>
* <https://en.wikibooks.org/wiki/Learning_the_vi_Editor/Vim>
* <https://vim-adventures.com/>
* <https://vi.stackexchange.com>
* <https://fhLUG.at/2014/01/vim-workshop/>
  * <https://fhlug.at/2019/12/vim-mas-special/>
  * <https://fhlug.at/2022/05/vi-improved/>
* <https://vimawesome.com>
* <https://github.com/akrawchyk/awesome-vim>


# Contact

* [fhLUG.at](https://fhLUG.at)
* [libera#fhlug](https://fhLUG.at/irc)


