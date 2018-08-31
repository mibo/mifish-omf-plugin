# https://mvolkmann.github.io/fish-article/
function zg --description "Z helper"
    echo "Run with $argv..."
    
    set -l zres (z -l $argv)
    # echo "Z result: {$zres}"
    # for r in $zres 
    #     echo "Zres: $r"
    # end

    set -l max (count $zres)

    set -l selector 1 2 3 4 5 6 7 8 9 0 a b c d e f g h i j k l m n o p q r s t u v w x y z
    set -l selmax $selector[$max..1]
    # echo $selector[1..3]
    # echo "MAX $max"
    # for se in (seq "$max")
    set -l rev_z_res zres[-1..1]
    for se in (seq $max 1)
        echo "Found "selector[$se]":"$zres[$se]
    end

    read --prompt "echo Select: " rval
    set -l selVal $zres[$rval]
    echo "Selected ($rval) $selVal"
    set -l selValSplit (echo $selVal| string split " ")
    echo "Go to $selValSplit[-1]"
    cd $selValSplit[-1]
end