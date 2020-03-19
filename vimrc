""Colors
syntax enable "enable syntax processing
set background=light
colorscheme solarized "Current color scheme (may consider a change)

"Highlight the current line number
set cursorline
"Stupid hack since colorscheme gets loaded again after .vimrc (for some reason)
augroup MyColorScheme
    autocmd!
    autocmd VimEnter * highlight CursorLine term=bold cterm=bold
            \ | highlight CursorLineNr term=bold cterm=bold gui=bold
augroup END

"auto-detect .md files and highlight as markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown

""Tabs and spaces
"Set tabs as # spaces
set tabstop=4 "<TAB> shows as # spaces
set softtabstop=4 "Using <TAB> (& backspace) uses # spaces
set expandtab "<TAB> gets recoded as # spaces

""UI Configuration
set number "Show lines numbers
set showmatch "Highlight matching brackets
set showcmd "Show commands as inserted
set laststatus=2 "Always show file name at the bottom of the screen
set colorcolumn=80 "Highlight the 80th column
"Set the highlighted column color
highlight ColorColumn ctermbg=7

set showmode "Show the current mode
set linebreak "When line wraps, break at smart locations

""Search & replace
set incsearch "Partial search on the fly
set hlsearch "Highlight search matches
set ignorecase "Ignore case in search
set smartcase "If search contains caps, search is case sensitive
set gdefault "Replace all matches in a line by default (/g not needed)

""Movement
"Remap the line start keys to make it easier to get to the first non-
"space character of a line
noremap ^ 0
noremap 0 ^

""Enable Pathogen
execute pathogen#infect()

""Nerdtree configuration
"Load NerdTree if launching vim without a file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Shortcut for NerdTree
map <C-n> :NERDTreeToggle<CR>

""Syntastic configuration
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_pylint_exe = "pylint3"
let g:syntastic_python_checkers = ["python3"]

""Julia-Vim configuration
let g:latex_to_unicode_auto = 1

