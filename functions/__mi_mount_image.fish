
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