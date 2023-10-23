return {
	"folke/zen-mode.nvim",
	dependencies = { "folke/twilight.nvim",
	},
	opts = {},
	vim.keymap.set("n", "<leader>zm", "<cmd>ZenMode<CR>",
		{ silent = false, noremap = false, desc = "[Z]en [M]ode" }),
}
