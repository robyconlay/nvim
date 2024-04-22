return {
	"nobbmaestro/nvim-andromeda",
	dependencies = { "tjdevries/colorbuddy.nvim", branch = "dev" },
	config = function()
		require("andromeda").setup()
	end,
}
