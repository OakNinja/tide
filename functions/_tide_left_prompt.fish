function _tide_left_prompt
    set -l splitText (_fetch_left_prompt_items | string split '@NEWLINE@')

    for text in $splitText
        printf '%s\n' $text
    end
end

function _fetch_left_prompt_items
    for item in _tide_item_{$tide_left_prompt_items}
        printf '%s' ($item)$_tide_color_normal
    end
end