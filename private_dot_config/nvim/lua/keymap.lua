local inoremap_key_pairs = {
	jj = '<Esc>'
}
for k, v in pairs(inoremap_key_pairs) do
	vim.api.nvim_set_keymap('i', k, v, {noremap = true, silent = false})
end
