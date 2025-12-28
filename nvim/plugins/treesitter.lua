return {
	"nvim-treesitter/nvim-treesitter",
	opts = {
		ensure_installed = {
			"elixir",
			"erlang",
			"heex", -- Phoenix templates
			"eex",
		},
	},
}
