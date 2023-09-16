require('tokyonight').setup({
    style = 'night'
})

require('lualine').setup {
    options = {
        theme = 'tokyonight'
    }
}

vim.cmd [[colorscheme tokyonight]]
