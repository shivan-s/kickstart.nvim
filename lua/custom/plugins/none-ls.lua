return {
	"nvimtools/none-ls.nvim",
	dependences = "plenary.nvim",
	config = function()
		local none_ls = require("null-ls")
		local f = none_ls.builtins.formatting
		local l = none_ls.builtins.diagnostics
		none_ls.setup({
			sources = {
				-- Golang
				f.gofmt,
				f.golines,
				f.goimports,
				f.goimports_reviser,
				f.sql_formatter,
				f.ruff,
				l.ruff,
				l.eslint_d,
				f.prettierd,
				l.codespell,
				l.proselint,
				f.trim_newlines,
				f.trim_whitespace,
				f.dart_format,
			},
			should_attach = function(bufnr)
				return not vim.api.nvim_buf_get_name(bufnr):match("NvimTree")
			end
		})
	end
}
