return {
    "ccaglak/phptools.nvim",
    keys = {
        { "<leader>pm", "<cmd>PhpMethod<cr>",    desc = "Method" },
        { "<leader>pc", "<cmd>PhpClass<cr>",     desc = "Class" },
        { "<leader>ps", "<cmd>PhpScripts<cr>",   desc = "Scripts" },
        { "<leader>pn", "<cmd>PhpNamespace<cr>", desc = "Namespace" },
        { "<leader>pg", "<cmd>PhpGetSet<cr>",    desc = "GetSet" },
        { "<leader>pf", "<cmd>PhpCreate<cr>",    desc = "Create" },
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("phptools").setup({
            ui = false, -- if you have stevearc/dressing.nvim or something similar keep it false or else true
        })
        vim.keymap.set("v", "<leader>pr", ":PhpRefactor<cr>")
    end,
}
