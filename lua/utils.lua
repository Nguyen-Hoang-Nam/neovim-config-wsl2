local M = {}
local cmd = vim.cmd

function M.create_augroup(autocmds, name)
	cmd('augroup ' .. name)
	cmd('autocmd!')
	for _, autocmd in ipairs(autocmds) do
		cmd('autocmd ' .. table.concat(autocmd, ' '))
	end
	cmd('augroup END')
end

function M.syscall(cmd)
	local output = vim.fn.system(cmd)
	text = vim.split(output, '\n')[1]
	return text
end

return M
