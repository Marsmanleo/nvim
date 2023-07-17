-- import wrapping plugin safely
local setup, wrapping = pcall(require, "wrapping")
if not setup then
	return
end

-- configure/enable wrapping
wrapping.setup({
	softener = { markdown = 1.5 },
})
