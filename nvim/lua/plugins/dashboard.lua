return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        require('dashboard').setup {
            theme = 'doom',
            config = {
                header = {
                    "                                                                       ",
                    "                                                                     ",
                    "       ████ ██████           █████      ██                     ",
                    "      ███████████             █████                             ",
                    "      █████████ ███████████████████ ███   ███████████   ",
                    "     █████████  ███    █████████████ █████ ██████████████   ",
                    "    █████████ ██████████ █████████ █████ █████ ████ █████   ",
                    "  ███████████ ███    ███ █████████ █████ █████ ████ █████  ",
                    " ██████  █████████████████████ ████ █████ █████ ████ ██████ ",
                    "                                                                       ",
                },
                center = {
                    { icon = '  ',
                    desc = 'Find  File                              ',
                    icon_hl = 'Title',
                    action = 'Telescope find_files' },
                    { icon = '󰉋 ',
                    desc = ' Open Directory',
                    action = 'Oil' },
                },
                footer = {}
            }
        }
    end,
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'nvim-telescope/telescope.nvim',
    }
}
