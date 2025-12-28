return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
      require("catppuccin").setup({
          color_overrides = {
              mocha = {
                  base = "#000000",
                  mantle = "#000000",
                  crust = "#000000",
              },
          }
      })
    -- setup must be called before loading
    vim.cmd.colorscheme "catppuccin"
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end,
}
