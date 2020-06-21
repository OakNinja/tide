function _tide_left_prompt
    set -l splitText (_fetch_left_prompt_items | string split '@NEWLINE@')

    for text in $splitText
        string replace "$tide_left_prompt_item_separator" "$tide_left_prompt_prefix" "$text$tide_left_prompt_suffix"
    end
end

function _fetch_left_prompt_items
    for item in $tide_left_prompt_items
        set -l output (_tide_item_$item)
        set -l colorName 'tide_'$item'_bg_color'

        set_color -b $$colorName

        if test "$item" = 'newline'
            printf '%s' {$output}
        else
            printf '%s' $tide_left_prompt_item_separator{$output}
        end
    end
end