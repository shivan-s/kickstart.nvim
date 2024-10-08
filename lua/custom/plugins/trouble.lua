return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {},
	config = function()
		vim.keymap.set("n", "<leader>xx",
			function() require("trouble").toggle({ mode = "diagnostics", focus = true }) end,
			{ desc = "Trouble" })
		vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end,
			{ desc = "[W]orkspace Diagnostics" })
		vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end,
			{ desc = "[D]ocument Diagnostics" })
		vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end,
			{ desc = "[Q]uickfix" })
		vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end,
			{ desc = "[L]oclist" })
		vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end,
			{ desc = "[G]et [R]eferences" })
	end
}
