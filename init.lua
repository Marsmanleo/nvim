-- require plugins-setup
require("marsman.plugins-setup")

-- require marsman.core
require("marsman.core.options")
require("marsman.core.keymaps")
require("marsman.core.colorscheme")
require("marsman.core.highlights")

-- require marsman.plugins
require("marsman.plugins.comment")
require("marsman.plugins.nvim-tree")
require("marsman.plugins.lualine")
require("marsman.plugins.telescope")
require("marsman.plugins.nvim-cmp")
require("marsman.plugins.lsp.mason")
require("marsman.plugins.lsp.lspsaga")
require("marsman.plugins.lsp.lspconfig")
require("marsman.plugins.lsp.null-ls")
require("marsman.plugins.lsp.prettier")
require("marsman.plugins.autopairs")
require("marsman.plugins.gitsigns")
require("marsman.plugins.git")
require("marsman.plugins.obsidian")
require("marsman.plugins.treesitter")
require("marsman.plugins.wrapping")
require("marsman.plugins.transparent")
require("marsman.plugins.hop")
require("marsman.plugins.ufo")
require("marsman.plugins.gomove")
require("marsman.plugins.indentLine")
require("marsman.plugins.colorizer")

-- clipboard active
local has = vim.fn.has
local is_mac = has("macunix")
local is_win = has("win32")

if is_mac == 1 then
	require("marsman.core.macos")
end

if is_win == 1 then
	require("marsman.core.windows")
end
