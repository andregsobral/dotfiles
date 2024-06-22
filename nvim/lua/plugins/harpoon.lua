return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()

		vim.keymap.set("n", "<leader>m", function()
			harpoon:list():add()
		end)

		vim.keymap.set("n", "<C-q>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Open harpoon window" })

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "mm", function()
			harpoon:list():next()
		end)
		vim.keymap.set("n", "mn", function()
			harpoon:list():prev()
		end)
	end,
}
