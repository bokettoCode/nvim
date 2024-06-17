return {
	"rcarriga/nvim-notify",
	config = function()
		require("notify").setup({
			background_colour = "#000000",
			render = "compact",
			timeout = 1500,
			stages = "static",
		})
	end,
}
