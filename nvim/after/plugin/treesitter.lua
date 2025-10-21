require('nvim-treesitter.configs').setup {
  ensure_installed = { "c_sharp", "c", "go", "python", "rust", "lua" },
  highlight = { enable = true },
  indent = { enable = true },
  auto_install = true,
}
