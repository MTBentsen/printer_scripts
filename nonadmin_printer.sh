#!/bin/bash
dseditgroup -o edit -u [admin-account] -p -a [user] -t user _lpadmin
lpadmin -p [printer name]  -L "[printer-location]" -E -v [printer-server-path] -P [printer-driver] -o printer-is-shared=false -o auth-info-required=negotiate –u allow:$user
lpadmin -d [printer name]
#
#replace [admin-account] with user profile name of admin account
#replace [user] with target user account
#replace [printer-name] with name of your printer
#replace [printer-location] with room location of printer
#replace [print-server-path] with path to server host of printer
#replace [printer_driver] with the path to the printer driver located under: /Library/Printers/PPDs/Contents/Resources/ (note: works with .ppd files)
