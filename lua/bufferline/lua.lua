local bufferline = require('bufferline')
vim.o.termguicolors = true

bufferline.setup {
	options = {
		numbers = "buffer_id",
		number_style = "",
		modified_icon = "●",
		close_icon = "",
		max_name_length = 14,
		max_prefix_length = 13,
		tab_size = 16,
		enforce_reqular_tabs = true,
		view = "multiwindow",
		show_buffer_close_icons = false,
		show_close_icon = false,
		separator_style = "thin",
		diagnostics = 'nvim_lsp',
		diagnostics_indicator = function(count, level)
			return "("..count..")"
		end
	},
	highlights = {
		background = {
			guifg = comment_fg,
			guibg = '#24282F'
		},
		fill = {
			guifg = comment_fg,
			guibg = '#282C34'
		},
		buffer_visible = {
			guifg = normal_fg,
			guibg = '#24282F'
		},
		buffer_selected = {
			guifg = normal_fg,
			guibg = '#3A3E44',
			gui = 'bold'
		},
		separator_visible = {
			guifg = '#282C34',
			guibg = '#282C34'
		},
		separator_selected = {
			guifg = '#282C34',
			guibg = '#282C34'
		},
		separator = {
			guifg = '#282C34',
			guibg = '#282C34'
		},
		indicator_selected = {
			guifg = '#282C34',
			guibg = '#282C34'
		},
		modified_selected = {
			guifg = '#85DC85',
			guibg = '#3A3E44'
		},
		error = {
			guifg = '#ff5454',
			guibg = '#282C34'
		},
		error_visible = {
			guifg = '#ff5454',
			guibg = '#282C34'
		},
		error_selected = {
			guifg = '#ff5454',
			guibg = '#3A3E44'
		},
		warning = {
			guifg = '#e4c88b',
			guibg = '#3A3E44',
			gui = 'underline'
		},
		warning_selected = {
			guifg = '#E4C88B',
			guibg = '#3A3E44'
		},
		warning_visible = {
			guifg = '#E4C88B',
			guibg = '#282C34'
		},
		modified = {
			guifg = '#85dc85',
			guibg = '#282C34'
		},
		modified_visible = {
			guifg = '#85dc85',
			guibg = '#282C34'
		}
	}
}
