-- import obsidian plugin safely
local obsidian_setup, obsidian = pcall(require, "obsidian")
if not obsidian_setup then
	return
end

obsidian.setup({
	dir = "~/obsidian",
	completion = {
		nvim_cmp = true,
	},
	open_app_foreground = true,
})
