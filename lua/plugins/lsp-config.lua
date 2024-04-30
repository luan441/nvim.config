return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function() end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local servers = {
				lua_ls = {},
				phpactor = {},
				tsserver = {},
				gopls = {},
				yamlls = {},
				taplo = {},
				jsonls = {},
				html = {},
				eslint = {},
				dockerls = {},
				docker_compose_language_service = {},
				bashls = {},
				cssls = {},
				clangd = {},
			}
			local lspconfig = require("lspconfig")
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())
			require("mason-lspconfig").setup({
				ensure_installed = vim.tbl_keys(servers or {}),
				handlers = {
					function(server_name)
						local server = servers[server_name] or {}
						server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
						lspconfig[server_name].setup(server)
					end,
				},
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover descriptions" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Show code actions" })
			vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Show references" })
		end,
	},
}
