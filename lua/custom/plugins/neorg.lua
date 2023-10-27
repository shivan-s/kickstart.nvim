local dirman_config = require("custom.user-specific")
return {
	"nvim-neorg/neorg",
	build = ":Neorg sync-parsers",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"pysan3/neorg-templates",
		"L3MON4D3/LuaSnip",
	},
	config = function()
		require("neorg").setup {
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {},
				["core.dirman"] = {
					config = dirman_config,
				},
				["core.completion"] = {
					config = {
						engine = "nvim-cmp"
					}
				},
				["core.summary"] = {
					config = {
						strategy = "default"
					}
				},
				["external.templates"] = {}
			},
		}
		vim.keymap.set("n", "<leader>no", "<cmd>Neorg<CR>", { noremap = true, silent = true, desc = "[N]e[O]rg" })
	end,
}
