vim.api.nvim_set_keymap('n', '<Leader>np', '<cmd>NoNeckPain<CR>', { noremap = true, silent = true, desc = '[N]oNeck[P]ain' })
vim.api.nvim_create_autocmd('User', {
  pattern = 'NoNeckPainEnable',
  callback = function()
    vim.opt.wrap = true
    vim.opt.linebreak = true
  end,
})
vim.api.nvim_create_autocmd('User', {
  pattern = 'NoNeckPainDisable',
  callback = function()
    vim.opt.wrap = false
    vim.opt.linebreak = false
  end,
})
return {
  'shortcuts/no-neck-pain.nvim',
  version = '*',
}
