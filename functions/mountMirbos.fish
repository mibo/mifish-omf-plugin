function mountMirbos
    set -l l_dir "/Volumes/mirbos"
    set -l l_mount "/Users/d046871/SAP/miboPersonal.sparseimage" 
    __mi_mount_image $l_dir $l_mount
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