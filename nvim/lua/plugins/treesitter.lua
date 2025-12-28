return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    opts = {
        -- LazyVim config for treesitter
        indent = { enable = true }, ---@type lazyvim.TSFeat
        highlight = { enable = true }, ---@type lazyvim.TSFeat
        folds = { enable = true }, ---@type lazyvim.TSFeat
        ensure_installed = {
            "lua",
            "vim",
            "vimdoc",
            "python",
            "rust",
            "javascript",
            "typescript",
            "html",
            "json",
            "markdown",
        },
        auto_install = true,

    }
}
