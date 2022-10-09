local opts = { noremap = true, silent = true }

vim.g.bufferline = {
	animation = true,
	tabpages = true,
	clickable = true,
    icons = true,
	icon_close_tab = "",
    icon_close_tab_modified = '●',
	icon_separator_active = '',
	icon_separator_inactive = '',
    semantic_letters = true,
}


local nvim_tree_events = require('nvim-tree.events')
local bufferline_state = require('bufferline.api')

local function get_tree_size()
  return require'nvim-tree.view'.View.width
end

nvim_tree_events.subscribe('TreeOpen', function()
  bufferline_state.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('Resize', function()
  bufferline_state.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('TreeClose', function()
  bufferline_state.set_offset(0)
end)
