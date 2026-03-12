# Opens the parameter (file/dir) with the Zed editor (Zed.app)
function ozed --description 'Open given file with Zed IDE'
    if test (count $argv) -eq 0
      set argv .
      echo "Use '.' as parameter {$argv}"
    end
    set cmd "open -a /Applications/Zed.app $argv"
    echo "$cmd"
    eval $cmd
end
