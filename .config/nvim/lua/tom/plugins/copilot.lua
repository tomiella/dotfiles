return {
	"zbirenbaum/copilot.lua",
	lazy = true,
	event = "InsertEnter",
	enabled = true,
	cmd = "Copilot",
	build = ":Copilot auth",
	opts = {
		panel = {
			enabled = true,
			auto_refresh = true,
		},
		suggestion = {
			enabled = true,
			-- use the built-in keymapping for "accept" (<M-l>)
			auto_trigger = true,
			accept = false, -- disable built-in keymapping
		},
		filetypes = {
			sh = function()
				if string.match(vim.fs.basename(vim.api.nvim_buf_get_name(0)), "^%.env.*") then
					-- disable for .env files
					return false
				end
				return true
			end,
		},
	},
	config = function(_, opts)
		require("copilot").setup(opts)
	end,
	keys = {
		{
			"<Tab>",
			function()
				local s = require("copilot.suggestion")
				if s.is_visible() then
					return s.accept()
				end
				-- fallback to real Tab
				return vim.api.nvim_replace_termcodes("<Tab>", true, false, true)
			end,
			mode = "i",
			expr = true,
			silent = true,
			noremap = true,
		},
	},
}
