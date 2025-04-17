vim.opt_local.tabstop = 8
vim.opt_local.shiftwidth = 8
vim.opt_local.softtabstop = 8
vim.opt_local.expandtab = true
vim.opt_local.autoindent = true
vim.opt_local.smartindent = true
vim.opt_local.comments = "b:#"

vim.api.nvim_create_autocmd("FileType", {
  pattern = "asm",
  callback = function()
    vim.opt_local.commentstring = "// %s" -- Use C-style comments (`//`)
    vim.opt_local.comments = "s1:/*,mb:*,ex:*/,://,s1:;" -- Support `/* */`, `//`, and `;`
  end,
})
