return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
		end,
	},
	{ "nvim-telescope/telescope-ui-select.nvim" },
	config = function()
		require("telescope").setup({
			defaults = {
				-- Show absolute paths in the picker
				path_display = { "absolute" },

				-- Customize actions to open files using absolute paths
				mappings = {
					i = {
						["<CR>"] = function(prompt_bufnr)
							local action_state = require("telescope.actions.state")
							local actions = require("telescope.actions")
							local entry = action_state.get_selected_entry()
							local absolute_path = vim.fn.fnamemodify(entry.path, ":p")
							actions.close(prompt_bufnr)
							vim.cmd("edit " .. absolute_path)
						end,
					},
					n = {
						["<CR>"] = function(prompt_bufnr)
							local action_state = require("telescope.actions.state")
							local actions = require("telescope.actions")
							local entry = action_state.get_selected_entry()
							local absolute_path = vim.fn.fnamemodify(entry.path, ":p")
							actions.close(prompt_bufnr)
							vim.cmd("edit " .. absolute_path)
						end,
					},
				},
			},
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({
						-- even more opts
					}),
				},
			},
		})
		require("telescope").load_extension("ui-select")
	end,
}
