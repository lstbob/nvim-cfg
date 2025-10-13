local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input('Grep > ') });
end)

vim.keymap.set("n", "<leader>gc", function()
  local word = vim.fn.expand("<cword>") -- e.g., "AccountEntity"
  local pattern = string.format(
    [[\b(public|private|protected|internal)\s+(static|abstract|sealed|virtual)?\s*(class|enum|interface|record)\s+\b%s\b]],
    word
  )
  builtin.grep_string({ search = pattern, use_regex = true })
end)

vim.keymap.set("n", "<leader>gm", function()
  local method_name = vim.fn.expand("<cword>") -- Get word under cursor (e.g., "GetAccountFromDb")
  local pattern = string.format(
    [[\b(public|private|internal|protected)\s+(static|virtual|abstract|override)?\s+([\w<>,\s]+?)\s+%s\b]],
    method_name
  )
  builtin.grep_string({
    search = pattern,
    use_regex = true,
    word_match = "-w",       -- Match whole words only
    case_mode = "smart_case" -- Case-sensitive only if uppercase
  })
end)

vim.keymap.set('n', '<leader>fr', function()
  local word = vim.fn.expand('<cword>') -- Get the word under cursor
  builtin.grep_string({ search = word }) -- Auto-search without input()
end)
