return {
	"nvim-lualine/lualine.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("lualine").setup({
			options = {
				icons_enable = true,
				theme = "auto",
				component_separators = "|",
				section_separators = "",
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "buffers" },
				lualine_c = {},
				lualine_x = { "diagnostics", "diff" },
				lualine_y = { "filetype" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
		})
	end,
}
