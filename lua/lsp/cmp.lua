local cmp = require("cmp")

local formatting = {
  format = require("lspkind").cmp_format({
    mode = "symbol",
    maxwidth = 50,
  })
}

local mapping = cmp.mapping.preset.insert({
  ["<CR>"] = cmp.mapping.confirm(),
  ["<C-Space>"] = cmp.mapping.complete(),
  ["<C-f>"] = cmp.mapping.scroll_docs(4),
  ["<C-b>"] = cmp.mapping.scroll_docs(-4),
  ["<C-d>"] = cmp.mapping.scroll_docs(-4),
  ["<C-u>"] = cmp.mapping.scroll_docs(4),
})

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<CR>"] = cmp.mapping.confirm({select = true}),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-u>"] = cmp.mapping.scroll_docs(4),
  }),
  formatting = {
    format = require("lspkind").cmp_format({
      mode = "symbol_text",
      maxwidth = 50,
    })
  },
  completion = {
    keyword_lengh = 4,
  },
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end
  },
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "vsnip" },
  }, {
    { name = "buffer" },
  })
})

cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "buffer" }
  }
})

cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = "path" }
  }, {
    { name = "cmdline" }
  })
})

-- local capabilities = require("cmp_nvim_lsp").update_capabilites(vim.lsp.porotocol.make_client_capabilities())
-- require("lspconfig")
