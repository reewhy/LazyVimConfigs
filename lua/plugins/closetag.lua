return {
    {
        "alvan/vim-closetag",
        config = function ()
            vim.g.closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.vue"
            vim.g.closetag_xhtml_filenames = "*.xhtml,*.jsx,*.vue"
        end
    }
}
