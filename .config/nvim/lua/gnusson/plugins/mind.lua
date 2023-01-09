-- import mind plugin safely --
local setup, mind = pcall(require, "mind")
if not setup then
	print("Mind not found!") -- print error if plugin not installed
	return
end

-- configure todo-comments --
mind.setup()
