require("bufferline").setup({
    options = {
        mode = "buffers",
        themable = true, -- whether or not bufferline highlights can be overriden externally
        numbers = "none",
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        close_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        right_mouse_command = "bdelete! %d",
        middle_mouse_command = nil,
        -- U+2590 ▐ Right half block, this character is right aligned so the
        -- background highlight doesn't appear in the middle
        -- alternatives:  right aligned => ▕ ▐ ,  left aligned => ▍
        indicator = {
            icon = "▎",
        },
        left_trunc_marker = "",
        right_trunc_marker = "",
        separator_style = "thin",
        name_formatter = nil,
        tab_size = 18,
        max_name_length = 18,
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_buffer_default_icon = true,
        show_close_icon = true,
        show_tab_indicators = true,
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        persist_buffer_sort = true,
        max_prefix_length = 15,
        sort_by = "id",
        diagnostics = false,
        diagnostics_indicator = nil,
        diagnostics_update_in_insert = true,
        offsets = { { filetype = "NvimTree", text = "", text_align = "left" } },
        groups = {
            items = {},
            options = {
                toggle_hidden_on_enter = true,
            },
        },
        debug = {
            logging = false,
        },
    },
})
