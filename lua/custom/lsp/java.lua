local opts = {
	cmd = {},
	filetypes = { "class", "java" },
	settings = {
		java = {
			signatureHelp = { enabled = true },
			completion = {
				favoriteStaticMembers = {},
				filteredTypes = {
					-- "com.sun.*",
					-- "io.micrometer.shaded.*",
					-- "java.awt.*",
					-- "jdk.*",
					-- "sun.*",
				},
			},
			sources = {
				organizeImports = {
					starThreshold = 9999,
					staticStarThreshold = 9999,
				},
			},
			codeGeneration = {
				toString = {
					template =
					"${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
				},
				useBlocks = true,
			},
			configuration = {
				-- runtimes = {
				-- 	
				-- 	{
				-- 		name = "JavaSE-17",
				-- 		path = "/usr/lib/jvm/java-17-openjdk",
				-- 		default = true,
				-- 	},
				-- 	
				-- },
			},
		},
	},
}

local function setup()
	local jdtls = require("jdtls")
	if jdtls == nil then
		return {}
	end

	-- local jdtls_path = vim.fn.stdpath("data") .. "/mason/packages/jdtls"
	local jdtls_bin = vim.fn.stdpath("data") .. "/mason/bin/jdtls"

	local root_markers = { ".gradle", "gradlew", ".git" }
	local root_dir = jdtls.setup.find_root(root_markers)
	local home = os.getenv("HOME")
	local project_name = vim.fn.fnamemodify(root_dir, ":p:h:t")
	local workspace_dir = home .. "/.cache/jdtls/workspace/" .. project_name

	opts.cmd = {
		jdtls_bin,
		"-data",
		workspace_dir,
	}

	---@diagnostic disable-next-line: unused-local
	local on_attach = function(client, bufnr)
		-- vim.lsp.codelens.refresh()
		-- if JAVA_DAP_ACTIVE then
		-- jdtls.setup_dap({ hotcodereplace = "auto", config_overrides = {} })
		-- jdtls.dap.setup_dap_main_class_configs()
		GLOBAL_ON_ATTACH(client,bufnr)
		-- end
	end

	opts.on_attach = on_attach
	return opts
end

return { setup = setup }
