-- import chatgpt plugin safely --
local setup, chatgpt = pcall(require, "chatgpt")
if not setup then
	print("Chatgpt not found!") -- print error if plugin not installed
	return
end

-- configure chatgpt --
chatgpt.setup()
