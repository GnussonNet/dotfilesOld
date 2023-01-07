-- import comment plugin safely --
local setup, comment = pcall(require, "Comment")
if not setup then
	print("Comment not found!") -- print error if plugin not installed
	return
end

-- enable comment --
comment.setup({
	pre_hook = function(ctx)
		return require("Comment.jsx").calculate(ctx)
	end,
})
