# https://mvolkmann.github.io/fish-article/
# https://github.com/jorgebucaran/fish-shell-cookbook/blob/master/README.md  
function ju --description "jabba use selector"
    echo "Run with $argv..."
    
    set jbres (jabba ls)

    set found (count $jbres)
    if test $found -eq 0 
        echo "Nothing found"
    else 
        set -l max 36
        if test $found -gt $max
            echo "To many found ($found) show only top $max..."
            set found $max
        end
        set -l selector 1 2 3 4 5 6 7 8 9 0 a b c d e f g h i j k l m n o p q r s t u v w x y z
        set -l selmax $selector[$found..1]
        # echo "MAX $found"
        set -l rev_z_res jbres[-1..1]
        echo "['sel']: => ['JVM runtime']"
        for se in (seq $found 1)
            echo "["$selector[$se]"]: "(echo $jbres[$se]| sed -E 's/[[:space:]]+/ => /g')
        end

        echo "Keep current ('return') or select new runtime with ['selector']..."
        read -n 1 --prompt "echo '> '" rval
        if test $rval = ""
            set current (jabba current)
            echo "Keep current $current" 
        else
            __rvalToNum $rval
            #echo "TEST: $rvalNum"
            set -l selVal $jbres[$rvalNum]
            #echo "Selected ($rval) $selVal"
            set -l selValSplit (echo $selVal| string split " ")
            echo "Use $selValSplit[-1] as JVM"
            jabba use $selValSplit[-1]
        end
        java -version
    end
end

function __rvalToNum
    #echo $argv
    switch "$argv"
        case 0
            set -g rvalNum 10
        case a
            set -g rvalNum 11
        case b
            set -g rvalNum 12
        case c
            set -g rvalNum 13
        case d
            set -g rvalNum 14
        case e
            set -g rvalNum 15
        case f
            set -g rvalNum 16
        case g
            set -g rvalNum 17
        case h
            set -g rvalNum 18
        case i
            set -g rvalNum 19
        case j
            set -g rvalNum 20
        case k
            set -g rvalNum 21
        case l
            set -g rvalNum 22
        case m
            set -g rvalNum 23
        case n
            set -g rvalNum 24
        case o
            set -g rvalNum 25
        case p
            set -g rvalNum 26
        case q
            set -g rvalNum 27
        case r
            set -g rvalNum 28
        case s
            set -g rvalNum 29
        case t
            set -g rvalNum 30
        case u
            set -g rvalNum 31
        case v
            set -g rvalNum 32
        case w
            set -g rvalNum 33
        case x
            set -g rvalNum 34
        case y
            set -g rvalNum 35
        case z
            set -g rvalNum 36
        case \*
            set -g rvalNum $argv
    end
end
