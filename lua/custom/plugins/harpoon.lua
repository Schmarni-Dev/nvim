return {
	'ThePrimeagen/harpoon',
	config = function()
		vim.keymap.set("n", "<leader>ha", require("harpoon.mark").add_file)
		vim.keymap.set("n", "<leader>ho", require("harpoon.ui").toggle_quick_menu)
	end,
}
