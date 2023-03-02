-- example for addings schemas to yamlls
return {
    -- override table for require("lspconfig").yamlls.setup({...})
    settings = {
        ["rust-analyzer"] = {
            completion = {
                postfix = {
                    -- Disable snippets showing up before proper methods autocompletions
                    enable = false,
                },
            },
        },
    },
}
