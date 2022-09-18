require("nvim-tree").setup({
	diagnostics = {
		enable = true,
	},
	view = {
		adaptive_size = true,

	},
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
  },
})