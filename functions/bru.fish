function bru -d 'Brew outdated => upgrade & cleanup'
    brew update
    set -l out (brew outdated)

    if [ -n "$out" ]
        echo "Outdated: $out"
        echo "Start upgrade..."
        brew upgrade
        echo "Start cleanup..."
        brew cleanup
    end
end