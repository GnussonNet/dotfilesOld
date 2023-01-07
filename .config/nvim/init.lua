-- packer --
require("gnusson.plugins-setup")

-- base configurations --
require("gnusson.core.options")
require("gnusson.core.keymaps")
require("gnusson.core.colorscheme")

-- plugins configurations --
require("gnusson.plugins.comment")
require("gnusson.plugins.nvim-tree")
require("gnusson.plugins.lualine")
require("gnusson.plugins.telescope")
require("gnusson.plugins.nvim-cmp")
require("gnusson.plugins.lsp.mason")
require("gnusson.plugins.lsp.lspsaga")
require("gnusson.plugins.lsp.lspconfig")
require("gnusson.plugins.lsp.null-ls")
require("gnusson.plugins.autopairs")
require("gnusson.plugins.treesitter")
require("gnusson.plugins.gitsigns")
require("gnusson.plugins.which-key")
require("gnusson.plugins.nvim-highlight-colors")
require("gnusson.plugins.mini-animate")
