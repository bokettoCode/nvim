return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	event = {'BufReadPre', 'BufNewFile'},
	opts = {},
	config = function()
		local hooks = require("ibl.hooks")
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "iblBlue", { fg = "#209ebf" })
		end)
		require("ibl").setup({
			indent = { char = "│" }, -- ╎
			scope = { highlight = "iblBlue" },
			exclude = {
				filetypes = {
					"alpha",
					"dashboard",
					"fzf",
					"help",
					"lazy",
					"lazyterm",
					"mason",
					"nvim-tree",
					"notify",
					"toggleterm",
					"Trouble",
					"trouble",
				},
			},
		})
	end,
}
