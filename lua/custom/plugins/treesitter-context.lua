return {
  'nvim-treesitter/nvim-treesitter-context',
  config = function()
    require('treesitter-context').setup { mode = 'cursor' }
    -- require('treesitter-context').setup {
    --   enable = true,
    -- }
  end,
}
