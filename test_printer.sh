#!/bin/bash
lpadmin -p test-printer -L "D265" -E -v smb://ps1.campus.parkland.edu/D265LJC -P /Library/Printers/PPDs/Contents/Resources/HP\ color\ LaserJet\ 3500.ppd.gz -o printer-is-shared=false -o auth-info-required=negotiate
lpadmin -d test-printer
