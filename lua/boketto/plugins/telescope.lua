return {
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
    cmd = 'Telescope',
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = vim.fn.executable("make") == 1 },
		},
    config = function()
      require('telescope').setup({
      defaults = {
        mappings = {
						i = {
							["<C-u>"] = false,
							["<C-d>"] = false,
							["<S-Tab>"] = require("telescope.actions").move_selection_next,
							["<Tab>"] = require("telescope.actions").move_selection_previous,
						},
        }
      }
      })
      pcall(require("telescope").load_extension, "fzf")
    end
}
