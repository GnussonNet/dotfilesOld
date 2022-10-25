-- import nvim-tree plugin safely --
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	print("Nvim-tree not found!") -- print error if plugin not installed
	return
end

-- recommended settings from nvim-tree documentation --
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
vim.g.nvim_tree_auto_close = 1

-- configure nvim-tree --
nvimtree.setup({
	-- disable window_picker for
	-- explorer to work well with
	-- window splits --
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
})
