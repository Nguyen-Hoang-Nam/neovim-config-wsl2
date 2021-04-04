local g = vim.g

vim.o.termguicolors = true

g.nvim_tree_side = 'right'
g.nvim_tree_width = 30
g.nvim_tree_ignore = {".git", "node_modules", ".cache"}
g.nvim_tree_indent_markers = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_auto_close = 1
g.nvim_tree_root_folder_modifier = ":~"
g.nvim_tree_show_icons = {
	git = 1,
	folders = 1,
	files = 1
}
g.nvim_tree_icons = {
	default = " ",
	symlink = " ",
	git = {
		unstaged = "✗",
		staged = "✓",
		unmerged = "",
		renamed = "➜",
		untracked = "★"
	},
	folder = {
		default = "",
		open = "",
		symlink = ""
	}
}

local get_lua_cb = function(cb_name)
	return string.format(":lua require'nvim-tree'.on_keypress('%s')<CR>", cb_name)
end

g.nvim_tree_bindings = {
	["<CR>"] = get_lua_cb("edit"),
	["<Tab>"] = get_lua_cb("preview"),
	["R"] = get_lua_cb("refresh"),
	["a"] = get_lua_cb("create"),
	["d"] = get_lua_cb("remove"),
	["r"] = get_lua_cb("rename"),
	["x"] = get_lua_cb("cut"),
	["c"] = get_lua_cb("copy"),
	["p"] = get_lua_cb("paste"),
	["q"] = get_lua_cb("close")
}
