-- import nvim-highlight-colors plugin safely --
local setup, highlightcolors = pcall(require, "nvim-highlight-colors")
if not setup then
	print("Nvim-highlight-colors not found!") -- print error if plugin not installed
	return
end

-- configure nvim-highlight-colors --
highlightcolors.setup({
	enable_named_colors = true,
	enable_tailwind = true,
})
