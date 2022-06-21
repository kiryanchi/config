-- * Basic Config
local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local opt = vim.opt

local function map(mode, lhs, rhs, opts)
	local options = {noremap = true}
	if opts then options = vim.tbl_extend('force', options, opts) end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- * Plugin
require('paq') {
	"tpope/vim-fugitive";
	"tpope/vim-rhubarb";
	"cohama/lexima.vim";
	"savq/paq-nvim";
	"neovim/nvim-lspconfig";
	"nvim-treesitter/nvim-treesitter";
	"scrooloose/nerdtree";
	"xuyuanp/nerdtree-git-plugin";
	"ryanoasis/vim-devicons";
	"EdenEast/nightfox.nvim";
	"hrsh7th/nvim-cmp";
	"hrsh7th/cmp-buffer";
	"hrsh7th/cmp-path";
	"hrsh7th/cmp-nvim-lua";
	"hrsh7th/cmp-nvim-lsp";
	"hrsh7th/cmp-cmdline";
	"hrsh7th/cmp-vsnip";
	"hrsh7th/vim-vsnip";
	"mattn/emmet-vim";
	"nvim-lua/plenary.nvim";
	"mhartington/formatter.nvim";
	"markvincze/panda-vim";
	"williamboman/nvim-lsp-installer";
	"SirVer/ultisnips";
	"mlaursen/vim-react-snippets";
}

-- * ColorScheme

-- * Keymapping
map('', '<leader>b', ':buffers<CR>:buffer<Space>')

-- * Nerdtree
map('', 'nerd', ':NERDTreeToggle<cr>')

-- * formatter
map('', '<leader>f', ':Format<CR>')
