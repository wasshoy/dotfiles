local buffer_options = {
  tabstop = 2,
  shiftwidth = 2
}

for option, value in pairs(buffer_options) do
  nvim_buf_set_option(0, option, value)
end
