function _tide_item_git_prompt
    if test -n "$_tide_git_dir"
        fish_git_prompt (set_color -b $tide_git_prompt_bg_color)'%s '
    end
end