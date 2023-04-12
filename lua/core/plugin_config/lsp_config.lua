require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "rust_analyzer" },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspsaga').setup({
  use_saga_diagnostic_sign = true,
  -- diagnostic sign
  error_sign = "",
  warn_sign = "",
  hint_sign = "",
  infor_sign = "",
  diagnostic_header_icon = "   ",
  code_action_icon = "",
  code_action_prompt = {
    enable = true,
    sign = true,
    sign_priority = 40,
    virtual_text = true,
   },
  symbol_in_winbar = {
    in_custom = false,
    enable = true,
    separator = '  ',
    show_file = true,
    file_formatter = ""
  },
})


vim.keymap.set("n", "gd", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<cr>', { silent = true })
vim.keymap.set({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", { silent = true })


-- LSP mappings
-- global
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)


-- local
local on_attach = function(_, bufnr)
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end

 local function buf_set_option(...)
		vim.api.nvim_buf_set_option(bufnr, ...)
	end

	buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

  local opts = { buffer = bufnr, noremap = true, silent = true }

  buf_set_keymap('n', 'gD', ':lua vim.lsp.buf.declaration<CR>', opts)
  buf_set_keymap('n', 'gd', 'lua: vim.lsp.buf.definition<CR>', opts)
  buf_set_keymap('n', 'K', 'lua: vim.lsp.buf.hover<CR>', opts)
  buf_set_keymap('n', 'gi', 'lua: vim.lsp.buf.implementation', opts)
  buf_set_keymap('n', '<C-k>', 'lua: vim.lsp.buf.signature_help', opts)
  buf_set_keymap('n', '<space>wa', 'lua: vim.lsp.buf.add_workspace_folder', opts)
  buf_set_keymap('n', '<space>wr', 'lua: vim.lsp.buf.remove_workspace_folder', opts)

  buf_set_keymap('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, opts)

  buf_set_keymap('n', '<space>D', 'lua: vim.lsp.buf.type_definition', opts)
  buf_set_keymap('n', '<space>rn', 'lua: vim.lsp.buf.rename', opts)
  buf_set_keymap('n', 'gr', 'lua: vim.lsp.buf.references', opts)
  buf_set_keymap('n', '<space>e', 'lua: vim.diagnostic.open_float', opts)
  buf_set_keymap('n', '[d', 'lua: vim.diagnostic.goto_prev', opts)
  buf_set_keymap('n', ']d', 'lua: vim.diagnostic.goto_next', opts)
  buf_set_keymap('n', '<space>q', 'lua: vim.diagnostic.setloclist', opts)
  buf_set_keymap('n', '<space>q', 'lua: vim.diagnostic.setloclist', opts)
end


require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require("lspconfig").pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
