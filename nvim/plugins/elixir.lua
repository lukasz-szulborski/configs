return {
	-- Elixir LSP
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				elixirls = {},
				erlangls = {},
			},
		},
	},
	{
		"elixir-tools/elixir-tools.nvim",
		version = "*",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("elixir").setup({
				nextls = { enable = false },
				elixirls = { enable = true },
			})
		end,
	},
}
