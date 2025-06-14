return {
	'kristijanhusak/vim-dadbod-ui',
	dependencies = {
		"tpope/vim-dadbod",
		'kristijanhusak/vim-dadbod-completion'
	},
	config = function()
		vim.keymap.set('n', '<leader>db', "<cmd>DBUIToggle<CR>", { expr = true, silent = true, desc = "[DB]UI" })
	end
}
