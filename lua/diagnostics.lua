vim.diagnostic.config {
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '',
      [vim.diagnostic.severity.WARN] = '',
      [vim.diagnostic.severity.INFO] = '',
      [vim.diagnostic.severity.HINT] = '',
    },
  },
  severity_sort = true,
  virtual_text = false,
}
-- vim.api.nvim_set_hl(0, 'CSpellDiagnostic', { fg = '#FF8800', underline = true })
-- vim.api.nvim_set_hl_group('DiagnosticInfo', 'SpellChecking');

vim.keymap.set('n', '[d', function()
   vim.diagnostic.jump { count = -1, float = true }
 end, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', function()
  vim.diagnostic.jump { count = 1, float = true }
end, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', function()
  vim.diagnostic.setloclist { severity = 'ERROR' }
end, { desc = 'Open Error diagnostic [Q]uickfix list' })
