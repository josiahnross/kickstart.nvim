return {
  'nvimtools/none-ls.nvim',
  dependencies = { 'dvidmh/cspell.nvim' },
  config = function()
    local null_ls = require 'null-ls'
    local cspell = require 'cspell'
    null_ls.setup {
      sources = {
        cspell.diagnostics.with {
          diagnostics_postprocess = function(diagnostic)
            diagnostic.severity = vim.diagnostic.severity.INFO
            diagnostic.hl_group = 'CSpellDiagnostic'
          end,
        },
        cspell.code_actions,
      },
    }
  end,
}
