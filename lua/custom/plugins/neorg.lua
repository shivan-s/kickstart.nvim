return {
	"nvim-neorg/neorg",
	build = ":Neorg sync-parsers",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("neorg").setup {
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {},
				["core.dirman"] = {
					config = {
						workspaces = {
							notes = "~/notes",
							standup = "~/notes/Standup",
						},
						default_workspace = "standup"
					},
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
			},
		}
		vim.keymap.set("n", "<leader>no", "<cmd>Neorg<CR>", { noremap = true, silent = true, desc = "[N]e[O]rg" })
	end,
}
