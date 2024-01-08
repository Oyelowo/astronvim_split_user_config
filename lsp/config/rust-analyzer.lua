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
            cargo = {
                extraEnv = { CARGO_PROFILE_RUST_ANALYZER_INHERITS = 'dev', },
                extraArgs = { "--profile", "rust-analyzer", },
            },
            -- Add clippy lints for Rust.
            checkOnSave = {
                allFeatures = true,
                command = "clippy",
                extraArgs = { "--no-deps" },
            },
        },
    },
}
