vim.api.nvim_set_keymap('n', '<Leader>u', '<cmd>Atone toggle<CR>', { noremap = true, silent = true, desc = '[U]ndotree (Atone)' })
return {
  'XXiaoA/atone.nvim',
  cmd = 'Atone',
  opts = {},
}
