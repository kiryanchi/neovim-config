local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then options = vim.tbl_extend("force", options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("", "<leader>b", ":buffers<CR>:buffer<Space>")
map("", "<leader>t", ":tabs<CR>:tabmove<Space>")

map("", "nt", ":NvimTreeFocus<CR>")

map("", "<leader>qq", ":q<CR>:q<CR>:q<CR>")
