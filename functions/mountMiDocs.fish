function mountMiDocs
    set -l l_dir "/Volumes/miDocs"
    set -l l_mount "/Users/michael/miDocs.sparsebundle"
    __mi_mount_image $l_dir $l_mount
end

function __mi_mount_image
    set -l l_dir $argv[1]
    set -l l_mount $argv[2]
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