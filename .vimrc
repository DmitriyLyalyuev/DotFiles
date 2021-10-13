scriptencoding utf-8
set encoding=utf-8

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" ================ General Config ====================

<<<<<<< Updated upstream
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set novb                        "No sounds
set autoread                    "Reload files changed outside vim
set autoindent
set expandtab

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden
=======
" ------Plugins-------
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'gcmt/breeze.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'davidhalter/jedi-vim'
Plugin 'ErichDonGubler/vim-sublime-monokai'
>>>>>>> Stashed changes

"turn on syntax highlighting
syntax on
let python_highlight_all=1

<<<<<<< Updated upstream
" show a visual line under the cursor's current line
set cursorline
=======
call vundle#end()
colorscheme sublimemonokai
filetype plugin indent on
>>>>>>> Stashed changes

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all 
" the plugins.
let mapleader=","

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
" NOT WORKING: Didnt work when yanked right out of YADR
"silent !mkdir ~/.vim/backups > /dev/null 2>&1
"set undodir=~/.vim/backups
"set undofile

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
" set list listchars=tab:\ \ ,trail:Â·

set wrap       "Wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :PluginInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +PluginClean! +PluginInstall +qall
" Filetype off is required by vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle (required)
Plugin 'gmarik/vundle'

""""""""""""""""""""""""""""""""" MY VUNDLES """""""""""""""""""""""
" HEAVILY/MOSTLY taken from https://github.com/skwp/dotfiles 


" Make Git pervasive in vim ( :Gblame + Glog + many more )
Plugin 'tpope/vim-fugitive'
 
" file navigator gutter
Plugin 'scrooloose/nerdtree.git'

" awesome syntax highlighting
" TODO: Figure out how to enable correctly for Ruby.
" Plugin 'scrooloose/syntastic'

" Command+T replacement (ctrl+P)
Plugin 'kien/ctrlp.vim'

" Rails plugin ( :A mapping! )
Plugin 'tpope/vim-rails.git'

" comment lines out (gc in visual mode)
Plugin 'tomtom/tcomment_vim.git'

" Pimped out bar at the bottom of current buffer
Plugin 'bling/vim-airline.git'

" Highlights class names + methods more brightly
" Handy for seeing syntax shape before your eyes
Plugin 'vim-scripts/TagHighlight.git'

" Search everything in the current dir via :Ack
Plugin 'mileszs/ack.vim'

" Enable Markdown Preview + GitHub flavored markdown
Plugin 'jtratner/vim-flavored-markdown.git'
Plugin 'nelstrom/vim-markdown-preview'

" TODO: Figure out how to do indents intelligently
Plugin 'austintaylor/vim-indentobject'

" Open a shell within vim via :ConqueTerm
Plugin 'skwp/vim-conque'

" Syntax highlighting for .bats files
Plugin 'rosstimson/bats.vim'

" Open up a bash shell quickly in the current window
map <Leader>s <esc>:ConqueTermSplit bash<cr>

" Make Ctrl+w o, function with toggle niceness
Plugin 'vim-scripts/ZoomWin'

Plugin 'kchmck/vim-coffee-script'

" requires exuberant ctags
Plugin 'majutsushi/tagbar'

" intendation for python
Plugin 'vim-scripts/indentpython.vim'

" Auto-complete for python
Plugin 'Valloric/YouCompleteMe'

" Check the syntax
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

" Terraform
Plugin 'hashivim/vim-terraform'

" END OF VUNDLE PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on     " required!
"
" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin command are not allowed..

syntax enable
set background=dark

" For MacVim
set guifont=Monaco:h16


" NERDTree Mappins
" Open Nerd Tree with <Leader>n
map <Leader>n <esc>:NERDTreeToggle<cr>

" Reveal current file in NERDTree with <Leader>r
map <Leader>r <esc>:NERDTreeFind<cr>

" ===== SYNTASTIC 
"mark syntax errors with :signs
let g:syntastic_enable_signs=1
"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
"show the error list automatically
let g:syntastic_auto_loc_list=1
"don't care about warnings
let g:syntastic_quiet_messages = {'level': 'warnings'}

" Coffee Script Compilation
" Compile the current file into a vertcally split screen
map <Leader>cs <esc>:CoffeeCompile vert<cr>

" ====== Make tabs be addressable via Apple+1 or 2 or 3, etc
" Use numbers to pick the tab you want (like iTerm)
map <silent> <Leader>1 :tabn 1<cr>
map <silent> <Leader>2 :tabn 2<cr>
map <silent> <Leader>3 :tabn 3<cr>
map <silent> <Leader>4 :tabn 4<cr>
map <silent> <Leader>5 :tabn 5<cr>
map <silent> <Leader>6 :tabn 6<cr>
map <silent> <Leader>7 :tabn 7<cr>
map <silent> <Leader>8 :tabn 8<cr>
map <silent> <Leader>9 :tabn 9<cr>

" ===== Add some shortcuts for ctags
map <Leader>tt <esc>:TagbarToggle<cr>
" TODO later, get open tag in new tab working
" http://stackoverflow.com/questions/563616/vim-and-ctags-tips-and-tricks
" map <C-\>:tab split<CR>:exec("tag ".expand("<cword>"))<CR>
"map <A-]>:vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Support for github flavored markdown
" via https://github.com/jtratner/vim-flavored-markdown
" with .md extensions
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END


" PEP8 intendation for python files
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Highlight unnecssary whitespaces
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Autocompletion
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
