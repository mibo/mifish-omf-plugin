function bru -d "Brew upgrade"
    brew update
    set -l out (brew outdated)
    if [ -z $out ]
        #echo ''\nAll up to date.''
    else
        echo ''\nOutdated:''
    end
    brew upgrade
end