local window_options = {
    number = true
}

for option, value in pairs(window_options) do
    vim.api.nvim_win_set_option(0, option, value)
end
