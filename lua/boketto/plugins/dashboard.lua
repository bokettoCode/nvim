return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		local logo = [[
            ██████╗  ██████╗ ██╗  ██╗███████╗████████╗████████╗ ██████╗  ██████╗ ██████╗ ██████╗ ███████╗
            ██╔══██╗██╔═══██╗██║ ██╔╝██╔════╝╚══██╔══╝╚══██╔══╝██╔═══██╗██╔════╝██╔═══██╗██╔══██╗██╔════╝
            ██████╔╝██║   ██║█████╔╝ █████╗     ██║      ██║   ██║   ██║██║     ██║   ██║██║  ██║█████╗  
            ██╔══██╗██║   ██║██╔═██╗ ██╔══╝     ██║      ██║   ██║   ██║██║     ██║   ██║██║  ██║██╔══╝  
            ██████╔╝╚██████╔╝██║  ██╗███████╗   ██║      ██║   ╚██████╔╝╚██████╗╚██████╔╝██████╔╝███████╗
            ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝   ╚═╝      ╚═╝    ╚═════╝  ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝
        ]]

		logo = string.rep("\n", 8) .. logo .. "\n\n"

		require("dashboard").setup({
			theme = "doom",
			hide = { statusline = false },
			config = {
				header = vim.split(logo, "\n"),
				center = {
					{ action = "Telescope find_files", desc = " Find File", icon = " ", key = "f" },
					{
						action = "Telescope oldfiles",
						desc = " Recent Files",
						icon = " ",
						key = "r",
					},
					{ action = "Telescope live_grep", desc = " Find Text", icon = " ", key = "g" },
					{ action = "Lazy", desc = " Lazy", icon = "󰒲 ", key = "l" },
					{
						action = function()
							vim.api.nvim_input("<cmd>lua require('persistence').load({ last = true })<cr>")
						end,
						desc = " Last Session",
						icon = "󰙰 ",
						key = "s",
					},
					{
						action = function()
							vim.api.nvim_input("<cmd>qa<cr>")
						end,
						desc = " Quit",
						icon = " ",
						key = "q",
					},
				},
				footer = function()
					local stats = require("lazy").stats()
					local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
					return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
				end,
			},
		})
	end,
}
