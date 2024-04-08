-- vim.g.seoul256_italic_comments = true
-- vim.g.seoul256_italic_keywords = true
-- vim.g.seoul256_italic_functions = true
-- vim.g.seoul256_italic_variables = false
-- vim.g.seoul256_contrast = true
-- vim.g.seoul256_borders = false 
-- vim.g.seoul256_disable_background = true 
-- (Background is #4C4C4C)
-- vim.g.seoul256_hl_current_line = true

require('seoul256')

require('lualine').setup {
    options = {
        theme = 'seoul256'
    }
}
