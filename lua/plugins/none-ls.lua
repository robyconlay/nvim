return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		local formatting = null_ls.builtins.formatting
		local diagnostics = null_ls.builtins.diagnostics
		local code_actions = null_ls.builtins.code_actions
		local completion = null_ls.builtins.completion

		null_ls.setup({
			sources = {
				formatting.stylua,
				formatting.prettier.with({
					cli_options = {
						arrow_parens = "always",
						bracket_spacing = true,
						bracket_same_line = false,
						embedded_language_formatting = "auto",
						end_of_line = "lf",
						html_whitespace_sensitivity = "css",
						-- jsx_bracket_same_line = false,
						jsx_single_quote = false,
						print_width = 120,
						prose_wrap = "preserve",
						quote_props = "as-needed",
						semi = true,
						single_attribute_per_line = false,
						single_quote = false,
						tab_width = 4,
						trailing_comma = "es5",
						use_tabs = true,
						vue_indent_script_and_style = false,
					},
				}),
        require("none-ls.diagnostics.eslint_d"), -- requires none-ls-extras.nvim
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
