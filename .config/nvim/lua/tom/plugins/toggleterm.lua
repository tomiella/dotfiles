return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = true,
	cmd = { "ToggleTerm", "TermExec" },
	keys = {
		{ "<leader>tt", "<cmd>ToggleTerm<cr>" },
	},
	opts = {
		highlights = {
			Normal = { link = "Normal" },
			NormalNC = { link = "NormalNC" },
			NormalFloat = { link = "NormalFloat" },
			FloatBorder = { link = "FloatBorder" },
			StatusLine = { link = "StatusLine" },
			StatusLineNC = { link = "StatusLineNC" },
			WinBar = { link = "WinBar" },
			WinBarNC = { link = "WinBarNC" },
		},
		size = 10,
		shading_factor = 2,
		direction = "float",
		float_opts = { border = "rounded" },
	},
}
