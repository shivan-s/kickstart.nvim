return {
	"nvimtools/none-ls.nvim",
	dependences = "plenary.nvim",
	config = function()
		local none_ls = require("null-ls")
		local f = none_ls.builtins.formatting
		local l = none_ls.builtins.diagnostics
		none_ls.setup({
			sources = {
				f.sql_formatter,
				f.ruff,
				l.ruff,
				l.eslint_d,
				f.prettierd,
				f.stylua,
				f.codespell,
				f.trim_newlines,
				f.trim_whitespace,
			}
		})
	end
}
