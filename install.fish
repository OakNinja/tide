echo "Installing lean theme..."

# -------------------Download Files-------------------
set fishFunctionsFolder $__fish_config_dir/functions
set githubFunctionsFolder "https://raw.githubusercontent.com/IlanCosman/lean/master/functions/"

wget -q -P $fishFunctionsFolder $githubFunctionsFolder/fish_prompt.fish
wget -q -P $fishFunctionsFolder $githubFunctionsFolder/lean_pwd.fish
wget -q -P $fishFunctionsFolder $githubFunctionsFolder/lean_git_prompt.fish

# ----------------Set Theme Variables----------------
# ---------------Pwd---------------
set -U fish_prompt_pwd_dir_length 0
set -U lean_shorten_pwd_margin 5
set -U lean_color_prompt_character 5FD700
set -U lean_color_end_dirs 00AFFF
set -U lean_color_mid_dirs 0087AF
# ------------Git prompt------------
set -U __fish_git_prompt_show_informative_status true
set -U __fish_git_prompt_showstashstate true
# -------Symbols-------
set -U __fish_git_prompt_char_stateseparator ""
set -U __fish_git_prompt_char_cleanstate ""
set -U __fish_git_prompt_char_upstream_ahead " ⇡"
set -U __fish_git_prompt_char_upstream_behind " ⇣"
set -U __fish_git_prompt_char_stagedstate " +"
set -U __fish_git_prompt_char_dirtystate ' !'
set -U __fish_git_prompt_char_untrackedfiles ' ?'
set -U __fish_git_prompt_char_stashstate " *"
# --------Colors--------
set -U __fish_git_prompt_color_branch 5FD700
set -U __fish_git_prompt_color_upstream 5FD700
set -U __fish_git_prompt_color_stagedstate D7AF00
set -U __fish_git_prompt_color_dirtystate D7AF00
set -U __fish_git_prompt_color_untrackedfiles 00AFFF
set -U __fish_git_prompt_color_stashstate 5FD700

echo "Lean theme installed! Restart fish to see your new prompt."