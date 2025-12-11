vim.api.nvim_set_keymap('n', '<Leader>np', '<cmd>NoNeckPain<CR>', { noremap = true, silent = true, desc = '[N]oNeck[P]ain' })
vim.api.nvim_create_autocmd('User', {
  pattern = 'NoNeckPainEnable',
  callback = function()
    vim.o.wrap = true
    vim.o.linebreak = true
  end,
})
vim.api.nvim_create_autocmd('User', {
  pattern = 'NoNeckPainDisable',
  callback = function()
    vim.o.wrap = false
    vim.o.linebreak = false
  end,
})
return {
  'shortcuts/no-neck-pain.nvim',
  version = '*',
}
