function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction
call plug#begin()
if !exists('g:vscode')
	Plug 'git@github.com:nvim-lua/plenary.nvim.git'
	Plug 'git@github.com:folke/todo-comments.nvim.git'
	Plug 'git@github.com:nvim-telescope/telescope.nvim.git', { 'tag': '0.1.1' }
	Plug 'git@github.com:norcalli/nvim-colorizer.lua.git'
	Plug 'git@github.com:nvim-lualine/lualine.nvim.git'
	Plug 'git@github.com:akinsho/toggleterm.nvim.git', { 'tag': '*' }
	Plug 'git@github.com:tpope/vim-fugitive.git'
	Plug 'git@github.com:windwp/nvim-autopairs.git'
	Plug 'git@github.com:lervag/vimtex.git'
	Plug 'git@github.com:nvim-tree/nvim-tree.lua.git'
	Plug 'git@github.com:nvim-tree/nvim-web-devicons.git'
	Plug 'git@github.com:nvim-treesitter/nvim-treesitter.git', { 'do': ':TSUpdate' }
	Plug 'https://github.com/szw/vim-maximizer.git'
	Plug 'git@github.com:mg979/vim-visual-multi.git'
	Plug 'git@github.com:theHamsta/nvim-dap-virtual-text.git'
	Plug 'git@github.com:anuvyklack/pretty-fold.nvim.git'
	Plug 'git@github.com:glepnir/dashboard-nvim.git'
	Plug 'git@github.com:nvim-telescope/telescope-file-browser.nvim.git'
	Plug 'git@github.com:xiyaowong/telescope-emoji.nvim.git'
	Plug 'git@github.com:nvim-telescope/telescope-dap.nvim.git'
	Plug 'git@github.com:benfowler/telescope-luasnip.nvim.git'
	Plug 'git@github.com:dhruvmanila/telescope-bookmarks.nvim.git'
	Plug 'git@github.com:rmagatti/auto-session.git'
	Plug 'git@github.com:rmagatti/session-lens.git'

	Plug 'git@github.com:akinsho/bufferline.nvim.git'
	Plug 'git@github.com:iamcco/markdown-preview.nvim.git', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
	Plug 'git@github.com:moll/vim-bbye.git'
	Plug 'git@github.com:ray-x/lsp_signature.nvim.git'
	Plug 'git@github.com:mhartington/formatter.nvim.git'

	" DAP
	Plug 'git@github.com:mfussenegger/nvim-dap.git'
	Plug 'git@github.com:rcarriga/nvim-dap-ui.git'

	" completion
	Plug 'git@github.com:hrsh7th/cmp-nvim-lsp.git'
	Plug 'git@github.com:hrsh7th/cmp-buffer.git'
	Plug 'git@github.com:hrsh7th/cmp-path.git'
	Plug 'git@github.com:hrsh7th/cmp-cmdline.git'
	Plug 'git@github.com:rcarriga/cmp-dap.git'
	Plug 'git@github.com:hrsh7th/nvim-cmp.git'
	Plug 'git@github.com:onsails/lspkind.nvim.git'  " vscode pictograms
	Plug 'git@github.com:saadparwaiz1/cmp_luasnip.git'

	Plug 'git@github.com:rcarriga/nvim-notify.git'
	Plug 'git@github.com:anuvyklack/pretty-fold.nvim.git'

	"" lsp
	Plug 'git@github.com:williamboman/mason.nvim.git'
	Plug 'git@github.com:neovim/nvim-lspconfig.git'
	Plug 'git@github.com:glepnir/lspsaga.nvim.git', { 'branch': 'main' }

	" colorscheme
	Plug 'git@github.com:tanvirtin/monokai.nvim.git'
endif

Plug 'git@github.com:phaazon/hop.nvim.git'
Plug 'git@github.com:numToStr/Comment.nvim.git'
Plug 'git@github.com:gcmt/wildfire.vim.git'
Plug 'git@github.com:tpope/vim-surround.git'
Plug 'git@github.com:L3MON4D3/LuaSnip.git'

call plug#end()            " required
