require('nvim-treesitter.configs').setup({
  ensure_installed = {
    "python",
    "json",
    "html",
    "css"
  },

  sync_install = false,

  highlight = {
    enable = true,
    disable = { "c", "rust" },
    additionadditional_vim_regex_highlighting = false,
  },
  --> refactor module
  refactor = {
    highlight_current_scope = { enable = false},
    highlight_definitions = {
      enable = true,
      -- Set to false if you have an `updatetime` of ~100.
      clear_on_cursor_move = true,
    },
    smart_rename = {
        enable = true,
        keymaps = {
          smart_rename = "grr",
        },
      },
    navigation = {
      enable = true,
      keymaps = {
        goto_definition = "gnd",
        list_definitions = "gnD",
        list_definitions_toc = "gO",
        goto_next_usage = "<A-*>",
        goto_previous_usage = "<A-#>",
      },
    },
  },
  --> treesitter playground
	playground = {
		enable = true,
		disable = {},
		updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
		persist_queries = false, -- Whether the query persists across vim sessions
		keybindings = {
			toggle_query_editor = "o",
			toggle_hl_groups = "i",
			toggle_injected_languages = "t",
			toggle_anonymous_nodes = "a",
			toggle_language_display = "I",
			focus_language = "f",
			unfocus_language = "F",
			update = "R",
			goto_node = "<cr>",
			show_help = "?",
		},
  },
  --> rainbow tags
	rainbow = {
		enable = false,
		extended_mode = true,
		max_file_lines = nil,
	},
  autotag = {
    enable = true,
  }
})