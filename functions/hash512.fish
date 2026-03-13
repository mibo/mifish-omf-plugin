function hash512 --description 'Creates SHA512 hash for the file given'
	gpg --print-md SHA512 $argv > $argv.sha512
end