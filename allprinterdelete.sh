#!/bin/bash
print=$(lpstat -p)
echo $print
for i in $print
do 
	lpadmin -x $i
done
