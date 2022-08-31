local theme = ''
if THEME == "nord" then
  theme = "nord"
elseif THEME == "seoul256" then
  theme = "seoul256"
end
require("lualine").setup({
  sections = {
    lualine_c = {
      { require("nvim-navic").get_location, cond = require("nvim-navic").is_available },
    }
  },
  options = {
    theme = theme,
  },
  extensions = {
    'nvim-tree',
    'fzf'
  }
})
