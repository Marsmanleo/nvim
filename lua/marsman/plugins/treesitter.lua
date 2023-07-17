-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

-- configure treesitter
treesitter.setup({
	-- enable syntax highlighting
	highlight = {
		enable = true,
		disable = {},
	},
	-- enable indentation
	indent = { enable = true, disable = {} },
	-- ensure these language parsers are installed
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"tsx",
		"yaml",
		"html",
		"css",
		"markdown",
		"markdown_inline",
		"svelte",
		"graphql",
		"bash",
		"lua",
		"vim",
		"dockerfile",
		"gitignore",
		"swift",
		"php",
		"fish",
		"toml",
	},
	-- enable autotagging (w/ nvim-ts-autotag plugin)
	autotag = { enable = true },

	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},

	-- auto install above language parsers
	auto_install = true,
})
