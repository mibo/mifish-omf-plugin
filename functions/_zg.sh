#######
# Z based function
#
zg() {
  Z_PARAM=$1

  if [ -z $Z_PARAM ]; then
    echo "No parameter for 'z' given"
  else
    RES=( $(z -l "$Z_PARAM") )

    typeset -A mapping
    selector=(1 2 3 4 5 6 7 8 9 0 a b c d e f g h i j k l m n o p q r s t u v w x y z)
    max="${#RES[@]}"
    let "max/=2"
    echo "Found $max interesting matches..."
    if [ "$max" -gt "${#selector[@]}" ]; then
      max="${#selector[@]}"
      echo "...the top $max are listed"
    fi

    for ((i=1; i <= $max; i++)); do
      pos=$(($i*2))
      sel=$(($max-$i+1))
      mapping[${selector[$sel]}]="${RES[$pos]}"

      echo "[${selector[$sel]}] ${RES[$pos-1]} and ${RES[$pos]}"
    done

    if [[ -z "${RES[@]}" ]]; then
      echo "No Z history for $Z_PARAM"
    else
      echo "Go to best match ('return') or select via ['selector']..."
      read -rs -k 1 check
      if [[ "${check}" =~ (y|[[:cntrl:]]) ]]; then
        cd ${mapping[1]}
      elif [[ "${check}" =~ ([[:alpha:]]|[[:digit:]]) ]]; then
        #echo "${check}"
        #echo "Position: $pos"
        echo "Selected ${check} and change to directory..."
        echo "...${mapping[$check]}"
        cd ${mapping[$check]}
      else
        echo "Nothing selected, just stay."
      fi
    fi
  fi
}