return {
	"folke/zen-mode.nvim",
	dependencies = { "folke/twilight.nvim",
	},
	opts = {
		window = {
			backdrop = 0.95,
			width = 120,
			height = 1,
			options = {
				signcolumn = "no",
				number = false,
				relativenumber = false,
				cursorline = false,
				cursorcolumn = false,
				foldcolumn = "0",
				list = false,
				wrap = true,
				linebreak = true,
			},
		},
		plugins = {
			options = {
				enabled = true,
				ruler = false,
				showcmd = false,
				laststatus = 0,
			},
			twilight = { enabled = true },
			gitsigns = { enabled = false },
			tmux = { enabled = true },
			kitty = {
				enabled = false,
				font = "+4",
			},
			alacritty = {
				enabled = false,
				font = "14",
			},
			wezterm = {
				enabled = false,
				font = "+4",
			},
		},
		on_open = function()
		end,
		on_close = function()
		end,
	},
	vim.keymap.set("n", "<leader>zm", "<cmd>ZenMode<CR>",
		{ silent = false, noremap = false, desc = "[Z]en [M]ode" }),
}
