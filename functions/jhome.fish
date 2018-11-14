function jhome
    echo "Run with $argv"
    # set JAVA_HOME (/usr/libexec/java_home -v $argv)
    set -l l_jhome (/usr/libexec/java_home -v $argv)
    echo "$l_jhome"
    export JAVA_HOME=$l_jhome
    set JAVA_HOME $l_jhome
    echo "JAVA_HOME:" $JAVA_HOME
    echo "java -version:"
    java -version
end