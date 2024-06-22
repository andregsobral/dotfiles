return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha", -- latte, frappe, macchiato, mocha
				transparent_background = true, -- disables setting the background color.
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	-- {
	-- 	"neanias/everforest-nvim",
	-- 	name = "everforest",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("everforest").setup({
	-- 			transparent_background_level = 2, -- disables setting the background color.
	-- 		})
	-- 		vim.cmd.colorscheme("everforest")
	-- 	end,
	-- },
	-- {
	-- 	"rebelot/kanagawa.nvim",
	-- 	name = "kanagawa",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("kanagawa").setup({
	-- 			transparent = true,
	-- 			-- theme = "dragon",
	-- 		})
	-- 		vim.cmd.colorscheme("kanagawa")
	-- 	end,
	-- },
}
