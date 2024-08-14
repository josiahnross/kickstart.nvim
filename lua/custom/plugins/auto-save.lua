return {
  'Pocco81/auto-save.nvim',
  config = function()
    require('auto-save').setup {
      enabled = true,
    }
    vim.keymap.set('n', '<leader>tas', '<Cmd>ASToggle<CR>', { desc = '[T]oggle [A]uto-[S]ave', noremap = true, silent = false })
  end,
}
