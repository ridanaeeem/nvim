return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = { "lua", "javascript", "python", "typescript", "go" },
            indent = { enable = true },
            highlight = { enable = true },
        })
    end
}
