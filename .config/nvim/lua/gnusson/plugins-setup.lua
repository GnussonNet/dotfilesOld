---------------------
-- Install packer
---------------------
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
local packer_bootstrap = ensure_packer() -- true if packer was just installed

---------------------
-- Reload when file saved
---------------------
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

---------------------
-- Import packer
---------------------
local status, packer = pcall(require, "packer")
if not status then
	return
end

---------------------
-- Plugins
---------------------
return packer.startup(function(use)
	-- packer can manage itself --
	use("wbthomason/packer.nvim")

	use("nvim-lua/plenary.nvim") -- lua functions that many plugins use

	use("folke/tokyonight.nvim") -- preferred colorscheme

	use("christoomey/vim-tmux-navigator") -- tmux & split window navigation

	use("szw/vim-maximizer") -- maximizes and restores current window

	-- essential plugins --
	use("tpope/vim-surround") -- add, delete, change surroundings (it's awesome)
	use("vim-scripts/ReplaceWithRegister") -- replace with register contents using motion (gr + motion)

	-- commenting with gc --
	use({ "numToStr/Comment.nvim", branch = "jsx" })

	-- file explorer --
	use("nvim-tree/nvim-tree.lua")

	-- vs-code like icons --
	use("kyazdani42/nvim-web-devicons")

	-- cursor animation --
	use("echasnovski/mini.animate")

	-- show indentions --
	use("lukas-reineke/indent-blankline.nvim")

	-- highligt all word on cursor --
	use({
		"RRethy/vim-illuminate",
		config = function()
			require("illuminate").configure({
				filetypes_denylist = {
					"dashboard",
					"NvimTree",
					"packer",
					"mason",
				},
				providers = {
					"lsp",
					"treesitter",
					"regex",
				},
			})
		end,
	})

	-- notes/todo list --
	use("phaazon/mind.nvim")

	-- statusline --
	use("nvim-lualine/lualine.nvim")

	-- fuzzy finding w/ telescope --
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder

	-- color highlight --
	use("brenoprata10/nvim-highlight-colors")

	-- autocompletion --
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths

	-- snippets --
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets

	-- managing & installing lsp servers, linters & formatters --
	use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
	use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

	-- configuring lsp servers --
	use("neovim/nvim-lspconfig") -- easily configure language servers
	use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
	use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion
	use("https://git.sr.ht/~whynothugo/lsp_lines.nvim") -- diagnostic virtual lines
	use("ray-x/lsp_signature.nvim") -- hints when typing

	-- todo highlightning --
	use({ "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" })

	-- custom notifications --
	use("rcarriga/nvim-notify")

	-- used for noice, searchbox and chatGTP --
	use("MunifTanjim/nui.nvim")

	-- ui messages, cmdline and popupmenu --
	use({
		"folke/noice.nvim",
		requires = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
	})

	use({
		"VonHeikemen/searchbox.nvim",
		requires = {
			{ "MunifTanjim/nui.nvim" },
		},
	})

	use({
		"jackMort/ChatGPT.nvim",
		requires = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
	})

	-- formatting & linting --
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

	-- treesitter configuration ..
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- rainbow brackets --
	use("mrjones2014/nvim-ts-rainbow")

	-- auto closing --
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use("windwp/nvim-ts-autotag") -- autoclose tags

	-- git integration --
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

	-- which key --
	use("folke/which-key.nvim") -- display possible keybinds

	-- dashboard --
	use("glepnir/dashboard-nvim") -- display dashboard when launching neovim

	-- barbar --
	use({
		"romgrk/barbar.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	}) -- show buffer tabs

	if packer_bootstrap then
		require("packer").sync()
	end
end)
