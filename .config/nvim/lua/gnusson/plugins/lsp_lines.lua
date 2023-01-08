-- import lsp_lines plugin safely --
local setup, lsplines = pcall(require, "lsp_lines")
if not setup then
	print("Lsp_lines not found!") -- print error if plugin not installed
	return
end

-- configure lsp_lines --
lsplines.setup()
