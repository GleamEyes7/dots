vim.g.autoformat = false
vim.opt.colorcolumn = "80"
vim.opt.wrap = true

return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "black" },
      },
    },
  },
}
