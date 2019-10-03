# This is a small wrapper around the Ammonite REPL for Scala
# which is necessary to install it via Homebrew and use in Fish shell
# See here why: https://github.com/lihaoyi/Ammonite/issues/813
# Ammonite project: http://ammonite.io
# Some stuff: https://www.reddit.com/r/scala/comments/6irnix/about_ammonite_tracking_and_why_i_wont_use_it/
function amm --description 'Scala REPL'
    sh -c 'amm "$@"' amm $argv
end