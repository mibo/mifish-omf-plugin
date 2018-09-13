function bru -d 'Brew outdated => upgrade & cleanup'
    brew update
    set -l out (brew outdated)

    if [ -n "$out" ]
        echo "Outdated: $out"
        brew upgrade
        brew cleanup
    end
end