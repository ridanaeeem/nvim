return {
	"lukas-reineke/indent-blankline.nvim",
	opts = function(_, opts)
		return require("index-rainbowline").make_opts(opts)
	end,
	dependencies = {
		"TheGLander/index-rainbow.nvim",
	},
}
