vim.notify = require("notify")

if true then
	local set = vim.opt
	set.backup = false
	set.expandtab = true
	set.ignorecase = true
	set.number = true
	set.shiftwidth = 2
	set.smartcase = true
	set.splitbelow = true
	set.splitright = true
	set.wrap = false
	set.hlsearch = true
	set.hidden = true
	set.showmatch = true
	set.relativenumber = true
	set.title = true
	set.cursorline = true
	set.ruler = true
	set.clipboard = "unnamedplus"
	set.swapfile = false
	set.wb = false
	set.cindent = true
	set.tabstop = 2
  set.termguicolors = true
end

require "impatient"

require "core"
require "plugins"
require "lsp"
