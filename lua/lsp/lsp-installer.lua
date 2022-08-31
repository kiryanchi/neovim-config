require("nvim-lsp-installer").setup({
  --ensure_installed = {"sumneko_lua", "eslint", "html", "tsserver", "vimls", "cssmodules_ls", "gopls", "tailwindcss", "pyright"},
  ensure_installed = SERVERS,
  automatic_installation = true,
  ui = {
    icons = {
      server_installed = "✓",
      server_pending = "➜",
      server_uninstalled = "✗"
    }
  }
})
