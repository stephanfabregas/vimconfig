My Personal vim Configuration
-------------

## Installation

### Clone this repository

Be sure to clone this repository to `~/.vim` in order to use this as your vim
configuration.

```
git clone https://github.com/stephanfabregas/vimconfig.git
```

### Clone used vim extensions

Rather than dealing with Git submodules, it's easier to clone relevant useful
vim extensions separately and put them in the correct location to use with this
repository's setup.

Clone this repository and add a `bundle/` directory at the root level. In
`bundle/`, clone the julia-vim, nerdtree, and syntastic repositories:

```
git clone git://github.com/JuliaEditorSupport/julia-vim.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/vim-syntastic/syntastic.git
```

### Link .vimrc

In ~/ create a file called .vimrc and include one line in this file:

```
runtime vimrc
```

By default in vim from v7.4, vim will look for configurations in ~/.vim/vimrc
and ~/.vimrc. But just to be safe, it's good to include this command in ~/.vimrc
