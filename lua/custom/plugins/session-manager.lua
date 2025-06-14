return {
	'Shatur/neovim-session-manager',
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local config = require("session_manager.config")
		require("session_manager").setup({
			autoload_mode = config.AutoloadMode.Disabled,
		})
		vim.keymap.set("n", "<leader>sml", "<cmd>SessionManager load_session<CR>",
			{ noremap = true, silent = true, desc = "[S]ession [M]anager - [L]oad sessions" })
		vim.keymap.set("n", "<leader>smc", "<cmd>SessionManager load_current_dir_session<CR>",
			{ noremap = true, silent = true, desc = "[S]ession [M]anager - Load [C]urrent dir session" })
		vim.keymap.set("n", "<leader>smd", "<cmd>SessionManager delete_session<CR>",
			{ noremap = true, silent = true, desc = "[S]ession [M]anager - [D]elete sessions" })
	end
}
