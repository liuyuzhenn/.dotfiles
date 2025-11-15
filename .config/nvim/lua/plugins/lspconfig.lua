return {
	"git@github.com:neovim/nvim-lspconfig.git",
	config = function()
		local status, lspconfig = pcall(require, "lspconfig")
		if not status then
			return
		end

		local lsp_flags = {
			-- This is the default in Nvim 0.7+
			debounce_text_changes = 150,
		}

		vim.lsp.enable('pyright')
		vim.lsp.enable('lua_ls')
		vim.lsp.enable('yamlls')
		vim.lsp.enable('marksman')
		vim.lsp.enable('vimls')
		vim.lsp.enable('cmake')
		vim.lsp.enable('clangd')


		local signs = { Error = "", Warn = "", Hint = "", Info = "" }
		vim.diagnostic.config({
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = signs['Error'],
					[vim.diagnostic.severity.WARN] = signs['Warn'],
					[vim.diagnostic.severity.INFO] = signs['Info'],
					[vim.diagnostic.severity.HINT] = signs['Hint'],
				}
			}
		})
		-- for type, icon in pairs(signs) do
		-- 	local hl = "DiagnosticSign" .. type
		-- 	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
		-- end
	end,
}
