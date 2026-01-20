-- This file can be loaded by calling `lua require('plugins')` from your init.vim
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()
--
-- run :PackerCompile
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	use("wbthomason/packer.nvim")

	use("nvim-lua/plenary.nvim")

	use("bluz71/vim-nightfly-guicolors")

	-- tmus & split window navigation
	use("christoomey/vim-tmux-navigator")

	use("szw/vim-maximizer") -- maximize and restore window

	use("vim-scripts/ReplaceWithRegister")

	--devicons
	use("kyazdani42/nvim-web-devicons")

	-- file explorer
	use("nvim-tree/nvim-tree.lua")

	--Buffer navigation
	use("nvim-lualine/lualine.nvim")

	--Telescope Requirements
	use("nvim-lua/popup.nvim")

	--Telescope
	use("nvim-telescope/telescope.nvim")
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

	--LSP autocomplete
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	-- snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- package manager for lsp
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- configure lsp server
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		requires = { { "nvim-tree/nvim-web-devicons" } },
	}) -- enhanced lsp uis

	-- formatting & linting
	use("nvimtools/none-ls.nvim") -- configure formatters & linters (fork of null-ls)
	use("jay-babu/mason-null-ls.nvim") -- bridges gap b/w mason & none-ls

	--Markdown preview
	use("ellisonleao/glow.nvim")

	--Language packs
	use("sheerun/vim-polyglot")

	--vim-comment
	use("terrortylor/nvim-comment")

	--todo comments
	use("folke/todo-comments.nvim")

	-- treesitter configuration
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- nvim surround
	use("kylechui/nvim-surround")

	-- auto closing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

	-- git integration
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

	-- terminal
	use("akinsho/toggleterm.nvim")

	-- debugging
	use("mfussenegger/nvim-dap")
	use("rcarriga/nvim-dap-ui")
	use("mfussenegger/nvim-dap-python")

	-- better diagnostics UI
	use({
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons",
	})

	-- indent guides
	use("lukas-reineke/indent-blankline.nvim")

	-- which-key for keymap discovery
	use("folke/which-key.nvim")

	-- LSP progress indicator
	use("j-hui/fidget.nvim")

	-- Claude Code integration
	use({
		"greggh/claude-code.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- YAML companion for schema validation
	use("someone-stole-my-name/yaml-companion.nvim")

	-- markdown preview
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	if packer_bootstrap then
		require("packer").sync()
	end
end)
