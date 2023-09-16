local lsp = require('lsp-zero')

lsp.preset('recommended')

-- Fix Undefined global 'vim'
lsp.configure('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

-- Use the language version specific rust-analyzer
require('lspconfig').rust_analyzer.setup({
    cmd = {
        "rustup", "run", "stable", "rust-analyzer",
    }
})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
    lsp.buffer_autoformat()
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})
