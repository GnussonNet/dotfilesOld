-- import mini.animate plugin safely --
local setup, minianimate = pcall(require, "mini.animate")
if not setup then
	print("Mini.animate not found!") -- print error if plugin not installed
	return
end

-- configure mini.animate --
minianimate.setup()
