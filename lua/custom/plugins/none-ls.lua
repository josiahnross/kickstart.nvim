return {
  'nvimtools/none-ls.nvim',
  dependencies = { 'davidmh/cspell.nvim' },
  config = function()
    local null_ls = require 'null-ls'
    local cspell = require 'cspell'
    local cspell_config = {
      on_add_to_json = function(payload)
        print 'Test On Add To Dict'
        os.execute(
          string.format(
            "jq -S '.words |= sort' %s > %s.tmp && mv %s.tmp %s",
            payload.cspell_config_path,
            payload.cspell_config_path,
            payload.cspell_config_path,
            payload.cspell_config_path
          )
        )
      end,
      on_add_to_dictionary = function(payload)
        print 'Test On Add To Dict'
        -- For example, you can sort the dictionary after adding a word
        os.execute(string.format('sort %s -o %s', payload.dictionary_path, payload.dictionary_path))
      end,
    }
    null_ls.setup {
      sources = {
        -- null_ls.builtins.completion.spell,
        cspell.diagnostics.with {
          { config = cspell_config },
          diagnostics_postprocess = function(diagnostic)
            diagnostic.severity = vim.diagnostic.severity.INFO
          end,
        },
        cspell.code_actions.with { config = cspell_config },
      },
    }
  end,
}
