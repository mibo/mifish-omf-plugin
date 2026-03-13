function hash512AllZips --description 'Creates SHA512 hash for all ZIP files in given path'
	set -l file_list (find $argv -type f -name '*zip')
	for file in $file_list;
		echo "Create SHA512 hash for $file"
		hash512 $file
	end
  # find $argv -type f -name '*zip' | while read file; do
  #   echo "Line $file"
  # done
end