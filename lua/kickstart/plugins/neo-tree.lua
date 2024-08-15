-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>te', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
    close_if_last_window = true,
    filesystem = {
      -- use_devicons=true,
      window = {
        mappings = {
          ['P'] = { 'toggle_preview', config = { use_float = true, use_image_nvim = false } },
          ['Y'] = function(state)
            -- NeoTree is based on [NuiTree](https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/tree)
            -- The node is based on [NuiNode](https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/tree#nuitreenode)
            local node = state.tree:get_node()
            local filepath = node:get_id()
            vim.fn.setreg('+', filepath)
            vim.notify('Copied: ' .. filepath)
          end,
          -- ['P'] = function(state)
          --   local node = state.tree:get_node()
          --   require('neo-tree.ui.renderer').focus_node(state, node:get_parent_id())
          -- end,
          ['<leader>te'] = 'close_window',
        },
      },
    },
  },
}
