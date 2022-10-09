-- formatting.latexindent,
local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
    formatting.autopep8,
    formatting.markdownlint,
    diagnostics.flake8
}

null_ls.setup({
    sources = sources,

    on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
            vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()")
        end
    end,
})
