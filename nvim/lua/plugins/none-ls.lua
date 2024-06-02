return {
	--- lsp that covers formatting and linting
	"nvimtools/none-ls.nvim",
	dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- Lua
				null_ls.builtins.formatting.stylua,
				-- Python
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.black,
				null_ls.builtins.diagnostics.mypy,
				-- Typescript
				null_ls.builtins.formatting.prettier,
				require("none-ls.diagnostics.eslint_d"),
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
