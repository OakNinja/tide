function _tide_left_prompt
    for lineOfText in (_fetch_left_prompt_items | string split '@NEWLINE@')
        string replace $tide_left_prompt_item_separator $tide_left_prompt_prefix $lineOfText(set_color normal)$tide_left_prompt_suffix
    end
end

function _fetch_left_prompt_items
    for item in $tide_left_prompt_items
        if test "$item" = 'newline'
            printf '%s' '@NEWLINE@'
        else
            set -l output (_tide_item_$item)
            set -l colorName 'tide_'$item'_bg_color'

            set_color -b $$colorName
            printf '%s' $tide_left_prompt_item_separator{$output}
        end
    end
end