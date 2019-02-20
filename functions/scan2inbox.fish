function scan2inbox -d 'Chmod for scans and move to DevonThink Inbox dir'
    set -l l_scan_dir ~/Temp/Scanner
    set -l l_inbox_dir ~/Library/Application\ Support/DEVONthink\ Pro\ 2/Inbox
    set -l l_list (ls $l_scan_dir)
    if test -n "$l_list"
        echo "Found: $l_list"
        sudo chmod -R a+rw $l_scan_dir
        mv $l_scan_dir/* $l_inbox_dir
    else
        echo "Nothing found in $l_scan_dir"
    end    
end