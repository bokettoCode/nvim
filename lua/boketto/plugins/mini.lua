return {
	{
		"echasnovski/mini.comment",
		version = "*",
		event = { "bufreadpre", "bufnewfile" },
		config = function()
			require("mini.comment").setup({
				mappings = {
					comment = "",
					comment_line = "<leader>/",
					comment_visual = "<leader>/",
					textobject = "<leader>/",
				},
			})
		end,
	},
}
