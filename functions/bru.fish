function bru -d "Brew upgrade"
    brew update
    set -l out (brew outdated)

    if [ $out ]
        echo "Outdated: $out"
        brew upgrade
    end
end