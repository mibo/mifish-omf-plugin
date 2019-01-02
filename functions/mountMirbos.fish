function mountMirbos
    set -l l_dir "/Volumes/mirbos"
    set -l l_mount "/Users/d046871/SAP/miboPersonal.sparseimage" 
    echo "Mount $l_mount to $l_dir"
    set -l l_list (ls -A $l_dir)
    if test -e $l_dir && test -n "$l_list"
      echo "File '$l_dir' exists and is not empty"
    else
      echo "Take action $l_dir is Empty or does not exists"
      if test -e $l_dir
        rmdir $l_dir
      end
      open $l_mount
    end
end

# ORIGINAL ZSH command
# mountMirbos () {
# 	DIR="/Volumes/mirbos" 
# 	MOUNT="/Users/d046871/SAP/miboPersonal.sparseimage" 
# 	if [ "$(ls -A $DIR)" ]
# 	then
# 		echo "$DIR is not Empty. Do not mount."
# 	else
# 		echo "Take action $DIR is Empty"
# 		rmdir $DIR
# 		open $MOUNT
# 	fi
# }