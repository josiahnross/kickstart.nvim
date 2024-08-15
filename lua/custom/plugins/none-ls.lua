return {
  'nvimtools/none-ls.nvim',
  dependencies = { 'davidmh/cspell.nvim' },
  config = function()
    local sldkflkdsfj = 0;
    local null_ls = require("null-ls")
    local cspell = require 'cspell'
    null_ls.setup {
      sources = {
        -- null_ls.builtins.completion.spell,
        null_ls.builtins.diagnostics.codespell,
        -- cspell.diagnostics,
        -- cspell.code_actions,
      },
    }
  end,
}
