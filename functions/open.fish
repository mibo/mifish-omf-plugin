#
# Collection of functions which use the `open` command from MacOS
######
function oa -d "open application"
  # Package entry-point
  # echo "Open default app for $argv..."
  open $argv
end

function o -d "open default application"
  echo "Open default with $argv..."
  # Package entry-point
  open $argv
end

function oidea -d 'Open given file with IntelliJ IDE'
    open -a /Applications/IntelliJ\ IDEA.app $argv
end