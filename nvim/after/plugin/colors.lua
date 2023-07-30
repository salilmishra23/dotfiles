vim.cmd [[colorscheme tokyonight]]

require('tokyonight').setup({
    style = 'night'
})

require('lualine').setup {
    options = {
        theme = 'tokyonight'
    }
}
