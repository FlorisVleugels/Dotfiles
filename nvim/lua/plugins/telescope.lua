return { 
    "nvim-telescope/telescope.nvim",
    branch = "master",
    dependencies = "nvim-lua/plenary.nvim",
    keys = {
        { "<C-t>", "<CMD>Telescope<CR>", mode = { "n", "i", "v" } },
        { "<leader>pf", "<CMD>Telescope git_files<CR>", mode = { "n", "i", "v" } },
        { "<C-p>", "<CMD>Telescope find_files<CR>", mode = { "n", "i", "v" } },
        { "<leader>pg", "<CMD>Telescope grep_string<CR>", mode = { "n", "i", "v" } },
        { "<leader>ps", "<CMD>Telescope live_grep<CR>", mode = { "n", "i", "v" } },
        { "<C-k>", "<CMD>Telescope keymaps<CR>", mode = { "n", "i", "v" } },
    },
    config = true 
}
