-- import lualine plugin safely --
local status, lualine = pcall(require, "lualine")
if not status then
	print("Lualine not found!")							-- print error if plugin not installed
	return
end

-- get lualine tokyonight theme --
local lualine_tokyonight = require("lualine.themes.tokyonight")

-- configure lualine with modified theme --
lualine.setup({
	options = {
		theme = lualine_tokyonight,
	},
})
