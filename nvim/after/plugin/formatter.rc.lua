require('formatter').setup({
	filetype = {
		javascript = {
			function()
				return {
					exe = "prettier",
					args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--single-quote', '--print-width 100', '--trailing-comma all'},
					stdin = true
				}
			end
			},
		javascriptreact = {
			function()
				return {
					exe = "prettier",
					args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--single-quote', '--print-width 100', '--trailing-comma all'},
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
			},
		typescript = {
			function()
				return {
					exe = "prettier",
					args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--single-quote', '--print-width 100', '--trailing-comma all'},
					stdin = true
				}
			end
			},
		typescriptreact = {
			function()
				return {
					exe = "prettier",
					args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--single-quote', '--print-width 100', '--trailing-comma all'},
					stdin = true
				}
			end
			},
	}
})

vim.api.nvim_exec([[
augroup FormatAutogroup
	autocmd!
	autocmd BufWritePost *.py,*.js,*.ts,*.tsx,*.jsx FormatWrite
augroup END
]], true)
