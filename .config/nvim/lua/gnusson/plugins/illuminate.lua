-- import illuminate plugin safely --
local setup, illuminate = pcall(require, "illuminate")
if not setup then
	print("Illuminate not found!") -- print error if plugin not installed
	return
end

-- configure illuminate --
illuminate.setup({
	providers = {
		"lsp",
		"treesitter",
		"regex",
	},
})
