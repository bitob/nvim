return {
	"nvim-neo-tree/neo-tree.nvim",
	keys = { -- only load the plugin on these keymaps
		{ "<leader>e", "<cmd>Neotree filesystem reveal left<cr>", "Show File Tree" },
		{ "<leader>bf", "<cmd>Neotree buffers reveal float<cr>", "Show Buffer Tree" },
	},
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
}
