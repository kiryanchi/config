require('formatter').setup({
	filetype = {
		javascript = {
			function()
				return {
					exe = "prettier",
					args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--single-quote', '--write'},
					stdin = true
				}
			end
			},
		javascriptreact = {
			function()
				return {
					exe = "pretteir",
					args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--single-quote', '--write'},
					stdin = true
				}
			end
			},
		python = {
			function()
				return {
					exe = "black",
					args = { '-' },
					stdin = true,
				}
			end
			}
	}
})

vim.api.nvim_exec([[
augroup FormatAutogroup
	autocmd!
	autocmd BufWritePost *.python,*.js FormatWrite
augroup END
]], true)
