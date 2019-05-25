function oidea -d 'Open given file with IntelliJ IDE'
    # set l (count $argv)
    # if test "$l" -eq 0 
    if test (count $argv) -eq 0
      set argv .
      echo "Use '.' as parameter {$argv}"
    end
    set cmd "open -a /Applications/IntelliJ\ IDEA.app $argv"
    echo "$cmd"
    eval $cmd
end