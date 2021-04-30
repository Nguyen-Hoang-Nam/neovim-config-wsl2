local galaxyline = require('galaxyline')
local gls = galaxyline.section
galaxyline.short_line_list = {"LuaTree", "vista", "dbui"}

local colors = {
	bg = "#282c34",
	line_bg = "#282c34",
	fg = "#D8DEE9",
	fg_green = "#36C692",
	yellow = "#E3C78A",
	cyan = "#79DAC8",
	darkblue = "#61afef",
	green = "#8CC85F",
	orange = "#FF8800",
	purple = "#D183E8",
	magenta = "#c678dd",
	blue = "#80A0FF",
	red = "#FF5454",
	lightbg = "#3C4048",
	nord = "#81A1C1",
	greenYel = "#EBCB8B"
}

local checkwidth = function()
	local squeeze_width = vim.fn.winwidth(0) / 2
	if squeeze_width > 40 then
		return true
	end
	return false
end

gls.left[1] = {
	leftRounded = {
		provider = function()
			return ""
		end,
		highlight = {colors.nord, 'NONE'}
	}
}

gls.left[2] = {
	ViMode = {
		provider = function()
			return "   "
		end,
		highlight = {colors.bg, colors.nord},
		separator = " ",
		separator_highlight = {colors.lightbg, colors.lightbg}
	}
}

gls.left[3] = {
	FileIcon = {
		provider = "FileIcon",
		condition = buffer_not_empty,
		highlight = {require("galaxyline.provider_fileinfo").get_file_icon_color, colors.lightbg}
	}
}

gls.left[4] = {
	FileName = {
		provider = {"FileName", "FileSize"},
		condition = buffer_not_empty,
		highlight = {colors.fg, colors.lightbg}
	}
}

gls.left[5] = {
	teech = {
		provider = function()
			return ""
		end,
		separator = " ",
		highlight = {colors.lightbg, 'NONE'}
	}
}

gls.left[6] = {
	DiffAdd = {
		provider = "DiffAdd",
		condition = checkwidth,
		icon = "   ",
		highlight = {colors.greenYel, 'NONE'}
	}
}

gls.left[7] = {
	DiffModified = {
		provider = "DiffModified",
		condition = checkwidth,
		icon = " ",
		highlight = {colors.orange, 'NONE'}
	}
}

gls.left[8] = {
	DiffRemove = {
		provider = "DiffRemove",
		condition = checkwidth,
		icon = " ",
		highlight = {colors.red, 'NONE'}
	}
}

gls.left[9] = {
	LeftEnd = {
		provider = function()
			return " "
		end,
		separator = " ",
		separator_highlight = {colors.line_bg, 'NONE'},
		highlight = {colors.line_bg, 'NONE'}
	}
}

gls.left[10] = {
	DiagnosticError = {
		provider = "DiagnosticError",
		icon = "  ",
		highlight = {colors.red, 'NONE'}
	}
}

gls.left[11] = {
	Space = {
		provider = function()
			return " "
		end,
		highlight = {'NONE', 'NONE'}
	}
}

gls.left[12] = {
	DiagnosticWarn = {
		provider = "DiagnosticWarn",
		icon = "  ",
		highlight = {colors.blue, 'NONE'}
	}
}

local checkGit = function()
	local gitFolder = require("galaxyline.provider_vcs").check_git_workspace
	if (gitFolder and checkwidth()) then
		return true
	end
	return false
end

gls.right[1] = {
	GitIcon = {
		provider = function()
			return "   "
		end,
		condition = checkGit,
		highlight = {colors.green, 'NONE'}
	}
}

gls.right[2] = {
	GitBranch = {
		provider = "GitBranch",
		condition = checkGit,
		highlight = {colors.green, 'NONE'}
	}
}

gls.right[3] = {
	right_LeftRounded = {
		provider = function()
			return ""
		end,
		condition = checkwidth,
		separator = " ",
		separator_highlight = {colors.bg, 'NONE'},
		highlight = {colors.red, 'NONE'}
	}
}

gls.right[4] = {
	SiMode = {
		provider = function()
			local alias = {
				n = "N",
				i = "I",
				c = "C",
				V = "V",
				[""] = "V",
				v = "V",
				R = "R"
			}
			return alias[vim.fn.mode()]
		end,
		condition = checkwidth,
		highlight = {colors.bg, colors.red}
	}
}

gls.right[5] = {
	PerCent = {
		provider = "LinePercent",
		separator = " ",
		condition = checkwidth,
		separator_highlight = {colors.red, colors.red},
		highlight = {colors.bg, colors.fg}
	}
}

gls.right[6] = {
	rightRounded = {
		provider = function()
			return ""
		end,
		condition = checkwidth,
		highlight = {colors.fg, 'NONE'}
	}
}
