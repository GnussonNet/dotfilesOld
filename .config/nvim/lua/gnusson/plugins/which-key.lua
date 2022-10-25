-- import which-key plugin safely --
local setup, whichkey = pcall(require, "which-key")
if not setup then
	print("Which-key not found!") -- print error if plugin not installed
	return
end

-- configure which-key --
whichkey.setup()
