return {
	"tomasiser/vim-code-dark",
	lazy = false,
	name = "codedark",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme "codedark"
	end
}
