return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require('conform')
		conform.setup({
			formatter_by_ft = {
				sql = { "sql_formatter" },
				lua = { "stylelua" },
				python = { "ruff_format" },
				javascipt = { { "prettierd", "prettier" } },
				typescipt = { { "prettierd", "prettier" } },
				svelte = { { "prettierd", "prettier" } },
				markdown = { { "prettierd", "prettier" } },
				html = { { "prettierd", "prettier" } },
				json = { { "prettierd", "prettier" } },
				css = { { "prettierd", "prettier" } },
				["*"] = { "codespell" },
				["_"] = { "trim_newline", "trim_whitespace" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 500
			},
			vim.keymap.set({ "n", "v" }, "<leader>ft", function()
				conform.format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 500
				})
			end, { desc = "[F]orma[T] file or range (in visual mode)" }
			)
		})
	end

}
