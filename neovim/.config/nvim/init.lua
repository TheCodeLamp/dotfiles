vim.cmd [[
	set nocompatible            " disable compatibility to old-time vi
	set showmatch               " show matching 
	set ignorecase              " case insensitive 
	set mouse=v                 " middle-click paste with 
	set hlsearch                " highlight search 
	set incsearch               " incremental search
	set tabstop=4               " number of columns occupied by a tab 
	set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
	set expandtab               " converts tabs to white space
	set shiftwidth=4            " width for autoindents
	set autoindent              " indent a new line the same amount as the line just typed
	set number                  " add line numbers
    set relativenumber          " makes the nubers realtive to current cursor position
	set wildmode=longest,list   " get bash-like tab completions
	set cc=80                   " set an 80 column border for good coding style
	filetype plugin indent on   " allow auto-indenting depending on file type
	syntax on                   " syntax highlighting
	set mouse=a                 " enable mouse click
	set clipboard=unnamedplus   " using system clipboard
	filetype plugin on
	set cursorline              " highlight current cursorline
	set ttyfast                 " Speed up scrolling in Vim
    set updatetime=1000         " Sets the global update time from 4000 to 100
    set scrolloff=10            " Sets padding above and below the cursor
]]


require('plugins')
require('lsp-config')

require('nvim-tree').setup()

vim.cmd[[colorscheme dracula]]      -- Enable dracula theme.
