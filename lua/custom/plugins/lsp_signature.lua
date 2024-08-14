return{
  "ray-x/lsp_signature.nvim",
  event = "VeryLazy",
  opts = {toggle_key = '<C-s>'},
  config = function(_, opts) require'lsp_signature'.setup(opts) end
} 
