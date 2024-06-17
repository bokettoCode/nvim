return {
	"williamboman/mason.nvim",
  dependencies = {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
	cmd = "Mason",
	config = function()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
    require('mason-tool-installer').setup({
      ensure_installed = {
        'stylua',
        'black',
      }
    })
	end,
}
