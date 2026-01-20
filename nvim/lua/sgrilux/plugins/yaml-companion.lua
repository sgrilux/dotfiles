local status, yaml_companion = pcall(require, "yaml-companion")
if not status then
	return
end

yaml_companion.setup({
	-- Built-in schemas
	builtin_matchers = {
		-- Detects cloud-init yaml files
		cloud_init = { enabled = true },
	},
	-- Additional schemas
	schemas = {
		{
			name = "CloudFormation",
			uri = "https://raw.githubusercontent.com/awslabs/goformation/master/schema/cloudformation.schema.json",
		},
		{
			name = "Kubernetes",
			uri = "https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.22.4-standalone-strict/all.json",
		},
	},
	lspconfig = {
		settings = {
			yaml = {
				validate = true,
				schemaStore = {
					enable = true,
					url = "https://www.schemastore.org/api/json/catalog.json",
				},
			},
		},
	},
})
