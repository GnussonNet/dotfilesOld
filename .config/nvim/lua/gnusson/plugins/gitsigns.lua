-- import gitsigns plugin safely --
local setup, gitsigns = pcall(require, "gitsigns")
if not setup then
	print("Gitsigns not found!") 						-- print error if plugin not installed
	return
end

-- configure/enable gitsigns --
gitsigns.setup()
