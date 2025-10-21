-- after/plugin/luasnip.lua
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- Load snippets for C# filetype
ls.add_snippets("cs", {
    -- 1. cdesc/
    s("/cld/", {
        t({"/// <summary>", "/// Represents "}), i(1, "*"), t({"", "/// </summary>"}),
    }),

    -- 2. ctordesc/
    s("/cd/", {
        t({"/// <summary>", "/// Initializes a new instance of <see cref=\"" }),
        i(1, "*"), t({"\"/>", "/// </summary>"}),
    }),

    -- 3. mdesc/
    s("/md/", {
        t({"/// <summary>", "/// Responsible for "}), i(1, "*"), t({"", "/// </summary>"}),
        t({"", "/// <param name=\"param1\">"}), i(2, "*"), t({"</param>"}),
        t({"", "/// <param name=\"param2\">"}), i(3, "*"), t({"</param>"}),
        t({"", "/// <param name=\"param3\">"}), i(4, "*"), t({"</param>"}),
        t({"", "/// <param name=\"param4\">"}), i(5, "*"), t({"</param>"}),
        t({"", "/// <exception cref=\""}), i(6, "*"), t({"\">"}), i(7, "*"), t({"</exception>"}),
        t({"", "/// <returns>"}), i(8, "*"), t({".</returns>"}),
    }),
})

-- Optional: <Tab> to expand snippet or jump
vim.api.nvim_set_keymap("i", "<Tab>", 
    [[luasnip#expand_or_jumpable() ? "<Plug>luasnip-expand-or-jump" : "<Tab>"]], 
    {expr = true, noremap = true}
)

vim.api.nvim_set_keymap("s", "<Tab>", 
    [[<cmd>lua require'luasnip'.jump(1)<Cr>]], 
    {noremap = true}
)

vim.api.nvim_set_keymap("i", "<S-Tab>", 
    [[<cmd>lua require'luasnip'.jump(-1)<Cr>]], 
    {noremap = true}
)

vim.api.nvim_set_keymap("s", "<S-Tab>", 
    [[<cmd>lua require'luasnip'.jump(-1)<Cr>]], 
    {noremap = true}
)

