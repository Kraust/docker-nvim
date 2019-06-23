" set default shell
" can probably do this in entrypoint.sh
set shell=/bin/bash

call plug#begin('~/.local/share/nvim/plugged')
        " -- Required for neovim-qt:
        Plug 'equalsraf/neovim-gui-shim'

        " -- Theming
        Plug 'NLKNguyen/papercolor-theme'

call plug#end()

filetype plugin indent on
syntax enable
set termguicolors
set background=dark
silent! colorscheme PaperColor
syntax on

