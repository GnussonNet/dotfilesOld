-- import todo-comments plugin safely --
local setup, todocomments = pcall(require, "todo-comments")
if not setup then
	print("Todo-comments not found!") -- print error if plugin not installed
	return
end

-- configure todo-comments --
todocomments.setup()
