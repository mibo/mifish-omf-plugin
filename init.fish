# mifish-omf-plugin initialization hook
#
# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies

# Abbreviations - https://fishshell.com/docs/2.3/commands.html#abbr
## Git
abbr -a git_mb_rm "git branch -d (git branch --merged=master | grep -v master | cut -f 3 -d ' ')"
abbr -a git_mb "git branch --merged=master | grep -v master | cut -f 3 -d ' '"