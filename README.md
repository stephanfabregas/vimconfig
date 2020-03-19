My Personal vim Configuration
-------------

## Installation

### Clone this repository

Be sure to clone this repository to `~/.vim` in order to use this as your vim
configuration.

```
git clone https://github.com/stephanfabregas/vimconfig.git ~/.vim
```

### Clone used vim extensions

Rather than dealing with Git submodules, it's easier to clone relevant useful
vim extensions separately and put them in the correct location to use with this
repository's setup.

Clone this repository and add a `bundle/` directory at the root level. In
`bundle/`, clone the julia-vim, nerdtree, and syntastic repositories:

```
mkdir ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/JuliaEditorSupport/julia-vim.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/vim-syntastic/syntastic.git
```

### Link .vimrc

In `~/` create a file called `.vimrc` and include one line in this file:

```
echo "runtime vimrc" > ~/.vimrc
```

By default in vim from v7.4, vim will look for configurations in `~/.vim/vimrc`
and `~/.vimrc`. But just to be safe, it's good to include this command in
`~/.vimrc`.

### Using vim in Putty

Putty terminal emulator for Windows is infamous for its horrible color scheme.
It is, however, possible to get this vim configuration to work well with Putty.
In the Putty setup, under Window -> Colours, check the box labeled, "Allow
terminal to use xterm 256-colour mode" and set the bolded text indication to
use the font, not the color.

Then, in the `~/.vim/vimrc`, uncomment the if/else statement under the Putty
section.

