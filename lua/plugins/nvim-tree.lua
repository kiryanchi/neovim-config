require("nvim-tree").setup({
  sort_by = "extension",
  open_on_setup = false,
  open_on_setup_file = true,
  update_cwd = true,
  filters = {
    dotfiles = true,
  }
})
