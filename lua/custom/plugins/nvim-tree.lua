-- ==========================================
-- Nvimtree
-- https://github.com/nvim-tree/nvim-tree.lua
-- ==========================================
vim.g.nvim_tree_icons = {
	default = "",
	symlink = "",
	git = {
		unstaged = "",
		staged = "S",
		unmerged = "",
		renamed = "➜",
		deleted = "",
		untracked = "U",
		ignored = "◌",
	},
	folder = {
		default = "",
		open = "",
		empty = "",
		empty_open = "",
		symlink = "",
	},
}
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>",
	{ noremap = true, silent = true, desc = "Nvimtree Toggle" })

return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require('nvim-tree').setup {
			diagnostics = {
				enable = true,
				icons = {
					hint = "",
					info = "",
					warning = "",
					error = "",
				},
			},
			update_focused_file = {
				enable = true,
				update_cwd = true,
				ignore_list = {},
			},
			system_open = {
				cmd = nil,
				args = {},
			},
			filters = {
				dotfiles = false,
			},
			git = {
				enable = true,
				ignore = true,
				timeout = 500,
			},
			view = {
				width = 40,
				side = "left",
				number = false,
				relativenumber = false,
			},
			trash = {
				cmd = "trash",
				require_confirm = true,
			},
			actions = {
				open_file = {
					quit_on_open = true,
					window_picker = {
						enable = false,
					},
				},
			},
		}
	end
}
