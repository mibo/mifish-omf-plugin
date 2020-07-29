# mifish-omf-plugin initialization hook
#
# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies

set -x LANG en_US.UTF-8

# Abbreviations - https://fishshell.com/docs/2.3/commands.html#abbr
## Git
abbr -a git_mb_prune_remote "git remote prune origin"
abbr -a git_mb_rm_dry "git branch --merged=master | grep -v master | cut -f 3 -d ' '"
abbr -a git_mb_rm "git branch -d (git branch --merged=master | grep -v master | cut -f 3 -d ' ')"
abbr --add -U git_mb_rm_gone_branch_dry "git branch -v | grep gone | cut -f 3 -d ' '"
abbr --add -U git_mb_rm_gone_branch "git branch -D (git branch -v | grep gone | cut -f 3 -d ' ')"
abbr --add cf_canary_config "cp ~/.cf/config.canary.json ~/.cf/config.json"
abbr --add cf_live_config "cp ~/.cf/config.live.json ~/.cf/config.json"
