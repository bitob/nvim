return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
		lazy = true, -- we let telescope load this for us
	},
	{
		"nvim-telescope/telescope.nvim",
		keys = { -- only load the plugin when these keys are pressed:
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", "Find Files" },
			{ "<leader>fg", "<Ccmd>Telescope live_grep<cr>", "Grep" },
		},

		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
