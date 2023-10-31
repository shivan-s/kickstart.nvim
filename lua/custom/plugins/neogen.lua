vim.api.nvim_set_keymap("n", "<Leader>ng", ":lua require('neogen').generate()<CR>",
	{ noremap = true, silent = true, desc = "[N]eo[G]en" })
return {
	"danymat/neogen",
	dependencies = "nvim-treesitter/nvim-treesitter",
	config = true,
	version = "*",
	snippet_engine = "luasnip"
}
