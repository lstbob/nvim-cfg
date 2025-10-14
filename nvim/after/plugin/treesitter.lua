require('nvim-treesitter.configs').setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "c_sharp", "lua", "vim", "help" }, -- :cite[1]

  -- Enable highlighting
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false, -- :cite[8]
  },

  -- Enable indentation (optional but recommended)
  indent = {
    enable = true, -- :cite[9]
  },
}
