# Check Fish documentation about completions:
# http://fishshell.com/docs/current/commands.html#complete
#
# (Basic) Completion for Jabba
#
#########################
set -l commands "install ls uninstall link unlink use current ls ls-remote deactivate alias unalias which"
complete -c "jabba" -x -d "command" -n "not __fish_seen_subcommand_from $commands" -a "$commands"
complete -c "jabba" -x -d "JVM to use" -n "__fish_seen_subcommand_from use" -a "(jabba ls)"
complete -c "jabba" -x -d "to install" -n "__fish_seen_subcommand_from install" -a "(jabba ls-remote)"