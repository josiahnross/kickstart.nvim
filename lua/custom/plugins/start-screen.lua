return {
  "startup-nvim/startup.nvim",
  dependencies = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
  config = function()
    require"startup".setup({
      theme = "dashboard"
    })
  end
}
-- return {
--   'CWood-sdf/spaceport.nvim',
--   opts = {},
--   lazy = false, -- load spaceport immediately
-- }
--   {
--   'nvimdev/dashboard-nvim',
--   event = 'VimEnter',
--   config = function()
--     require('dashboard').setup {
--       vim.keymap.set(
--       -- config
--     }
--   end,
--   dependencies = { {'nvim-tree/nvim-web-devicons'}}
-- }
