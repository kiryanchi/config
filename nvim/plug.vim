if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'

"if has("nvim")
"  Plug 'neovim/nvim-lspconfig'
"  Plug 'glepnir/lspsaga.nvim'
"  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"  Plug 'scrooloose/nerdtree'
"  Plug 'xuyuanp/nerdtree-git-plugin'
"  Plug 'ryanoasis/vim-devicons'
"endif

call plug#end()

lua << EOF
print('hello lua script')
EOF
