-- return {
--   'catppuccin/nvim',
--   name = 'catppuccin',
--   priority = 1000,
--   config = function()
--     require('catppuccin').setup {
--       flavour = 'mocha',
--       dim_inactive = { enabled = true },
--       styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
--         comments = { 'italic' },
--         keywords = { 'bold' },
--       },
--       integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         treesitter = true,
--         notify = false,
--         mini = {
--           enabled = true,
--           indentscope_color = '',
--         },
--       },
--     }
--     vim.cmd.colorscheme 'catppuccin'
--   end,
-- }

-- return {
--   'EdenEast/nightfox.nvim',
--   priority = 9000,
--   config = function()
--     require('nightfox').setup {
--       options = {
--         dim_inactive = true,
--         styles = {
--           comments = "italic",
--           -- functions = "italic,bold",
--           types = "bold",
--         },
--         inverse = {
--           match_paren = false,
--           visual = true,
--           search = false,
--         },
--       },
--     }
--     vim.cmd 'colorscheme nightfox'
--   end,
-- }

-- return {
--   'ribru17/bamboo.nvim',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require('bamboo').setup {
--       -- optional configuration here
--     }
--     require('bamboo').load()
--   end,
-- }
return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000, -- Make sure to load this before all the other start plugins.
  opts = {},
  config = function()
    require('tokyonight').setup {
      style = 'night',
      styles = {
        sidebars = 'dark',
      },
      dim_inactive = true,
      on_colors = function(colors) end,
      on_highlights = function(highlights, colors)
        highlights.CursorLine = { bg = colors.bg_dark }
      end,
    }
    vim.cmd [[colorscheme tokyonight]]
  end,
}
