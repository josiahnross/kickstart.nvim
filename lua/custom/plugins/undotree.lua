return {
  'mbbill/undotree',
  config = function()
    vim.g.undotree_SetFocusWhenToggle = 1 -- Example setting to focus the undotree window
    vim.keymap.set('n', '<leader>tu', ':UndotreeToggle<CR>', { desc='[T]oggle [U]ndotree', noremap = true, silent = true })
    -- vim.api.nvim_set_keymap('n', '<leader>tu', ':UndotreeToggle<CR>', { desc='[T]oggle [U]ndotree', noremap = true, silent = true })
  end,
}
