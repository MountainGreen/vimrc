# .vimrc configuration file


## Installation

### The ```.vimrc```

The easiest way to get the ```.vimrc``` file is to download it directly for example to your home directory using the ```curl``` command.

	curl -fLo ~/.vimrc --create-dirs https://raw.githubusercontent.com/mountaingreen/vimrc/master/vimrc

It is also possible to clone the complete repository.

	git clone https://github.com/MountainGreen/vimrc

Thereafter you have to move the ```vimrc``` file to the favoured directory (e.g. ```~/```) and rename it to ```.vimrc``` yourself.

### The plugin manager

The ```.vimrc``` file uses ```vim-plug``` as plugin manager. It has to be installed seperatly before running Vim with the new ```.vimrc``` for the first time.

	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

(This command works for Vim on Unix-based systems. For other flavours of Vim, e.g. NeoVim, or other operating systems please follow the instructions on the [Vim-Plug homepage](https://github.com/junegunn/vim-plug).)


## Plugins

The ```.vimrc``` includes some plugins. After running Vim with the new ```.vimrc``` for the first time it is recommend to install all these plugins from the Vim command mode.

	:PlugInstall

### Vim-Monokai (```sickill/vim-monokai```)

Monokai color scheme for Vim converted with coloration from Textmate theme with the same name.

[https://github.com/sickill/vim-monokai](https://github.com/sickill/vim-monokai)

### VimDevIcons (```ryanoasis/vim-devicons```)

Adds icons to your plugins. Supports plugins such as NERDTree, vim-airline, CtrlP, powerline, denite, unite, lightline.vim, vim-startify, vimfiler, vim-buffet and flagship.

[https://github.com/ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons)

### Lightline.vim (```itchyny/lightline.vim```)

A light and configurable statusline /tabline / bufferline plugin for Vim.

[https://github.com/itchyny/lightline.vim](https://github.com/itchyny/lightline.vim)

The ```.vimrc``` configuration uses it for a coloured permanent statusline at the bottom and a bufferline at the top.

### Lightline-bufferline (```mengelbrecht/lightline-bufferline```)

This plugin provides bufferline functionality for the lightline vim plugin.

[https://github.com/mengelbrecht/lightline-bufferline](https://github.com/mengelbrecht/lightline-bufferline)

### Vim-fugitive (```tpope/vim-fugitive```)

Fugitive is the premier Vim plugin for Git. Or maybe it's the premier Git plugin for Vim? Either way, it's "so awesome, it should be illegal".

[https://github.com/tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)

### NERDTree (```preservim/nerdtree```)

The NERDTree is a file system explorer for the Vim editor. Using this plugin, users can visually browse complex directory hierarchies, quickly open files for reading or editing, and perform basic file system operations.

[https://github.com/preservim/nerdtree](https://github.com/preservim/nerdtree)

There are some key mapping included in the ```.vimrc``` configuration that can be modified for own needs and preferences.

### Vifm.vim (```vifm/vifm.vim```)

Vim plugin that allows use of vifm as a file picker.

[https://github.com/vifm/vifm.vim](https://github.com/vifm/vifm.vim)

### Surround.vim (```tpope/vim-surround```)

Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.

[https://github.com/tpope/vim-surround](https://github.com/tpope/vim-surround)

### Tabular (```godlygeek/tabular```)

Vim script for text filtering and alignment.

[https://github.com/godlygeek/tabular](https://github.com/godlygeek/tabular)

### Emmet-vim (```mattn/emmet-vim```)

Emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.

[https://github.com/mattn/emmet-vim](https://github.com/mattn/emmet-vim)

### Vim-smoothie (```psliwka/vim-smoothie```)

This (neo)vim plugin makes scrolling nice and smooth. Find yourself completely lost every time you press Ctrl-D or Ctrl-F? You might want to give vim-smoothie a try!

[https://github.com/psliwka/vim-smoothie](https://github.com/psliwka/vim-smoothie)


## Special characters

To be used with the *Source Pro Code* font (with powerline extension)

| character | utf-8 hexadecimal code | Description                           |
|:---------:|:----------------------:|:--------------------------------------|
| &#xe0b2;  | ```\ue0b2```           | big filled triangle pointing left     |
| &#xe0b0;  | ```\ue0b0```           | big filled triangle pointing right    |
| &#xe0b3;  | ```\ue0b3```           | big open triangle pointing left       |
| &#xe0b1;  | ```\ue0b1```           | big open triangle pointing right      |
| &#xe0a2;  | ```\ue0a2```           | closed lock                           |
| &#xe0a0;  | ```\ue0a0```           | switch with arrow                     |
| &#x25b6;  | ```\u25b6```           | medium filled triangle pointing right |
