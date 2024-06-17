return {
	"numToStr/Navigator.nvim",
	cmd = { "NavigatorLeft", "NavigatorRight", "NavigatorDown", "NavigatorUp" },
	config = function()
		require("Navigator").setup()
	end,
}
